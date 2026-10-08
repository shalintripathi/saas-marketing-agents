import { atom, read, update } from 'claude-code'
import type { EngineInterface, Register } from 'claude-code'

import type { BrandState, Deliverable, NeedsInput, SkillRun } from '../types'

const PANE = 'campaign-board'
const PLUGIN_PREFIX = 'saas-marketing'
const MARKER = /\[NEEDS INPUT[^\]]*\]/g

const skills = atom({ plugin: 'saas-marketing', key: 'skills' } as const, [] as SkillRun[])
const deliverables = atom({ plugin: 'saas-marketing', key: 'deliverables' } as const, [] as Deliverable[])
const needs = atom({ plugin: 'saas-marketing', key: 'needs' } as const, [] as NeedsInput[])
const brand = atom({ plugin: 'saas-marketing', key: 'brand' } as const, 'unknown' as BrandState)

const base = (path: string) => path.split('/').pop() ?? path

const harvest = async ($: EngineInterface, file: string, content: string) => {
  const found = content.match(MARKER) ?? []
  if (found.length === 0) return
  const short = base(file)
  await update($, needs, list => {
    const next = [...list]
    for (const raw of found) {
      const text = raw.slice(0, 120)
      if (!next.some(one => one.file === short && one.text === text)) next.push({ file: short, text })
    }
    return next.slice(-100)
  })
}

export const register: Register = on => {
  on('session.start', async ($, e, next) => {
    await $.command.register({
      name: 'campaign-board',
      description: 'Open the saas-marketing campaign board pane',
    })
    const hasBrand = await $.fs.exists(`${e.cwd}/brand-context.md`)
    await update($, brand, () => (hasBrand ? 'found' : 'missing'))

    return next(e)
  })

  on('command.run', { command: 'campaign-board' }, async $ => {
    await $.ui.open({ id: PANE, title: 'Campaign board' })

    return { text: 'Campaign board opened.' }
  })

  on('tool.call', { tool: 'Skill' }, async ($, e, next) => {
    if (!e.skill.startsWith(PLUGIN_PREFIX)) return next(e)

    const run: SkillRun = { id: e.tool_use_id, name: e.skill, at: Date.now(), isDone: false }
    await update($, skills, list => [...list, run].slice(-50))
    void $.ui.open({ id: PANE, title: 'Campaign board' })
    $.ui.status(`campaign: ${e.skill.split(':').pop()}`)

    const ran = await next(e)
    await update($, skills, list =>
      list.map(one => (one.id === run.id ? { ...one, isDone: true } : one)),
    )
    $.ui.status(`campaign: ${e.skill.split(':').pop()} done`)

    return ran
  })

  on('tool.call', { tool: 'Write' }, async ($, e, next) => {
    const ran = await next(e)
    if (ran.deny !== undefined || ran.isError === true) return ran

    const active = (await read($, skills)).length > 0
    if (active && e.file_path.endsWith('.md')) {
      await update($, deliverables, list => {
        if (list.some(one => one.path === e.file_path)) return list
        return [...list, { path: e.file_path, at: Date.now() }].slice(-100)
      })
      $.ui.toast(`deliverable: ${base(e.file_path)}`)
      await harvest($, e.file_path, e.content)
    }

    return ran
  })

  on('tool.call', { tool: 'Edit' }, async ($, e, next) => {
    const ran = await next(e)
    if (ran.deny === undefined && ran.isError !== true && (await read($, skills)).length > 0) {
      await harvest($, e.file_path, e.new_string)
    }

    return ran
  })

  on('ui.render', { component: 'Pane', requestId: PANE }, async ($, e) => {
    const { Box, Text } = $.ui.resolve(e)
    const runList = await read($, skills)
    const fileList = await read($, deliverables)
    const needList = await read($, needs)
    const brandNow = await read($, brand)
    const rows = Math.max(6, (e.viewport?.rows ?? 30) - 6)
    const roomEach = Math.max(2, Math.floor(rows / 3))

    return (
      <Box flexDirection="column" paddingX={1}>
        <Text bold>
          Campaign board{'  '}
          <Text color={brandNow === 'found' ? 'green' : 'yellow'}>
            brand-context.md {brandNow === 'found' ? 'found' : brandNow === 'missing' ? 'missing' : '...'}
          </Text>
        </Text>
        {brandNow === 'missing' && (
          <Text dimColor>copy templates/brand-context.md into your project for grounded output</Text>
        )}

        <Box marginTop={1} flexDirection="column">
          <Text bold underline>Skills routed</Text>
          {runList.length === 0 && <Text dimColor>none yet — run any /saas-marketing skill</Text>}
          {runList.slice(-roomEach).map(run => (
            <Text dimColor={run.isDone}>
              {run.isDone ? 'done ' : 'runs '}{run.name.split(':').pop()}
            </Text>
          ))}
        </Box>

        <Box marginTop={1} flexDirection="column">
          <Text bold underline>Deliverables</Text>
          {fileList.length === 0 && <Text dimColor>none yet</Text>}
          {fileList.slice(-roomEach).map(one => (
            <Text>{base(one.path)}</Text>
          ))}
        </Box>

        <Box marginTop={1} flexDirection="column">
          <Text bold underline>
            Needs your input{needList.length > 0 ? ` (${needList.length})` : ''}
          </Text>
          {needList.length === 0 && <Text dimColor>nothing — agents invented no facts</Text>}
          {needList.slice(-roomEach).map(one => (
            <Text color="yellow" wrap="truncate-end">
              {base(one.file)}: {one.text}
            </Text>
          ))}
        </Box>
      </Box>
    )
  })
}

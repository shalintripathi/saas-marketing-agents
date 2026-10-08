export type SkillRun = { id: string; name: string; at: number; isDone: boolean }
export type Deliverable = { path: string; at: number }
export type NeedsInput = { file: string; text: string }
export type BrandState = 'unknown' | 'found' | 'missing'

declare module 'claude-code' {
  interface PluginState {
    'saas-marketing': {
      skills: SkillRun[]
      deliverables: Deliverable[]
      needs: NeedsInput[]
      brand: BrandState
    }
  }
}

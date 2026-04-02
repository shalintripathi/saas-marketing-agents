#!/bin/bash

###############################################################################
# SaaS Marketing Agents - Installation Script
# Deploys agents to local AI coding tools
# Supports: Claude Code, Cursor, GitHub Copilot, Aider, Windsurf
###############################################################################

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Installation tracking
INSTALLED_COUNT=0
FAILED_COUNT=0
DETECTED_TOOLS=()
SELECTED_TOOL=""

###############################################################################
# Utility Functions
###############################################################################

print_header() {
    echo -e "${BLUE}════════════════════════════════════════════════════════════${NC}"
    echo -e "${BLUE}SaaS Marketing Agents - Installation${NC}"
    echo -e "${BLUE}════════════════════════════════════════════════════════════${NC}"
    echo ""
}

print_success() {
    echo -e "${GREEN}✓${NC} $1"
}

print_error() {
    echo -e "${RED}✗${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}⚠${NC} $1"
}

print_info() {
    echo -e "${BLUE}ℹ${NC} $1"
}

print_section() {
    echo ""
    echo -e "${CYAN}──────────────────────────────────────────────────────────${NC}"
    echo "$1"
    echo -e "${CYAN}──────────────────────────────────────────────────────────${NC}"
}

###############################################################################
# Tool Detection Functions
###############################################################################

detect_claude_code() {
    if [ -d "$HOME/.claude" ]; then
        return 0
    fi
    return 1
}

detect_cursor() {
    if [ -d "$HOME/.cursor" ]; then
        return 0
    fi
    return 1
}

detect_copilot() {
    if [ -d "$HOME/.github" ] || [ -d "$HOME/.copilot" ]; then
        return 0
    fi
    return 1
}

detect_aider() {
    if command -v aider &> /dev/null; then
        return 0
    fi
    return 1
}

detect_windsurf() {
    if [ -d "$HOME/.windsurf" ] || command -v windsurf &> /dev/null; then
        return 0
    fi
    return 1
}

detect_all_tools() {
    print_section "Detecting installed AI tools..."
    echo ""

    DETECTED_TOOLS=()

    if detect_claude_code; then
        DETECTED_TOOLS+=("claude")
        print_success "Claude Code detected at $HOME/.claude"
    fi

    if detect_cursor; then
        DETECTED_TOOLS+=("cursor")
        print_success "Cursor detected at $HOME/.cursor"
    fi

    if detect_copilot; then
        DETECTED_TOOLS+=("copilot")
        print_success "GitHub Copilot detected"
    fi

    if detect_aider; then
        DETECTED_TOOLS+=("aider")
        print_success "Aider detected"
    fi

    if detect_windsurf; then
        DETECTED_TOOLS+=("windsurf")
        print_success "Windsurf detected"
    fi

    if [ ${#DETECTED_TOOLS[@]} -eq 0 ]; then
        print_warning "No supported AI tools detected"
        return 1
    fi

    echo ""
    return 0
}

###############################################################################
# Selection Functions
###############################################################################

select_tool_interactive() {
    print_section "Available tools"
    echo ""

    for i in "${!DETECTED_TOOLS[@]}"; do
        local idx=$((i + 1))
        echo "  $idx) ${DETECTED_TOOLS[$i]}"
    done

    echo ""
    read -p "Select tool to install to (1-${#DETECTED_TOOLS[@]}): " selection

    if ! [[ "$selection" =~ ^[0-9]+$ ]] || [ "$selection" -lt 1 ] || [ "$selection" -gt ${#DETECTED_TOOLS[@]} ]; then
        print_error "Invalid selection"
        return 1
    fi

    SELECTED_TOOL="${DETECTED_TOOLS[$((selection - 1))]}"
    print_success "Selected: $SELECTED_TOOL"
    return 0
}

###############################################################################
# Installation Functions
###############################################################################

install_to_claude_code() {
    local agent_file=$1
    local target_dir="$HOME/.claude/agents"

    mkdir -p "$target_dir"

    local filename=$(basename "$agent_file")
    cp "$agent_file" "$target_dir/$filename"

    if [ -f "$target_dir/$filename" ]; then
        print_success "Installed to Claude Code: $filename"
        ((INSTALLED_COUNT++))
        return 0
    else
        print_error "Failed to install to Claude Code"
        ((FAILED_COUNT++))
        return 1
    fi
}

install_to_cursor() {
    local agent_file=$1
    local target_dir="$HOME/.cursor/rules"

    mkdir -p "$target_dir"

    # Convert .md to .mdc for Cursor
    local filename=$(basename "$agent_file" .md)
    cp "$agent_file" "$target_dir/${filename}.mdc"

    if [ -f "$target_dir/${filename}.mdc" ]; then
        print_success "Installed to Cursor: ${filename}.mdc"
        ((INSTALLED_COUNT++))
        return 0
    else
        print_error "Failed to install to Cursor"
        ((FAILED_COUNT++))
        return 1
    fi
}

install_to_copilot() {
    local agent_file=$1

    # Try both possible Copilot directories
    local target_dir=""
    if [ -d "$HOME/.github" ]; then
        target_dir="$HOME/.github/agents"
    elif [ -d "$HOME/.copilot" ]; then
        target_dir="$HOME/.copilot/agents"
    else
        mkdir -p "$HOME/.github/agents"
        target_dir="$HOME/.github/agents"
    fi

    mkdir -p "$target_dir"

    local filename=$(basename "$agent_file")
    cp "$agent_file" "$target_dir/$filename"

    if [ -f "$target_dir/$filename" ]; then
        print_success "Installed to GitHub Copilot: $filename"
        ((INSTALLED_COUNT++))
        return 0
    else
        print_error "Failed to install to GitHub Copilot"
        ((FAILED_COUNT++))
        return 1
    fi
}

install_to_aider() {
    local agent_files=("$@")
    local target_file="./CONVENTIONS.md"

    # Create CONVENTIONS.md aggregating all agents
    cat > "$target_file" << 'EOF'
# SaaS Marketing Agents Conventions

This file contains the conventions for all SaaS Marketing Agents.

EOF

    for file in "${agent_files[@]}"; do
        echo "" >> "$target_file"
        cat "$file" >> "$target_file"
    done

    print_success "Created Aider conventions: $target_file"
    ((INSTALLED_COUNT++))
    return 0
}

install_to_windsurf() {
    local agent_files=("$@")
    local target_file="./.windsurfrules"

    # Create .windsurfrules aggregating all agents
    cat > "$target_file" << 'EOF'
# SaaS Marketing Agents Rules

The following conventions apply to all SaaS Marketing Agents.

EOF

    for file in "${agent_files[@]}"; do
        echo "" >> "$target_file"
        cat "$file" >> "$target_file"
    done

    print_success "Created Windsurf rules: $target_file"
    ((INSTALLED_COUNT++))
    return 0
}

###############################################################################
# Main Installation Logic
###############################################################################

install_agents() {
    local tool=$1
    shift
    local agent_files=("$@")

    print_section "Installing ${#agent_files[@]} agent(s) to $tool..."
    echo ""

    case $tool in
        claude)
            for file in "${agent_files[@]}"; do
                install_to_claude_code "$file"
            done
            ;;
        cursor)
            for file in "${agent_files[@]}"; do
                install_to_cursor "$file"
            done
            ;;
        copilot)
            for file in "${agent_files[@]}"; do
                install_to_copilot "$file"
            done
            ;;
        aider)
            install_to_aider "${agent_files[@]}"
            ;;
        windsurf)
            install_to_windsurf "${agent_files[@]}"
            ;;
        all)
            for file in "${agent_files[@]}"; do
                install_to_claude_code "$file"
                install_to_cursor "$file"
                install_to_copilot "$file"
            done
            install_to_aider "${agent_files[@]}"
            install_to_windsurf "${agent_files[@]}"
            ;;
        *)
            print_error "Unknown tool: $tool"
            return 1
            ;;
    esac

    return 0
}

###############################################################################
# Usage and Help
###############################################################################

show_usage() {
    cat << 'EOF'
Usage: install.sh [OPTIONS] [agent_file1] [agent_file2] ...

Installation script for deploying SaaS Marketing Agents to AI coding tools.

OPTIONS:
    --tool TOOL         Install to specific tool only:
                        - claude    Claude Code (~/.claude/agents/)
                        - cursor    Cursor (~/.cursor/rules/)
                        - copilot   GitHub Copilot (~/.github/agents/)
                        - aider     Aider (CONVENTIONS.md)
                        - windsurf  Windsurf (.windsurfrules)
                        - all       All detected tools (default)

    --parallel          Install to all tools simultaneously (future feature)
    --help              Show this help message

EXAMPLES:
    # Interactive mode - detect tools and choose which to install to
    install.sh *.md

    # Install to Claude Code only
    install.sh --tool claude agent1.md agent2.md

    # Install to all detected tools
    install.sh --tool all agent1.md agent2.md agent3.md

EOF
}

###############################################################################
# Main Script
###############################################################################

main() {
    print_header

    local use_interactive=1
    local selected_tool="auto"
    local agent_files=()
    local parallel_mode=0

    # Parse arguments
    while [[ $# -gt 0 ]]; do
        case $1 in
            --tool)
                selected_tool="$2"
                use_interactive=0
                shift 2
                ;;
            --parallel)
                parallel_mode=1
                shift
                ;;
            --help)
                show_usage
                exit 0
                ;;
            -*)
                print_error "Unknown option: $1"
                show_usage
                exit 1
                ;;
            *)
                agent_files+=("$1")
                shift
                ;;
        esac
    done

    # If no files provided, try to find agents in standard directories
    if [ ${#agent_files[@]} -eq 0 ]; then
        print_info "No files specified, searching for agents..."
        while IFS= read -r -d '' file; do
            agent_files+=("$file")
        done < <(find . -maxdepth 3 -name "*.md" -not -path "./examples/*" -not -path "./scripts/*" -print0)
    fi

    # Check if we found any files
    if [ ${#agent_files[@]} -eq 0 ]; then
        print_error "No agent files found"
        exit 1
    fi

    print_info "Found ${#agent_files[@]} agent file(s)"
    echo ""

    # Detect tools
    if ! detect_all_tools; then
        print_error "No supported AI tools detected"
        echo ""
        echo "Please install one of the following:"
        echo "  - Claude Code (https://claude.ai/)"
        echo "  - Cursor (https://www.cursor.com/)"
        echo "  - GitHub Copilot (https://github.com/copilot)"
        echo "  - Aider (https://aider.chat/)"
        echo "  - Windsurf (https://windsurf.dev/)"
        exit 1
    fi

    # Determine which tool to install to
    if [ "$selected_tool" = "auto" ]; then
        if [ $use_interactive -eq 1 ]; then
            # Interactive mode
            if ! select_tool_interactive; then
                exit 1
            fi
        else
            # Default to first detected tool
            SELECTED_TOOL="${DETECTED_TOOLS[0]}"
            print_info "Auto-selected: $SELECTED_TOOL"
        fi
    else
        SELECTED_TOOL="$selected_tool"
    fi

    # Validate selected tool
    if [ "$SELECTED_TOOL" != "all" ] && [ "$SELECTED_TOOL" != "aider" ] && [ "$SELECTED_TOOL" != "windsurf" ]; then
        local found=0
        for tool in "${DETECTED_TOOLS[@]}"; do
            if [ "$tool" = "$SELECTED_TOOL" ]; then
                found=1
                break
            fi
        done

        if [ $found -eq 0 ] && [ "$SELECTED_TOOL" != "all" ]; then
            print_error "Selected tool not detected: $SELECTED_TOOL"
            exit 1
        fi
    fi

    # Install agents
    if ! install_agents "$SELECTED_TOOL" "${agent_files[@]}"; then
        exit 1
    fi

    # Print summary
    echo ""
    print_section "Installation Summary"
    echo ""
    echo -e "Successfully installed: ${GREEN}$INSTALLED_COUNT${NC}"
    echo -e "Failed installations:   ${RED}$FAILED_COUNT${NC}"
    echo "Installed to:           $SELECTED_TOOL"
    echo ""

    if [ $FAILED_COUNT -eq 0 ]; then
        print_success "Installation completed successfully!"
        echo ""
        print_info "Your agents are now available in:"
        case $SELECTED_TOOL in
            claude)
                echo "  Location: $HOME/.claude/agents/"
                ;;
            cursor)
                echo "  Location: $HOME/.cursor/rules/"
                ;;
            copilot)
                echo "  Location: $HOME/.github/agents/ or $HOME/.copilot/agents/"
                ;;
            aider)
                echo "  Location: ./CONVENTIONS.md"
                ;;
            windsurf)
                echo "  Location: ./.windsurfrules"
                ;;
            all)
                echo "  Installed to all detected tools"
                ;;
        esac
        exit 0
    else
        print_error "Some installations failed"
        exit 1
    fi
}

# Run main function with all arguments
main "$@"

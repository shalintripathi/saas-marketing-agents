#!/bin/bash

###############################################################################
# SaaS Marketing Agents - Format Converter
# Converts agent markdown files into formats for different AI tools
# Supports: Cursor (.mdc), Aider (CONVENTIONS.md), Windsurf (.windsurfrules),
#           Claude Code (.md), GitHub Copilot (.md)
###############################################################################

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Configuration
OUTPUT_DIR="./converted"
CURSOR_DIR="$OUTPUT_DIR/cursor"
AIDER_DIR="$OUTPUT_DIR/aider"
WINDSURF_DIR="$OUTPUT_DIR/windsurf"
CLAUDE_DIR="$OUTPUT_DIR/claude"
COPILOT_DIR="$OUTPUT_DIR/copilot"

# Conversion tracking
CONVERTED_COUNT=0
FAILED_COUNT=0

###############################################################################
# Utility Functions
###############################################################################

print_header() {
    echo -e "${BLUE}════════════════════════════════════════════════════════════${NC}"
    echo -e "${BLUE}SaaS Marketing Agents - Format Converter${NC}"
    echo -e "${BLUE}════════════════════════════════════════════════════════════${NC}"
    echo ""
}

print_success() {
    echo -e "${GREEN}✓${NC} $1"
}

print_error() {
    echo -e "${RED}✗${NC} $1"
}

print_info() {
    echo -e "${BLUE}ℹ${NC} $1"
}

###############################################################################
# Parser Functions
###############################################################################

extract_yaml_field() {
    local file=$1
    local field=$2

    # Extract value between first --- and second ---
    sed -n '/^---$/,/^---$/p' "$file" | grep "^$field:" | head -1 | sed "s/^$field: \(.*\)$/\1/" | tr -d '"'
}

extract_body_content() {
    local file=$1

    # Skip frontmatter (everything up to and including second ---)
    sed -n '/^---$/,/^---$/p' "$file" >/dev/null 2>&1
    tail -n +$(grep -n "^---$" "$file" | tail -1 | cut -d: -f1 | awk '{print $1 + 1}') "$file"
}

###############################################################################
# Conversion Functions
###############################################################################

convert_to_cursor() {
    local input_file=$1
    local agent_name=$(extract_yaml_field "$input_file" "name")
    local description=$(extract_yaml_field "$input_file" "description")
    local body=$(extract_body_content "$input_file")
    local filename=$(basename "$input_file" .md)

    mkdir -p "$CURSOR_DIR"

    local output_file="$CURSOR_DIR/${filename}.mdc"

    cat > "$output_file" << 'EOF'
# Rules

When implementing these rules, follow them strictly and consistently.

EOF

    # Add agent information and rules to .mdc file
    echo "$body" >> "$output_file"

    print_success "Converted to Cursor format: $output_file"
    ((CONVERTED_COUNT++))
}

convert_to_aider() {
    local input_files=("$@")

    mkdir -p "$AIDER_DIR"

    local output_file="$AIDER_DIR/CONVENTIONS.md"

    # Create or overwrite CONVENTIONS.md
    cat > "$output_file" << 'EOF'
# SaaS Marketing Agents Conventions

This file contains the conventions and patterns for all SaaS Marketing Agents.

EOF

    # Add all agent bodies to CONVENTIONS.md
    for file in "${input_files[@]}"; do
        local agent_name=$(extract_yaml_field "$file" "name")
        local body=$(extract_body_content "$file")

        echo "## $agent_name" >> "$output_file"
        echo "" >> "$output_file"
        echo "$body" >> "$output_file"
        echo "" >> "$output_file"
    done

    print_success "Converted to Aider format: $output_file"
    ((CONVERTED_COUNT++))
}

convert_to_windsurf() {
    local input_files=("$@")

    mkdir -p "$WINDSURF_DIR"

    local output_file="$WINDSURF_DIR/.windsurfrules"

    # Create or overwrite .windsurfrules
    cat > "$output_file" << 'EOF'
# SaaS Marketing Agents Rules

The following conventions apply to all SaaS Marketing Agents interactions.

EOF

    # Add all agent bodies to .windsurfrules
    for file in "${input_files[@]}"; do
        local agent_name=$(extract_yaml_field "$file" "name")
        local body=$(extract_body_content "$file")

        echo "## $agent_name" >> "$output_file"
        echo "" >> "$output_file"
        echo "$body" >> "$output_file"
        echo "" >> "$output_file"
    done

    print_success "Converted to Windsurf format: $output_file"
    ((CONVERTED_COUNT++))
}

convert_to_claude() {
    local input_file=$1
    local filename=$(basename "$input_file" .md)

    mkdir -p "$CLAUDE_DIR"

    local output_file="$CLAUDE_DIR/${filename}.md"

    cp "$input_file" "$output_file"

    print_success "Converted to Claude Code format: $output_file"
    ((CONVERTED_COUNT++))
}

convert_to_copilot() {
    local input_file=$1
    local filename=$(basename "$input_file" .md)

    mkdir -p "$COPILOT_DIR"

    local output_file="$COPILOT_DIR/${filename}.md"

    cp "$input_file" "$output_file"

    print_success "Converted to GitHub Copilot format: $output_file"
    ((CONVERTED_COUNT++))
}

###############################################################################
# Batch Conversion Functions
###############################################################################

convert_all_formats() {
    local input_files=("$@")

    # Cursor format (one file per agent)
    for file in "${input_files[@]}"; do
        convert_to_cursor "$file"
    done

    # Aider format (single file)
    convert_to_aider "${input_files[@]}"

    # Windsurf format (single file)
    convert_to_windsurf "${input_files[@]}"

    # Claude Code format (one file per agent)
    for file in "${input_files[@]}"; do
        convert_to_claude "$file"
    done

    # GitHub Copilot format (one file per agent)
    for file in "${input_files[@]}"; do
        convert_to_copilot "$file"
    done
}

###############################################################################
# Usage and Help
###############################################################################

show_usage() {
    cat << 'EOF'
Usage: convert.sh [OPTIONS] <file1> [file2] [file3] ...

Convert agent markdown files into formats for different AI tools.

OPTIONS:
    --format FORMAT     Convert to specific format only:
                        - cursor    Cursor .mdc format
                        - aider     Aider CONVENTIONS.md
                        - windsurf  Windsurf .windsurfrules
                        - claude    Claude Code .md files
                        - copilot   GitHub Copilot .md files
                        - all       All formats (default)

    --output DIR        Output directory (default: ./converted)
    --help              Show this help message

EXAMPLES:
    # Convert all files to all formats
    convert.sh agent1.md agent2.md agent3.md

    # Convert to Cursor format only
    convert.sh --format cursor agent1.md agent2.md

    # Convert to custom output directory
    convert.sh --output ./rules agent1.md agent2.md

EOF
}

###############################################################################
# Main Script
###############################################################################

main() {
    print_header

    local format="all"
    local input_files=()

    # Parse arguments
    while [[ $# -gt 0 ]]; do
        case $1 in
            --format)
                format="$2"
                shift 2
                ;;
            --output)
                OUTPUT_DIR="$2"
                CURSOR_DIR="$OUTPUT_DIR/cursor"
                AIDER_DIR="$OUTPUT_DIR/aider"
                WINDSURF_DIR="$OUTPUT_DIR/windsurf"
                CLAUDE_DIR="$OUTPUT_DIR/claude"
                COPILOT_DIR="$OUTPUT_DIR/copilot"
                shift 2
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
                input_files+=("$1")
                shift
                ;;
        esac
    done

    # Check if files provided
    if [ ${#input_files[@]} -eq 0 ]; then
        print_error "No input files specified"
        show_usage
        exit 1
    fi

    # Validate input files exist
    for file in "${input_files[@]}"; do
        if [ ! -f "$file" ]; then
            print_error "File not found: $file"
            ((FAILED_COUNT++))
        fi
    done

    if [ $FAILED_COUNT -gt 0 ]; then
        exit 1
    fi

    print_info "Converting ${#input_files[@]} file(s) to $format format"
    print_info "Output directory: $OUTPUT_DIR"
    echo ""

    # Create output directory
    mkdir -p "$OUTPUT_DIR"

    # Perform conversions based on format
    case $format in
        cursor)
            for file in "${input_files[@]}"; do
                convert_to_cursor "$file"
            done
            ;;
        aider)
            convert_to_aider "${input_files[@]}"
            ;;
        windsurf)
            convert_to_windsurf "${input_files[@]}"
            ;;
        claude)
            for file in "${input_files[@]}"; do
                convert_to_claude "$file"
            done
            ;;
        copilot)
            for file in "${input_files[@]}"; do
                convert_to_copilot "$file"
            done
            ;;
        all)
            convert_all_formats "${input_files[@]}"
            ;;
        *)
            print_error "Unknown format: $format"
            show_usage
            exit 1
            ;;
    esac

    # Print summary
    echo ""
    echo -e "${BLUE}════════════════════════════════════════════════════════════${NC}"
    echo "Conversion Summary"
    echo -e "${BLUE}════════════════════════════════════════════════════════════${NC}"
    echo -e "Successfully converted: ${GREEN}$CONVERTED_COUNT${NC}"
    echo -e "Failed conversions:     ${RED}$FAILED_COUNT${NC}"
    echo "Output directory:       $OUTPUT_DIR"
    echo ""

    if [ $FAILED_COUNT -eq 0 ]; then
        print_success "All conversions completed successfully!"
        exit 0
    else
        print_error "Some conversions failed"
        exit 1
    fi
}

# Run main function with all arguments
main "$@"

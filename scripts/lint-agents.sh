#!/bin/bash

###############################################################################
# SaaS Marketing Agents - Agent Linter
# Validates agent markdown files for required structure and content
# Exit 0 if pass, 1 if fail
###############################################################################

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Counters
TOTAL_FILES=0
PASSED_FILES=0
FAILED_FILES=0

###############################################################################
# Utility Functions
###############################################################################

print_header() {
    echo -e "${BLUE}════════════════════════════════════════════════════════════${NC}"
    echo -e "${BLUE}SaaS Marketing Agents - Linter${NC}"
    echo -e "${BLUE}════════════════════════════════════════════════════════════${NC}"
    echo ""
}

print_success() {
    echo -e "${GREEN}✓ PASS${NC} - $1"
}

print_error() {
    echo -e "${RED}✗ FAIL${NC} - $1"
}

print_warning() {
    echo -e "${YELLOW}⚠ WARN${NC} - $1"
}

print_file_header() {
    echo ""
    echo -e "${BLUE}─────────────────────────────────────────────────────────────${NC}"
    echo "File: $1"
    echo -e "${BLUE}─────────────────────────────────────────────────────────────${NC}"
}

print_summary() {
    echo ""
    echo -e "${BLUE}════════════════════════════════════════════════════════════${NC}"
    echo "Summary"
    echo -e "${BLUE}════════════════════════════════════════════════════════════${NC}"
    echo "Total files:  $TOTAL_FILES"
    echo -e "Passed:       ${GREEN}$PASSED_FILES${NC}"
    echo -e "Failed:       ${RED}$FAILED_FILES${NC}"
    echo ""
}

###############################################################################
# Validation Functions
###############################################################################

validate_yaml_frontmatter() {
    local file=$1
    local has_yaml_start=0
    local has_yaml_end=0
    local has_name=0
    local has_description=0
    local has_color=0

    # Check if file starts with ---
    if head -1 "$file" | grep -q "^---$"; then
        has_yaml_start=1
    else
        print_error "Missing YAML frontmatter opening (---)"
        return 1
    fi

    # Find the closing ---
    local line_count=0
    local in_yaml=0
    while IFS= read -r line; do
        ((line_count++))

        if [ $line_count -eq 1 ] && [ "$line" = "---" ]; then
            in_yaml=1
            continue
        fi

        if [ $in_yaml -eq 1 ] && [ "$line" = "---" ]; then
            has_yaml_end=1
            break
        fi

        if [ $in_yaml -eq 1 ]; then
            if [[ "$line" =~ ^name: ]]; then
                has_name=1
            elif [[ "$line" =~ ^description: ]]; then
                has_description=1
            elif [[ "$line" =~ ^color: ]]; then
                has_color=1
            fi
        fi

        # Safety: don't search beyond line 20
        if [ $line_count -gt 20 ]; then
            break
        fi
    done < "$file"

    local errors=0

    if [ $has_yaml_start -eq 0 ]; then
        print_error "YAML frontmatter does not start with ---"
        ((errors++))
    fi

    if [ $has_yaml_end -eq 0 ]; then
        print_error "YAML frontmatter does not end with ---"
        ((errors++))
    fi

    if [ $has_name -eq 0 ]; then
        print_error "YAML frontmatter missing 'name' field"
        ((errors++))
    else
        print_success "YAML frontmatter contains 'name'"
    fi

    if [ $has_description -eq 0 ]; then
        print_error "YAML frontmatter missing 'description' field"
        ((errors++))
    else
        print_success "YAML frontmatter contains 'description'"
    fi

    if [ $has_color -eq 0 ]; then
        print_error "YAML frontmatter missing 'color' field"
        ((errors++))
    else
        print_success "YAML frontmatter contains 'color'"
    fi

    return $errors
}

validate_required_sections() {
    local file=$1
    local has_identity=0
    local has_core_mission=0
    local has_critical_rules=0

    if grep -q "^## Identity$" "$file"; then
        has_identity=1
        print_success "Contains 'Identity' section"
    else
        print_error "Missing 'Identity' section"
    fi

    if grep -q "^## Core Mission$" "$file"; then
        has_core_mission=1
        print_success "Contains 'Core Mission' section"
    else
        print_error "Missing 'Core Mission' section"
    fi

    if grep -q "^## Critical Rules$" "$file"; then
        has_critical_rules=1
        print_success "Contains 'Critical Rules' section"
    else
        print_error "Missing 'Critical Rules' section"
    fi

    local errors=$((3 - (has_identity + has_core_mission + has_critical_rules)))
    return $errors
}

validate_content_length() {
    local file=$1

    # Count words in file (rough approximation)
    local word_count=$(wc -w < "$file")

    # Minimum 50 words expected
    if [ "$word_count" -lt 50 ]; then
        print_error "Insufficient content (only $word_count words, minimum 50 required)"
        return 1
    else
        print_success "Sufficient content ($word_count words)"
        return 0
    fi
}

validate_file() {
    local file=$1

    print_file_header "$file"

    # Check if file exists
    if [ ! -f "$file" ]; then
        print_error "File does not exist: $file"
        return 1
    fi

    # Check if file is readable
    if [ ! -r "$file" ]; then
        print_error "File is not readable: $file"
        return 1
    fi

    print_success "File exists and is readable"

    local total_errors=0

    # Validate YAML frontmatter
    validate_yaml_frontmatter "$file"
    ((total_errors += $?))

    # Validate required sections
    echo ""
    validate_required_sections "$file"
    ((total_errors += $?))

    # Validate content length
    echo ""
    validate_content_length "$file"
    ((total_errors += $?))

    echo ""
    if [ $total_errors -eq 0 ]; then
        echo -e "${GREEN}════ All checks passed for this file ════${NC}"
        return 0
    else
        echo -e "${RED}════ $total_errors check(s) failed ════${NC}"
        return 1
    fi
}

###############################################################################
# Main Script
###############################################################################

main() {
    print_header

    # Check if files provided as arguments
    if [ $# -eq 0 ]; then
        print_error "No files specified"
        echo "Usage: $0 <file1> [file2] [file3] ..."
        echo "Example: $0 agent1.md agent2.md"
        exit 1
    fi

    # Validate each file
    for file in "$@"; do
        ((TOTAL_FILES++))

        if validate_file "$file"; then
            ((PASSED_FILES++))
        else
            ((FAILED_FILES++))
        fi
    done

    # Print summary
    print_summary

    # Return appropriate exit code
    if [ $FAILED_FILES -eq 0 ]; then
        echo -e "${GREEN}All files passed validation!${NC}"
        exit 0
    else
        echo -e "${RED}Some files failed validation${NC}"
        exit 1
    fi
}

# Run main function with all arguments
main "$@"

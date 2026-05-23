#!/usr/bin/env bash
set -euo pipefail

REPO="ProjectWaja/claude-skillcraft"
BRANCH="main"
SKILLS_DIR="${HOME}/.claude/skills"
TEMP_DIR=$(mktemp -d)

echo "claude-skillcraft installer"
echo "=========================="
echo ""

# Check for required tools
if ! command -v curl &> /dev/null && ! command -v wget &> /dev/null; then
    echo "Error: curl or wget is required but not installed."
    exit 1
fi

if ! command -v tar &> /dev/null; then
    echo "Error: tar is required but not installed."
    exit 1
fi

# Create skills directory
mkdir -p "$SKILLS_DIR"

echo "Downloading skills from github.com/${REPO}..."

# Download and extract
ARCHIVE_URL="https://github.com/${REPO}/archive/refs/heads/${BRANCH}.tar.gz"

if command -v curl &> /dev/null; then
    curl -sSL "$ARCHIVE_URL" | tar xz -C "$TEMP_DIR"
else
    wget -qO- "$ARCHIVE_URL" | tar xz -C "$TEMP_DIR"
fi

# Find the extracted directory
EXTRACTED=$(find "$TEMP_DIR" -maxdepth 1 -type d -name "claude-skillcraft-*" | head -1)

if [ -z "$EXTRACTED" ]; then
    echo "Error: Failed to extract archive."
    rm -rf "$TEMP_DIR"
    exit 1
fi

# Copy skills
SKILL_COUNT=0
for skill_dir in "$EXTRACTED"/skills/*/; do
    skill_name=$(basename "$skill_dir")
    if [ -f "$skill_dir/SKILL.md" ]; then
        cp -r "$skill_dir" "$SKILLS_DIR/"
        echo "  Installed: $skill_name"
        SKILL_COUNT=$((SKILL_COUNT + 1))
    fi
done

# Cleanup
rm -rf "$TEMP_DIR"

echo ""
echo "Done! Installed ${SKILL_COUNT} skills to ${SKILLS_DIR}"
echo ""
echo "Verify with: /skills"
echo ""
echo "To install a single skill instead:"
echo "  cp -r skills/<skill-name> ~/.claude/skills/"

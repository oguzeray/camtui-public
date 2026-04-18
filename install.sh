#!/bin/bash

# camtui - Universal Installer Script
# Optimized for: macOS (Silicon/Intel), Linux (amd64/arm64)

set -e

REPO="oguzeray/camtui-public"
INSTALL_DIR="$HOME/.local/bin"
BINARY_NAME="camtui"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}🛡️ Initializing camtui installation...${NC}"

# 1. Detect OS
OS_TYPE=$(uname -s | tr '[:upper:]' '[:lower:]')
case "$OS_TYPE" in
    darwin*)  OS="darwin" ;;
    linux*)   OS="linux" ;;
    *)        echo -e "${RED}Error: Unsupported Operating System ($OS_TYPE).${NC}"; exit 1 ;;
esac

# 2. Detect Architecture
ARCH_TYPE=$(uname -m)
case "$ARCH_TYPE" in
    x86_64)  ARCH="amd64" ;;
    arm64|aarch64) ARCH="arm64" ;;
    *)       echo -e "${RED}Error: Unsupported Architecture ($ARCH_TYPE).${NC}"; exit 1 ;;
esac

TARGET="camtui-${OS}-${ARCH}"
DOWNLOAD_URL="https://github.com/${REPO}/releases/latest/download/${TARGET}"

# 3. Create Install Directory if it doesn't exist
if [ ! -d "$INSTALL_DIR" ]; then
    echo -e "${BLUE}Creating installation directory: $INSTALL_DIR${NC}"
    mkdir -p "$INSTALL_DIR"
fi

# 4. Download Binary
echo -e "${BLUE}Downloading ${TARGET}...${NC}"
if ! curl -L "$DOWNLOAD_URL" -o "$INSTALL_DIR/$BINARY_NAME"; then
    echo -e "${RED}Error: Failed to download the binary. Please check your internet connection.${NC}"
    exit 1
fi

# 5. Make Executable
chmod +x "$INSTALL_DIR/$BINARY_NAME"

echo -e "${GREEN}✅ Installation complete!${NC}"
echo -e "${BLUE}--------------------------------------------------${NC}"
echo -e "Binary installed to: ${GREEN}$INSTALL_DIR/$BINARY_NAME${NC}"

# 6. Check PATH
if [[ ":$PATH:" != *":$INSTALL_DIR:"* ]]; then
    echo -e "${RED}Warning: $INSTALL_DIR is not in your PATH.${NC}"
    echo -e "To fix this, add the following line to your .zshrc or .bashrc:"
    echo -e "${BLUE}export PATH=\"\$HOME/.local/bin:\$PATH\"${NC}"
else
    echo -e "You can now run '${GREEN}camtui${NC}' from your terminal."
fi
echo -e "${BLUE}--------------------------------------------------${NC}"

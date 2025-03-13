#!/bin/sh
# Modified Ollama installer for local user installation

set -eu

red="$( (/usr/bin/tput bold || :; /usr/bin/tput setaf 1 || :) 2>&-)"
plain="$( (/usr/bin/tput sgr0 || :) 2>&-)"

status() { echo ">>> $*" >&2; }
error() { echo "${red}ERROR:${plain} $*"; exit 1; }
warning() { echo "${red}WARNING:${plain} $*"; }

OLLAMA_INSTALL_DIR="$HOME/Descargas/ollama"
BINDIR="$OLLAMA_INSTALL_DIR/bin"

available() { command -v $1 >/dev/null; }
require() {
    local MISSING=''
    for TOOL in $*; do
        if ! available $TOOL; then
            MISSING="$MISSING $TOOL"
        fi
    done
    echo $MISSING
}

[ "$(uname -s)" = "Linux" ] || error 'This script is intended to run on Linux only.'

ARCH=$(uname -m)
case "$ARCH" in
    x86_64) ARCH="amd64" ;;
    aarch64|arm64) ARCH="arm64" ;;
    *) error "Unsupported architecture: $ARCH" ;;
esac

VER_PARAM="${OLLAMA_VERSION:+?version=$OLLAMA_VERSION}"

NEEDS=$(require curl awk grep sed tee xargs)
if [ -n "$NEEDS" ]; then
    status "ERROR: The following tools are required but missing:"
    for NEED in $NEEDS; do
        echo "  - $NEED"
    done
    exit 1
fi

# Create installation directories
mkdir -p "$OLLAMA_INSTALL_DIR/lib/ollama"
mkdir -p "$BINDIR"

if [ -d "$OLLAMA_INSTALL_DIR/lib/ollama" ] ; then
    status "Cleaning up old version at $OLLAMA_INSTALL_DIR/lib/ollama"
    rm -rf "$OLLAMA_INSTALL_DIR/lib/ollama"
fi

status "Installing ollama to $OLLAMA_INSTALL_DIR"
status "Downloading Linux ${ARCH} bundle"
curl --fail --show-error --location --progress-bar \
    "https://ollama.com/download/ollama-linux-${ARCH}.tgz${VER_PARAM}" | \
    tar -xzf - -C "$OLLAMA_INSTALL_DIR"

if [ "$OLLAMA_INSTALL_DIR/bin/ollama" != "$BINDIR/ollama" ] ; then
    status "Making ollama accessible in $BINDIR"
    ln -sf "$OLLAMA_INSTALL_DIR/ollama" "$BINDIR/ollama"
fi

install_success() {
    status "Installation complete!"
    echo "Add Ollama to your PATH with:"
    echo "  export PATH=\"\$PATH:$BINDIR\""
    status 'Then run: ollama'
}
trap install_success EXIT

# Skip all system-level operations
warning "Skipping GPU acceleration setup (requires root privileges)"
warning "Ollama will run in CPU-only mode"

exit 0

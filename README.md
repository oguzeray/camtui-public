# camtui - Encrypted Archive Manager

`camtui` is a fast, secure, and lightweight Terminal User Interface (TUI) for managing encrypted archives. It uses industry-standard **Argon2id** for key derivation and **AES-256-GCM** for encryption, ensuring your data remains private and tamper-proof.

![License](https://img.shields.io/badge/license-MIT-blue.svg)
![Platform](https://img.shields.io/badge/platform-macOS%20%7C%20Linux%20%7C%20Windows-lightgrey)

## Key Features

- **Master Key Architecture:** Change your PIN without re-encrypting your entire library.
- **Native Integration:** Open native OS file pickers (`Ctrl+F` / `Ctrl+D`) directly from the terminal.
- **Tamper Detection:** Automatically detects if your configuration or metadata has been modified.
- **OTA Updates:** Built-in one-command updates via GitHub Releases.
- **Multi-Instance Support:** Safe to run in multiple terminal tabs simultaneously.
- **Zero Dependencies:** Compiled to a single static binary for easy distribution.

## Installation

Download the latest binary for your architecture from the [Releases](https://github.com/YOUR_USERNAME/camtui/releases) page.

### macOS

1. Download the binary: `camtui-darwin-arm64` (for Silicon) or `camtui-darwin-amd64` (for Intel).
2. Open your terminal and run:

   ```bash
   chmod +x camtui-darwin-arm64
   xattr -d com.apple.quarantine camtui-darwin-arm64

   mkdir -p ~/.local/bin
   mv camtui-darwin-arm64 ~/.local/bin/camtui
   # Ensure ~/.local/bin is in your PATH
   ```

### Linux

1. Download the binary: `camtui-linux-amd64`.
2. Make it executable: `chmod +x camtui-linux-amd64`.
3. Move to your path:

   ```bash
   mkdir -p ~/.local/bin
   mv camtui-linux-amd64 ~/.local/bin/camtui
   ```

### Windows

1. Download `camtui-windows-amd64.exe`.
2. Run it directly from PowerShell or Command Prompt.

## Usage

Run the application:

```bash
camtui
```

### Shortcuts

- `a`: Add a new file or folder to the manager.
- `e`: Encrypt the selected item.
- `d`: Decrypt the selected item.
- `r`: Remove an item from the list (does not delete the file).
- `u`: Check for and apply updates.
- `,`: Open settings (Security presets, PIN change).
- `q`: Quit (securely zeros the key in memory).

## Security

- **Encryption:** AES-256-GCM.
- **Key Derivation:** Argon2id with customizable security presets (Standard, Strong, Paranoid).
- **In-Memory Safety:** Encryption keys are zeroed out of memory immediately upon exit or session termination.
- **Config Path:** `~/.config/camtui/config.json`

## License

This project is distributed as **Closed Source** software under the **MIT License**. You are free to use, distribute, and include the binaries in other projects, provided the copyright notice is preserved. Source code is not provided with this distribution.

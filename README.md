# camtui - Encrypted Archive Manager

`camtui` is a fast, secure, and lightweight Terminal User Interface (TUI) for managing encrypted archives. It uses industry-standard **Argon2id** for key derivation and **AES-256-GCM** for encryption, ensuring your data remains private and tamper-proof.

![License](https://img.shields.io/badge/license-MIT-blue.svg)
![Platform](https://img.shields.io/badge/platform-macOS%20%7C%20Linux%20%7C%20Windows-lightgrey)

## Key Features

- **Master Key Architecture:** Change your PIN without re-encrypting your entire library.
- **Native Integration:** Open native OS file pickers (`Ctrl+F` / `Ctrl+D`) directly from the terminal.
- **Tamper Detection:** Automatically detects if your configuration or metadata has been modified.
- **Multi-Instance Support:** Safe to run in multiple terminal tabs simultaneously.
- **Zero Dependencies:** Compiled to a single static binary for easy distribution.

## Installation

Download the latest binary for your architecture from the [Releases](https://github.com/oguzeray/camtui/releases) page.

### macOS / Linux

1. Download the binary: `camtui-darwin-arm64` or `camtui-linux-amd64`.
2. Make it executable: `chmod +x camtui`.
3. Move to your path: `sudo mv camtui /usr/local/bin/`.

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
- `,`: Open settings (Security presets, PIN change).
- `q`: Quit (securely zeros the key in memory).

## Security

- **Encryption:** AES-256-GCM.
- **Key Derivation:** Argon2id with customizable security presets (Standard, Strong, Paranoid).
- **In-Memory Safety:** Encryption keys are zeroed out of memory immediately upon exit or session termination.
- **Config Path:** `~/.config/camtui/config.json`

## License

This project is distributed as **Closed Source** software under the **MIT License**. You are free to use, distribute, and include the binaries in other projects, provided the copyright notice is preserved. Source code is not provided with this distribution.

---
Created with ❤️ by  [Oguz Eray](https://oguzeray.com)

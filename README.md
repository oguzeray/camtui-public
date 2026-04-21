# 🛡️ camtui

### **The Fortified Terminal Archive Manager & Secure Data Destructor.**

*Encrypt. Decrypt. Shred. All from your terminal.*

`camtui` is a high-performance Terminal User Interface (TUI) engineered for elite data privacy. It consolidates **AES-256-GCM encryption**, **Argon2id brute-force protection**, and **military-grade file shredding** into a single, zero-dependency binary. Designed for a "Zero-Trust" world, `camtui` ensures your sensitive data remains impenetrable and your deletions remain absolute.

[![Security: 6-Digit PIN](https://img.shields.io/badge/Security-6--Digit%20PIN-blueviolet.svg)](#-unified-security-protocol)
[![Protection: Brute-Force Proof](https://img.shields.io/badge/Protection-Brute--Force%20Proof-red.svg)](#-argon2id-brute-force-resistance)
[![Destruction: 3-Pass Shred](https://img.shields.io/badge/Destruction-3--Pass%20Shred-black.svg)](#-military-grade-shredding)
[![Integrity: Tamper-Proof](https://img.shields.io/badge/Integrity-Tamper--Proof-orange.svg)](#-tamper-evident-architecture)

---

## ✨ Showcase

| Security Dashboard | Active Encryption |
| :---: | :---: |
| ![Security Dashboard](./assets/dashboard.png) | ![Active Encryption](./assets/process.png) |

| Secure PIN Entry | Advanced Settings |
| :---: | :---: |
| ![Secure PIN Entry](./assets/pin.png) | ![Advanced Settings](./assets/settings.png) |

---

## 🔒 The Security Core

### **1. 🔢 Unified 6-Digit PIN Protocol**
`camtui` streamlines the user experience without compromising depth. Every action—vault entry, encryption, decryption, or shredding—is gated by a mandatory **6-digit security PIN**. This creates a predictable, muscle-memory-friendly security surface that eliminates the "weak password" trap.

### **2. 🛡️ Argon2id Brute-Force Resistance**
Even a short PIN becomes an unbreakable wall. We utilize **Argon2id** (the winner of the Password Hashing Competition) to derive cryptographic keys. By enforcing high memory and CPU costs during validation, `camtui` makes hardware-accelerated brute-force attacks (GPUs/ASICs) economically and technically infeasible.

### **3. 🔪 Military-Grade Secure Shredding**
Standard deletion (`rm`) only removes file pointers, leaving data recoverable. `camtui` implements a **3-pass secure overwrite algorithm**:
1.  **Pass 1:** Cryptographically strong random data.
2.  **Pass 2:** All zeros (null byte overwrite).
3.  **Pass 3:** Final random noise.
Followed by a **Filesystem TRIM/Discard** operation, this ensures that data is physically purged from SSDs and modern NVMe controllers, leaving zero forensic trace.

### **4. 🧱 Tamper-Evident Architecture**
Using **Authenticated Encryption (AES-256-GCM)**, `camtui` treats your data as a sealed vault. Any attempt to modify even a single bit of your encrypted archives or configuration will trigger an immediate integrity failure, protecting you against "bit-flipping" and metadata manipulation.

---

## 🚀 All-In-One Features

*   **🔐 Master Key Decoupling:** Change your 6-digit access code instantly without having to re-encrypt your entire archive library.
*   **🧹 Secure Destruction:** Integrated shredder for both encrypted vaults and plaintext files/folders.
*   **🖥️ Native OS Integration:** Direct access to system-native file pickers (`Ctrl+F` / `Ctrl+D`) within the secure TUI context.
*   **🔄 Verified OTA Updates:** Secure, one-command binary updates (`u`) verified via GitHub Release signatures.
*   **⚡ Zero-Dependency Static Binary:** Written in Go for maximum portability across macOS, Linux, and Windows.
*   **🧼 Memory Sanitization:** Sensitive cryptographic keys are zeroed out of RAM the moment the application process terminates.

---

## 📥 Deployment

Install `camtui` instantly using our universal hardened installers.

### macOS / Linux
```bash
curl -sSL https://raw.githubusercontent.com/oguzeray/camtui-public/main/install.sh | bash
```

### Windows (PowerShell)
```powershell
powershell -c "irm https://raw.githubusercontent.com/oguzeray/camtui-public/main/install.ps1 | iex"
```

---

## ⌨️ Tactical Shortcuts

| Key | Tactical Action |
| :--- | :--- |
| `a` | **Add** new assets to the managed list |
| `e` | **Encrypt** with 6-digit PIN verification |
| `d` | **Decrypt** and restore to original state |
| `r` | **Shred** irreversibly (3-pass overwrite + TRIM) |
| `u` | **Update** binary to latest secure version |
| `,` | **Configure** Argon2id hardening levels |
| `q` | **Quit** and purge memory keys |

---

## 📄 Licensing & Distribution

`camtui` is distributed as **Secure Freeware**. You are granted a license to use and distribute the compiled binaries. The underlying source code remains proprietary to ensure the integrity of the security implementation and prevent unauthorized "gray-market" forks.

---

<p align="center">
  <b>Stop deleting. Start shredding. Secure your terminal with camtui.</b>
</p>

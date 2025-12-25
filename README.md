# firstboot

`firstboot` is a macOS developer environment bootstrap tool.
It helps you set up essential development tools on a fresh machine in a safe, explicit, and repeatable way.

Instead of installing everything automatically during `brew install`, `firstboot` installs **a single executable** that you run manually when you are ready. This keeps the process transparent and under your control.

---

## What firstboot does

`firstboot` installs commonly used development tools using Homebrew, based on a profile you choose.

It is designed to be:

* Idempotent (safe to run multiple times)
* Explicit (nothing runs without your action)
* Homebrew-friendly
* Easy to extend

---

## Supported tools (current)

Depending on the selected profile, `firstboot` can install:

* Git
* Neovim
* Python
* Node.js
* Visual Studio Code
* Google Chrome
* Docker (via Homebrew)

Optional tools such as Oh My Zsh or Rust are intentionally left as **manual installs**, with links provided.

---

## Installation

### Step 1: Tap the repository

```bash
brew tap <yourusername>/firstboot
```

### Step 2: Install firstboot

```bash
brew install firstboot
```

This installs the `firstboot` executable into your PATH.

---

## Usage

Run the tool:

```bash
firstboot
```

You will be prompted to choose a setup profile.

### Available profiles

* **Minimal**
  Installs basic CLI tools suitable for most systems.

* **Web Developer**
  Installs frontend and web development tools.

* **Full Stack**
  Installs both web and backend tooling.

The tool will skip anything that is already installed.

---

## Why firstboot is not in Homebrew Core

`firstboot` is intentionally distributed as a **third-party Homebrew tap**, not a Homebrew Core formula.

Bootstrap tools that install multiple packages and orchestrate system setup are not suitable for Homebrew Core by design. Third-party taps are the correct and recommended distribution method for this type of tool.

---

## Design principles

* No silent system changes
* No automatic shell configuration edits
* No forced GUI app installs
* Clear user consent at every step

Homebrew is used as the package manager, not bypassed.

---

## Updating

To update `firstboot`:

```bash
brew upgrade firstboot
```

To update installed tools, use Homebrew directly:

```bash
brew update
brew upgrade
```

---

## Development

The project consists of:

* The `firstboot` executable
* A Homebrew tap (`homebrew-firstboot`) containing the formula

Contributions are welcome. Keep changes minimal, explicit, and aligned with Homebrew best practices.

---

## Disclaimer

`firstboot` installs software using Homebrew.
You are responsible for reviewing what gets installed and ensuring it fits your system and workflow.

* also you might need to enter your password since you are downloading off a script on the internet. 

---

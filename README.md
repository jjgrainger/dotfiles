# Dotfiles

My personal dotfiles for macOS. Homebrew installs packages and applications, and [GNU Stow](https://www.gnu.org/software/stow/) symlinks the config into place.

## What's included

| Tool | Purpose |
|---|---|
| [Homebrew](https://brew.sh/) | Package and application management |
| [Ghostty](https://ghostty.org/) | Terminal emulator |
| [Zsh](https://www.zsh.org/) | Shell |
| [Starship](https://starship.rs/) | Prompt |
| [antidote](https://antidote.sh/) | Zsh plugin manager |

Language versions are managed per project, not installed globally:

- **Node** with [nvm](https://github.com/nvm-sh/nvm) and `.nvmrc` files
- **Ruby** with [rbenv](https://github.com/rbenv/rbenv)

## Structure

Each top level folder is a package. Packages managed by Stow mirror the layout of the home directory, so `stow zsh` links `zsh/.zshenv` to `~/.zshenv` and `zsh/.config/zsh` to `~/.config/zsh`.

| Package | Description | Install |
|---|---|---|
| `homebrew` | Brewfile of packages and applications | `homebrew/install.sh` |
| `zsh` | Zsh config, using `~/.config/zsh` via `ZDOTDIR` | `stow zsh` |
| `git` | Global git config and aliases | `stow git` |
| `vscode` | VS Code settings and extensions | `vscode/install.sh` |
| `macos` | macOS system preferences | `macos/setup.sh` |

## Installation

These steps set up a new Mac from scratch.

**1. Install the Xcode command line tools**

This provides `git`, which is needed to clone the repository.

```sh
xcode-select --install
```

**2. Clone the repository**

The scripts expect the repository to live at `~/dotfiles`.

```sh
git clone https://github.com/jjgrainger/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

**3. Install Homebrew and packages**

Installs Homebrew if it is missing, then everything in the Brewfile (including Stow).

```sh
./homebrew/install.sh
```

**4. Link config with Stow**

Stow will refuse to overwrite existing files, so move any existing `~/.zshrc`, `~/.zprofile` or `~/.gitconfig` out of the way first.

```sh
stow zsh git
```

**5. Apply macOS preferences (optional)**

```sh
./macos/setup.sh
```

Restart the terminal to load the new shell config.

## Maintenance

### Homebrew

```sh
brew update && brew upgrade   # Update packages
brew doctor                   # Check for problems
brew cleanup                  # Remove old versions
```

Keep the Brewfile in sync as packages are installed or removed over time:

```sh
brew bundle dump --file=homebrew/Brewfile --force   # Write installed packages to the Brewfile
brew bundle cleanup --file=homebrew/Brewfile        # List packages not in the Brewfile
```

### Stow

```sh
stow -R zsh   # Restow a package after adding or removing files
stow -D zsh   # Remove a package's symlinks
```

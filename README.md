# Dot Files


## Getting Started

The `setup.sh` script will install the following tools:

  - [Homebrew](https://brew.sh) (Package manager for MacOS)
  - [alacritty](https://github.com/alacritty/alacritty) (Terminal)
  - [tmux](https://github.com/tmux/tmux/wiki) (Terminal multiplexer)
  - [tpm](https://github.com/tmux-plugins/tpm) (tmux plugin manager)
  - [rectangle](https://rectangleapp.com/) (basic window manager for MacOS)
  - [hammerspoon](https://www.hammerspoon.org/) (automation tool for MacOS)
  - [LazyVim](https://www.lazyvim.org/) (A neovim distribution)
  - [arc](https://arc.net/) (A reinvented browser for MacOS)


  It will then add my configurations to each tool (exception being Rectangle). This includes a onedark theme across alacritty and tmux, as well as some shortcuts that I use to manage my windows, open certain apps, etc.


## Keybindings
Below are my customized keybindings for the respective app. If you can't find something in here, it's probably because I didn't change it from the default keybinding - in which case, consult that particular apps docs for the keybinding

## TMUX
\<leader> = `ctrl + a`
| Action              | Keybinding           |
| -----------         | -----------           |
| Split Vertical      | `<leader> + -`        |
| Split Horizontal    | `<leader> + \|`       |
| Move to Pane        | `Alt + <arrow keys>`  |
| Create new Tab      | `ctrl + t`            |
| Close Tab           | `ctrl + w`            |
| Switch to Tab Right | `shift + right arrow` |
| Switch to Tab Left  | `shift + left arrow`  |
| Save current session| `\<leader> + ctrl + S`|
| Restore Saved Session| `\<leader> + ctrl + R`|








# Baking a fresh macOS system

Notes about what's needed to setup a brand new operating system.

> :warning: these playbooks are still experimental, not idempotent at the moment. Particularly true for the `install_gui_apps.yaml` playbook.

## Initial tasks that should be done asap

- passwordless sudo for system group `admin`
- install homebrew
- install base homebrew packages: zsh, ansible

From there, ideally all remaining actions should be done using ansible.

Installing zsh with homebrew instead of using /bin/zsh allows for autolinking with some packages (e.g: pure prompt). This, in turn, means we also need to update the user's default shell to use the homebrew zsh.

## My preference about some macOS settings

- trackpad tap-to-click.
- activate nightshift

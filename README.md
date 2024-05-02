# dots
Dotfiles for simple Linux Distro using Gnome, tmux and nvim. Vim VS Code jsons also available. The goal is to start from a fresh linux install and have a somewhat painless experience for a destkop. Configuration is VERY minimalist and uses Gnome default as well as keybinding to achieve a somewhat WM-eske experience. 

Almost all files / dirs can be dumped in ~/.config. Exception must be made for:
- .bashrc
- .tmux.conf
- .tmux
Which should be put in home directory.

# Linux Setup
## Gnome
**For some skill-issue reasons, I'm never able to dump and load my gnome config, so I document the little I change here. gnome_settings.ini is there if you want to try your luck**

### Auto config that never works because I suck
From the home directory
Dumping your config:
```bash
$ dconf dump / > gnome_settings.dconf
```

Get the gnome_settings.ini file in your home folder.
Loading a config:
```bash
$ dconf load -f / < saved_settings.dconf
```

### Manual config
- Install GnomeTweaks and Dconf editor
- Getting 8 workspaces:
```bash
$ gsettings set org.gnome.desktop.wm.preferences num-workspaces 8
```
- Removing ['<Super>n'] (n = app number in dock) to launch a specific app to bind it to switching a worskapce: -> Dconf editor: org/gnome/shell/keybindings/switch-to-application-n => remove them all
- Setting ['<Super>n'] (n = workspace number) to switch to a specific workspace -> Dconf editor: org/gnome/desktop/wm/keybindings/switch-to-workspace-n => set to ['<Super>n']
- Setting ['<Shift><Super>n'] (n = workspace number) to move an app to a specific workspace -> Dconf editor: org/gnome/desktop/wm/keybindings/move-to-workspace-n => set to ['<Shift><Super>n']**

Other settings are mostly kept default. <Super> is always used for window management and resizing, and custom shortcuts are sprinkled here and there when needed

## Tmux setup
clone the following repo: https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
to run tmux and get the extensions running. To install extensions in Tmux: <leader>I and reload the config with <leader>r
  
## Setup VS Code
### Extensions
- Live server
- Material icon theme
- One Dark pro
- Prettier
- Vim

## Install fonts
Hack
Hack Nerd

# Windows setup
## Vim setup
- .ideavimrc (working with Intellij and vim configuration) 
- _vimrc basic configuration when using Vim on Windows

## Intellij setup
Settings are synched accross device but just in case:
- Install IdeaVim 
- Install Pokeprogress (impossible to code without it)
- Install Atmon one dark theme and materia icons
- Install Harpooner


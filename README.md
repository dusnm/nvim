```
_   _                 _           
| \ | | ___  _____   _(_)_ __ ___  
|  \| |/ _ \/ _ \ \ / / | '_ ` _ \ 
| |\  |  __/ (_) \ V /| | | | | | |
|_| \_|\___|\___/ \_/ |_|_| |_| |_|

Version: 0.1.3
Maintainer: Dušan Mitrović
repository: https://github.com/dusnm/nvim.git
```

## Requirements
* neovim >= 0.5
* ranger >= 3.9 (needed for file manager integration)
* lua >= 5.4
* npm >= 8.1 (needed for installing language servers)

## Clone this repository
```
git clone https://github.com/dusnm/nvim.git ~/.config/nvim
```

## Install language servers
```
sudo npm i -g pyright \
              typescript-language-server \
              bash-language-server \
              vscode-langservers-extracted \
              dockerfile-language-server-nodejs \
              yaml-language-server \
              intelephense
```
## Keybindings
Default Keybindings. Take note the `<leader>` key is by default set to `,`;

### General

| keybinding | description                       | mode   |
|------------|-----------------------------------|--------|
| <leader>c  | clear search highlights           | normal |
| <leader>q  | quit all windows/buffers and exit | normal |
| <leader>o  | spawn integrated terminal         | normal |
| <leader>tm | toggle table mode                 | normal |

### Splits

| keybinding   | description                           | mode   |
|--------------|---------------------------------------|--------|
| <leader>v    | vertical split                        | normal |
| <leader>h    | horizontal split                      | normal |
| Ctrl + h     | move to the left split                | normal |
| Ctrl + j     | move to the bottom split              | normal |
| Ctrl + k     | move to the top split                 | normal |
| Ctrl + l     | move to the right split               | normal |
| Ctrl + Left  | resize vertical split to the left     | normal |
| Ctrl + Right | resize vertical split to the right    | normal |
| Ctrl + Up    | resize horizontal split to the top    | normal |
| Ctrl + Down  | resize horizontal split to the bottom | normal |

### LSP

| keybinding | description                   | mode   |
|------------|-------------------------------|--------|
| <leader>gd | go to definition              | normal |
| <leader>gD | go to declaration             | normal |
| <leader>gr | find all references           | normal |
| <leader>gi | go to implementation          | normal |
| <leader>gh | spawn hover menu              | normal |
| <leader>gs | display signature information | normal |
| <leader>gn | Move to next diagnostic       | normal |
| <leader>gp | Move to previous diagnostic   | normal |

### Completion

| keybinding   | description                 | mode   |
|--------------|-----------------------------|--------|
| Ctrl + d     | Scroll docs down            | insert |
| Ctrl + f     | Scroll docs up              | insert |
| Ctrl + p     | Move to previous completion | insert |
| Ctrl + n     | Move to next completion     | insert |
| Ctrl + Space | Activate completion         | insert |
| Ctrl + e     | Close completion menu       | insert |
| Return       | Confirm selection           | insert |


## Licensing
This configuration is free software.

All source code is licensed under GNU GPL, either version 3 of the license or, at your option, any later version.

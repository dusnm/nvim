 _   _                 _           
| \ | | ___  _____   _(_)_ __ ___  
|  \| |/ _ \/ _ \ \ / / | '_ ` _ \ 
| |\  |  __/ (_) \ V /| | | | | | |
|_| \_|\___|\___/ \_/ |_|_| |_| |_|

Version: 0.1.0
Maintainer: Dušan Mitrović
repository: https://github.com/dusnm/nvim.git

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
              intelephense
```

## Install nvim plugins
1. Install packer
    ```
    git clone --depth 1 \ 
                https://github.com/wbthomason/packer.nvim \
                ~/.local/share/nvim/site/pack/packer/start/packer.nvim
    ```
2. Run nvim command
   ```
   :PackerInstall
   ```

## Licensing
This configuration is free software.
All source code is licensed under GNU GPL, either version 3 of the license or, at your option, any later version.

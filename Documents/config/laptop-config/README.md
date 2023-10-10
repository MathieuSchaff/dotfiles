# My Linux Configuration


1. [Current npm packages](#current-npm-g-global)

2. [Oh-my-zsh](#ZSH)

3. [dependencies](#dependencies)

4. [nvm](#NVM)
5. [go](#Golang)
4. [neovim](#neovim)
4. [nvm](#NVM)

    1. [Astrovim](#astrovim)
    2. [Clipboard](#clipboard-for-neovim)
    3. [Hacker font install](#hack-font---install)
    4. [Astrovim](#astrovim)

5. [useful apps](#useful-apps)

6. [fzf](#fzf)

7. [Npm globals](#npm-global-packages)

8. [git bare](#git-bare-repository)

9. [x-ressources](#xresources-for-i3)

10. [tmux](#tmux)

11. [i3](#i3)

12. [rofi](#rofi)


## current npm g global

── @nestjs/cli@10.1.18
├── @nomicfoundation/solidity-language-server@0.7.3
├── @sanity/cli@3.16.7
├── @tailwindcss/language-server@0.0.13
├── corepack@0.16.0
├── expo-cli@6.3.10
├── neovim@4.10.1
├── npm@9.5.0
├── solhint@3.6.1
├── solidity-ls@0.5.3
├── tree-sitter-cli@0.20.8
├── typescript@5.1.3
└── yarn@1.22.19

## ZSH

```sh
sudo apt install zsh
```


## Dependencies:

```sh
sudo apt update && \
sudo apt upgrade -y && \
sudo apt install -y zsh-syntax-highlighting curl compton \
tree ripgrep fd-find unzip bat python3-dev \
neofetch  mlocate zoxide python3-pip libsqlite3-dev \
libssl-dev wget && \
sudo apt autoremove -y && \
sudo apt autoclean -y
```

- [ripgrep](https://github.com/sharkdp/fd)
better grep
- [zsh syntax highliting](https://github.com/sharkdp/fd)
not configured for the moment. Todo.


- [fd-find](https://github.com/sharkdp/fd)
another way to find command 
- [zoxide](https://github.com/ajeetdsouza/zoxide#installation)
good tool to navigate + can be used with zsh

## NVM 

- [nvm](https://github.com/nvm-sh/nvm)

```sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
```

## Golang 
- [golang](https://go.dev/doc/install)

## Neovim

Neovim is a highly configurable text editor that I use for programming and editing text files. I prefer installing it from source, following the steps outlined on these GitHub repositories:

- [Installing Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim#install-from-source)
- [Building Neovim](https://github.com/neovim/neovim/wiki/Building-Neovim)

### Build Prerequisites

1. General Requirements

- Clang or GCC version 4.9+ (test clang --version or gcc --version)
- CMake version 3.10+, built with TLS/SSL support
  - Optional: Get the latest CMake from an installer or the Python package (`pip install cmake`)

2. Ubuntu / Debian / Tuxedo

```sh
sudo apt-get install ninja-build gettext cmake unzip curl
```

and

```sh
cd ~ && \
sudo apt install -y ninja-build gettext libtool libtool-bin autoconf python3-dev \
automake cmake g++ pkg-config doxygen libicu-dev libboost-all-dev libssl-dev \
ripgrep fd-find silversearcher-ag mlocate zoxide python3-pip libsqlite3-dev bat
```

### Clone Neovim repository

```sh
mkdir ~/neovim

git clone https://github.com/neovim/neovim ~/neovim
```
```sh
git checkout stable
```

```sh
make CMAKE_BUILD_TYPE=RelWithDebInfo 
CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/neovim"
sudo make install
```

When you provide a custom installation prefix using the CMAKE_INSTALL_PREFIX variable, Neovim will be installed in the specified directory instead of the default system location, which is /usr/local for Unix-like systems.

For example, when you use this command above Neovim will be installed in $HOME/Documents/Mathieu/Apps/neovim, rather than /usr/local.

This can help you keep your system organized and simplify the uninstallation process. However, you will need to add the custom installation location to your PATH environment variable to use Neovim from the command line:

### Global packages for neovim

```sh
export PATH="$HOME/neovim/bin:$PATH"

```

install node js packages :
```sh
npm i -g tree-sitter-cli && \
npm i -g neovim
```
### Clipboard for neovim

https://neovim.io/doc/user/provider.html#clipboard-tool

sudo apt-get install xclip


---

#### NEOVIM - config

1. PYNVIM - install

https://github.com/neovim/pynvim
We need it for some Neovim's plugins.

```sh
cd ~ && \
pip3 install pynvim
```

#### HACK FONT - install
 
 La doc de nvim tree [nvim tree doc](https://github.com/nvim-tree/nvim-tree.lua) 
 demande d'installer la patchet font. 

Check if hacker fonts is not already installed:

```sh
fc-list | grep -i "Hack"
```

Go to https://www.nerdfonts.com/font-downloads to check if link is the lastest release version !
https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hack
download hacker font => https://www.nerdfonts.com/font-downloads
```sh
cd ~/.local/share && \
mkdir fonts && \
cd fonts && \
mv ~/Downloads/Hack.zip . && \
unzip Hack.zip && \
rm -rf Hack.zip
```

#### Other dependencies:

Tree-sitter CLI (Note: This is only necessary if you want to use auto_install feature with Treesitter)
A clipboard tool is necessary for the integration with the system clipboard (see :help clipboard-tool for supported solutions)
Terminal with true color support (for the default theme, otherwise it is dependent on the theme you are using)
Optional Requirements:

- [ripgrep](https://github.com/BurntSushi/ripgrep) - live grep telescope search (<leader>fw)

- lazygit - git ui toggle terminal (<leader>tl or <leader>gg)

- [go DiskUsage](https://github.com/dundee/gdu) - disk usage toggle terminal (<leader>tu)

- [bottom](https://github.com/ClementTsang/bottom) - process viewer toggle terminal (<leader>tt)

- Python - python repl toggle terminal

- Node - Node is needed for a lot of the LSPs, and for the node repl toggle terminal (<leader>tn)

### Astrovim

- [astrovim user config](https://github.com/MathieuSchaff/astro-config-test)

```sh
git clone git@github.com:MathieuSchaff/astro-config-test.git ~/.config/nvim/lua/user
```


## Useful apps 

dbeaver
docker
lazygit 
neofetch 

## FZF

```sh
git clone https://github.com/junegunn/fzf ~/.fzf && \
cd ~/.fzf && ./install
```

## NPM global packages :
https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
Solidity nomic foundation:
https://github.com/NomicFoundation/hardhat-vscode/blob/development/server/README.md


# setting up react native 
[react native setup](https://reactnative.dev/docs/environment-setup?guide=native&platform=android&os=linux)
[watchman](https://reactnative.dev/docs/environment-setup?guide=native&platform=android&os=linux)

## install jdk 11
[JDK 11](https://www.oracle.com/fr/java/technologies/javase/jdk11-archive-downloads.html)
download deb package 
sudo dpkg -i nom_du_package
ensuite: 
sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk-11/bin/java 1

## android studio:

[android studio site](https://developer.android.com/studio/install)

install required libraries and follow the docs inside. 

Careful to use the right sdk: check react native docs

# Git bare repository
[Article](https://www.atlassian.com/git/tutorials/dotfiles)
git init --bare $HOME/dotfiles
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME' (add this alias to .bashrc)
bash
config config --local status.showUntrackedFiles no

Basic usage example:

config add /path/to/file
config commit -m "A short message"
config push

WHAT'S THE REASON FOR THE GIT BARE REPO?

By using the git bare repo, you can have nested git repos in your home directory and there will not be any issue with keeping things straight.   That is the reason for the git bare repo and having an alias ("config").

## Xresources for i3 

in ~/.Xresources
Xft.dpi: 160

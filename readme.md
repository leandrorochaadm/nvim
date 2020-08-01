## Configurações do meu NeoVim

#### Passos pra instalar
*Execute esses comandos*
~~~shell
sudo apt-get install python3-neovim git curl -y
sudo snap install --beta nvim --classic

cd ~/.config
git clone https://github.com/leandrorochaadm/nvim.git
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
~~~

*Entre no Neovim*

digite no Neovim

'''
:PlugInstall
'''

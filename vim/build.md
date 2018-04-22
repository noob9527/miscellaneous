# build-my-vim

1. remove vim
    ```bash
        sudo apt remove vim vim-runtime gvim vim-tiny vim-common && sudo apt autoremove
    ```

1. install dependency
    ```bash
        sudo apt install liblua5.1-dev luajit libluajit-5.1 python-dev ruby-dev libperl-dev mercurial libncurses5-dev libgnome2-dev libgnomeui-dev libgtk2.0-dev libatk1.0-dev libbonoboui2-dev libcairo2-dev libx11-dev libxtst-dev libxt-dev libsm-dev libxpm-dev
    ```

1. get vim
    ```bash
        git clone git@github.com:vim/vim.git --depth=10
    ```

1. configure
    ```bash
        ./configure --with-compiledby="noob" \
                    --with-features=huge \
                    --enable-multibyte \
                    --enable-rubyinterp=yes \
                    --enable-pythoninterp=yes \
                    --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu \
                    --enable-perlinterp=yes \
                    --enable-luainterp=yes \
                    --enable-gui=auto \
                    --enable-gtk2-check \
                    --enable-gnome-check \
                    --with-x \
                    --enable-cscope --prefix=/usr
        make VIMRUNTIMEDIR=/usr/share/vim/vim80
    ```
    or use python3
    ```bash
            --enable-python3interp \
            --with-python3-config-dir=/usr/lib/python3.5/config-3.5m-x86_64-linux-gnu \
    ```
    On Ubuntu 16.04, Python support was not working due to enabling both Python2 and Python3

1. install
    ```bash
        sudo checkinstall
    ```
	or
    ```bash
        sudo make install
    ```

1. set vim as default editor
    ```bash
        sudo update-alternatives --install /usr/bin/editor editor /usr/bin/vim 1
        sudo update-alternatives --set editor /usr/bin/vim
        sudo update-alternatives --install /usr/bin/vi vi /usr/bin/vim 1
        sudo update-alternatives --set vi /usr/bin/vim
    ```

1. finish
    ```bash
        vim --version
    ```

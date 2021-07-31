FROM archlinux
RUN pacman -Sy vim --noconfirm
RUN pacman -Sy git --noconfirm
RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
RUN mkdir ~/.vim/plugged
RUN touch ~/.vimrc
RUN echo "call plug#begin('~/.vim/plugged')" >> ~/.vimrc
RUN echo "Plug 'junegunn/fzf'" >> ~/.vimrc
RUN echo "call plug#end()" >> ~/.vimrc
RUN vim +PlugInstall +qall

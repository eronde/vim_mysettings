FROM eronde/archlinux:2015
ENV VERSION 0.1
RUN pacman -Sy&&\
      pacman --noprogressbar --noconfirm -S\
        git\
        vim

WORKDIR /root
RUN  git clone https://github.com/eronde/Dotfiles.git 
RUN cd Dotfiles  &&\
      git submodule update --init 
RUN sh Dotfiles/makeDotSymlinks.sh
CMD ["bash"]

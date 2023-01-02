#!/usr/bin/make
SHELL = /bin/sh


all: install-zsh set-default-shell install-oh-my-zsh install-fira-code

# 1. zsh shell 설치
# 2. default shell을 zsh로 변경
install-zsh:
	sudo apt-get install -y zsh
	
install-oh-my-zsh:
	curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -o install-oh-my-zsh.sh;
	sh install-oh-my-zsh.sh
	rm install-oh-my-zsh.sh

set-default-shell:
	chsh -s $(shell which zsh)

set-dracula-theme:
	git clone https://github.com/dracula/zsh.git
	cp zsh/dracula.zsh-theme ~/.oh-my-zsh/themes/dracula.zsh-theme
	cp zsh/lib/async.zsh ~/.oh-my-zsh/lib
	rm -rf zsh

set-powerlevel9k-theme:
	git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

install-fira-code:
	sudo apt install fonts-firacode

instll-hack-nerd-fonts:
	git clone git@github.com:ryanoasis/nerd-fonts.git
	cd nerd-fonts && ./install.sh
	rm -rf nerd-fonts

# ~/.zshrc에서 plugins에 plugins=(zsh-autosuggestions zsh-syntax-highlighting)와 같이 추가한다.
install-plugins:
	git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
	git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

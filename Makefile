all:
	@echo "Felix Profile Installer"
	@echo ""
	@echo "This is my profile installer. All the tools can be installed for macos and ubuntu."
	@echo "Add the OS=macos or OS=ubuntu variable depending on the make you want to use."
	@echo ""
	@echo "make OS=macos terminal   # Will install terminal"
	@echo ""

ifeq ($(OS),macos)
terminal: brew macos-terminal
else
terminal: ubuntu-terminal
endif

brew: # This is only for MacOS
	@/bin/bash -c "$$(/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)")"

macos-terminal:
	brew tap wez/wezterm
	brew install --cask wez/wezterm/wezterm || brew reinstall --cask wezterm

ubuntu-terminal:
	@echo "Just use the terminal that comes with Ubuntu"


#----------------------------------------------------------------------------
#----------------------------------------------------------------------------
#  REDO EVERYTHING below this line
#----------------------------------------------------------------------------
#----------------------------------------------------------------------------


# ---------------------------------------------------------------------------
#   Common Targets for Linux and MacOS systems
# ---------------------------------------------------------------------------
#clean: nvim_clean
#
#nvim_clean:
#	rm -rf ~/.config/nvim/
#
#nvim_install: nvim_clean
#	mkdir -p ~/.config/
#	cp -r ./nvim ~/.config/
#
#tmux_install:
#	cp ./tmux/.tmux.conf ~
#
## ---------------------------------------------------------------------------
##   Ubuntu
## ---------------------------------------------------------------------------
#ubuntu_previous:
#	sudo npm cache clean -f
#	sudo npm install -g npm
#	sudo n stable
#	gem install solargraph
#
#ubuntu_install: nvim_install tmux_install
#
## ---------------------------------------------------------------------------
##   MacOS
## ---------------------------------------------------------------------------
#macos_banner:
#	@echo "Installing Profile For MacOS"
#
#macos_install: macos_banner macos_previous macos_fonts macos_npm_pyright macos_install_nvim macos_python macos_tools macos_oh_my_zsh tmux_install
#
#macos_install_nvim: nvim_install
#
#macos_oh_my_zsh:
#	@sh -c "$$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#
#macos_npm:
#	@brew reinstall npm
#	@sudo npm cache clean -f
#	@sudo npm install -g npm@latest
#
#macos_tools:
#	@brew install ag
#
#macos_npm_pyright: macos_npm
#	@npm install --global pyright
#
#macos_python:
#	@python3 -m pip install --upgrade pip
#
#macos_font_roboto_mono:
#	@echo ">>>> Download & Install RobotoMono Nerd Font"
#	@rm -f /tmp/RobotoMono.zip
#	@wget --quiet https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/RobotoMono.zip -O /tmp/RobotoMono.zip
#	@rm -rf ~/Library/Fonts/RobotoMono/
#	@mkdir -p ~/Library/Fonts/RobotoMono/
#	@mv /tmp/RobotoMono.zip ~/Library/Fonts/RobotoMono/
#	@cd ~/Library/Fonts/RobotoMono/ && unzip RobotoMono.zip
#	@rm -f ~/Library/Fonts/RobotoMono.zip
#	@rm -f /tmp/RobotoMono.zip
#
#macos_fonts: macos_font_roboto_mono
#	@echo ">> Installing Fonts in ~/Library/Fonts/"
#
#macos_previous:
#	@echo ">> Installing software dependencies dependencies"
#	@/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
#	@brew install ctags neovim wget
#	@pip3 install neovim
#	@sudo gem install solargraph
#	@sh -c 'curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

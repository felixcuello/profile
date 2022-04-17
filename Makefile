all:
	@echo "Felix Profile Installer"
	@echo ""
	@echo "make macos_install     # for MacOS Systems"
	@echo "make ubuntu_install    # for Ubuntu Systems [incomplete]"

# ---------------------------------------------------------------------------
#   Common Targets for Linux and MacOS systems
# ---------------------------------------------------------------------------
clean: nvim_clean

nvim_clean:
	rm -rf ~/.config/nvim/

nvim_install: nvim_clean
	mkdir -p ~/.config/
	cp -r ./nvim ~/.config/

# ---------------------------------------------------------------------------
#   Ubuntu
# ---------------------------------------------------------------------------
ubuntu_previous:
	sudo npm cache clean -f
	sudo npm install -g npm
	sudo n stable
	gem install solargraph

ubuntu_install: nvim_install

# ---------------------------------------------------------------------------
#   MacOS
# ---------------------------------------------------------------------------
macos_banner:
	@echo "Installing Profile For MacOS"

macos_install: macos_banner macos_fonts macos_previous macos_install_nvim

macos_install_nvim: nvim_install

macos_font_roboto_mono:
	@echo ">>>> Download & Install RobotoMono Nerd Font"
	@rm -f /tmp/RobotoMono.zip
	@wget --quiet https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/RobotoMono.zip -O /tmp/RobotoMono.zip
	@rm -rf ~/Library/Fonts/RobotoMono/
	@mkdir -p ~/Library/Fonts/RobotoMono/
	@mv /tmp/RobotoMono.zip ~/Library/Fonts/RobotoMono/
	@cd ~/Library/Fonts/RobotoMono/ && unzip RobotoMono.zip
	@rm -f ~/Library/Fonts/RobotoMono.zip
	@rm -f /tmp/RobotoMono.zip

macos_fonts: macos_font_roboto_mono
	@echo ">> Installing Fonts in ~/Library/Fonts/"

macos_previous: macos_fonts
	@echo ">> Installing software dependencies dependencies"
	@/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	@brew install ctags neovim wget
	@pip3 install neovim
	@gem install solargraph
	@sh -c 'curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

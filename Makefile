all:
	@echo "Felix Profile Installer"
	@echo ""
	@echo "This is my profile installer. All the tools can be installed for macos (ubuntu at some point)."
	@echo "Add the OS=macos or OS=ubuntu variable depending on the make you want to use."
	@echo ""
	@echo "make OS=macos terminal   # Will install terminal"
	@echo "make OS=macos install    # Will install everything ;-)"
	@echo ""

ifeq ($(OS),macos)
install: macos-install
terminal: brew macos-terminal
tools: brew macos-tools
fonts: macos-fonts
emacs: macos-emacs
else
terminal: ubuntu-terminal
endif

# //////////////////////////////////////////////////////////////////
# // MACOS                                                        //
# //////////////////////////////////////////////////////////////////
macos-install: brew macos-tools macos-fonts macos-emacs macos-terminal macos-nvim macos-tmux

brew: # This is only for MacOS
	@echo "[CONFIG] brew"
	@/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

macos-emacs-doom-requirements:
	@echo "[CONFIG] doom-emacs requirements"
	@brew install fd ripgrep

macos-emacs: macos-emacs-doom-requirements
	@echo "[CONFIG] doom-emacs"
	@rm -f ~/.doom.d
	@rm -rf ~/.emacs.d
	@brew install emacs
	@git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.emacs.d
	@yes | ~/.emacs.d/bin/doom install
	@ln -s "$(shell pwd)/doom_emacs" ~/.doom.d  # This has to happen last

macos-nvim:
	@echo "[CONFIG] nvim"
	@mkdir -p ~/.config/
	rm -rf ~/.config/nvim && ln -s nvim ~/.config/nvim

macos-tmux:
	@echo "[CONFIG] tmux]"
	@echo rm -f ~/.tmux.conf
	@ln -s tmux/.tmux.conf ~/.tmux.conf

macos_oh_my_zsh:
	@sh -c "$$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

macos-tools: brew
	@echo "[CONFIG] macos-tools"
	brew install ag ctags elinks mc neomutt nvim ripgrep tmux wget

# Remember to add: https://github.com/kencrocken/FiraCodeiScript.git
macos-fonts: tools macos-font-roboto-mono macos-font-fira-code

macos-font-fira-code:
	@echo "[CONFIG] macos-font-fira-code"
	wget --quiet https://github.com/tonsky/FiraCode/releases/download/6.2/Fira_Code_v6.2.zip -O /tmp/FiraCode.zip
	@rm -rf ~/Library/Fonts/FiraCode/
	@mkdir -p ~/Library/Fonts/FiraCode/

macos-font-roboto-mono:
	@echo "[CONFIG] macos-font-roboto-mono"
	wget --quiet https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/RobotoMono.zip -O /tmp/RobotoMono.zip
	@rm -rf ~/Library/Fonts/RobotoMono/
	@mkdir -p ~/Library/Fonts/RobotoMono/
	@mv /tmp/RobotoMono.zip ~/Library/Fonts/RobotoMono/
	@cd ~/Library/Fonts/RobotoMono/ && unzip RobotoMono.zip

macos-terminal:
	@echo "[CONFIG] macos-terminal"
	brew tap wez/wezterm
	brew install --cask wez/wezterm/wezterm || brew reinstall --cask wezterm

# //////////////////////////////////////////////////////////////////
# // UBUNTU                                                       //
# //////////////////////////////////////////////////////////////////
ubuntu-terminal:
	@echo "Just use the terminal that comes with Ubuntu"


#----------------------------------------------------------------------------
#  REDO EVERYTHING below this line
#----------------------------------------------------------------------------


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

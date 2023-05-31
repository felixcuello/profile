all:
	@echo ""
	@echo " ----------------------------------------------"
	@echo "  PROFILE"
	@echo " ----------------------------------------------"
	@echo ""
	@echo "make install"
	@echo ""

ifeq ($(OS),linux)
install: linux-install
else
install: macos-install
endif


# ------------------------------------------------
#  MacOS
# ------------------------------------------------
macos-install: macos-dependencies macos-rbenv macos-tmux macos-neovim macos-done

macos-dependencies: brew macos-wget

brew:
	@echo "[INSTALLING] brew"
	@/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	@(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/felix/.zprofile
	@eval "$(/opt/homebrew/bin/brew shellenv)"

macos-neovim:
	# ----------------------------------------------------------------
	@echo "[INSTALLING] neovim"
	@brew install nvim

	# ----------------------------------------------------------------
	@echo "[INSTALLING] packer"
	@git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

	# ----------------------------------------------------------------
	@echo "[INSTALLING] neovide"
	@brew install neovide

	# ----------------------------------------------------------------
	@echo "[INSTALLING] lazygit"
	@brew install lazygit

	# ----------------------------------------------------------------
	@echo "[CONFIGURING] neovim"
	@mkdir -p ${HOME}/.config
	@rm -f ${HOME}/.config/nvim
	@ln -s ${HOME}/github/profile/nvim/ ${HOME}/.config/nvim

macos-rbenv:
	@echo "[INSTALLING] rbenv"
	@brew install rbenv
	@rbenv init
	@echo "^^^^^^^^^^^^^^^^^^^^^ DO THIS"
	@echo "Also take a look at this: https://thoughtbot.com/blog/using-rbenv-to-manage-rubies-and-gems"'

macos-wget:
	@echo "[INSTALLING] wget"
	@brew install wget

macos-tmux:
	@echo "[INSTALLING] tmux]"
	@brew install tmux
	@rm -f ~/.tmux.conf
	@ln -s "$(shell pwd)/tmux/.tmux.conf" ~/.tmux.conf

macos-done:
	@echo ""
	@echo "FINISHED!!
	@echo ""


# ------------------------------------------------
#  Linux
# ------------------------------------------------
linux-install:
	@echo "LINUX INSTALLATION NOT IMPLEMENTED, Sorry! :-("

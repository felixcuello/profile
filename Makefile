help: all

all:
	@echo ""
	@echo "---------------------------------------------------------------------------"
	@echo " 💡 INSTALLERS-A-LA-CARTE 🚀"
	@echo "---------------------------------------------------------------------------"
	@echo ""
	@echo " make install_everything     # install everything"
	@echo " make install_neovim         # install neovim"
	@echo " make install_tools          # install some of the tools I use :-)"
	@echo " make install_fonts          # install fonts"
	@echo " make install_tmux           # install tmux"
	@echo " make install_node           # install Node.js"
	@echo " make install_rbenv          # install rbenv"
	@echo " make install_ohmyzsh        # install oh-my-zsh"
	@echo " make install_alacritty      # install alacritty"
	@echo ""

install_everything: install_neovim install_tools install_fonts install_tmux install_node install_rbenv install_ohmyzsh install_alacritty
	@echo "[FINISHED] Everything installed 😀"

install_neovim: install_node
	@echo "[INSTALLING] nvim ripgrep"
	@brew install nvim ripgrep
	@echo "[INSTALLING] packer"
	@rm -rf ~/.local/share/nvim/site/pack/packer/
	@git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
	@echo "[CONFIGURING] neovim"
	@mkdir -p ${HOME}/.config
	@rm -f ${HOME}/.config/nvim
	@ln -s ${HOME}/github/profile/nvim/ ${HOME}/.config/nvim

install_tools:
	@echo "[INSTALLING] Tools"
	@brew install lazydocker lazygit the_silver_searcher wget

install_fonts:
	@cp fonts/*.zip ~/Library/Fonts/
	@cd ~/Library/Fonts/; yes A | unzip ~/Library/Fonts/FiraCode.zip; cd -
	@rm -f ~/Library/Fonts/FiraCode.zip

install_tmux:
	@echo "[INSTALLING] tmux"
	@brew install tmux
	@rm -f ~/.tmux.conf
	@ln -s "$(shell pwd)/tmux/.tmux.conf" ~/.tmux.conf

install_node:
	@echo "[INSTALLING] Node.js"
	@brew install node

install_rbenv:
	@echo "[INSTALLING] rbenv"
	@brew install rbenv
	@echo "rbenv init"
	@echo "^^^^^^^^^^ RUN THIS AND FOLLOW INSTRUCTIONS"
	@echo "Also take a look at this: https://thoughtbot.com/blog/using-rbenv-to-manage-rubies-and-gems"

install_ohmyzsh:
	@echo "[INSTALLING] oh-my-zsh"
	@sh -c "$$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

install_alacritty:
	@echo "[INSTALLING] alacritty"
	@brew install alacritty
	@echo "[CONFIGURING] neovim"
	@rm -f ~/.config/alacritty/
	@ln -s ${HOME}/github/profile/alacritty/ ${HOME}/.config/alacritty

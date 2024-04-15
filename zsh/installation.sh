cp zshrc $HOME
# Install zsh + Fonts package
sudo apt install zsh
sudo apt install fonts-powerline

# Download and install ohmyzsh + autocomplete + highlithing + theme
cd $HOME && sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" -y
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Download fonts
cd $HOME
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf
mkdir $HOME/.fonts
mv MesloLGS* $HOME/.fonts
# Install fonts
fc-cache -rv

# Replace .zshrc
cd $HOME
rm -rf .zhsrc
mv zshrc .zshrc
echo ""
echo ""
echo "Remember to switch terminal font to MesloLGS NF Regular then run 'zsh' "
sudo chsh -s $(which zsh)
chsh -s $(which zsh)
sudo ln -s $HOME/.oh-my-zsh           /root/.oh-my-zsh
sudo ln -s $HOME/.zshrc               /root/.zshrc


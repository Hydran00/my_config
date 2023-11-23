mv zshrc $HOME
# Install zsh + Fonts package
sudo apt install zsh
sudo apt install fonts-powerline

# Download and install ohmyzsh + autocomplete + theme
cd $HOME && sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" -y
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
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
cp zshrc .zshrc
echo ""
echo ""
echo "Remember to switch terminal font to MesloLGS NF Regular then run 'zsh' "


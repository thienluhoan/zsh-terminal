sudo apt update && sudo apt upgrade -y
git clone https://github.com/thienluhoan/zsh-terminal.git
cd zsh-terminal
mv p10k.zsh ~/.p10k.zsh
sudo apt install zsh -y

sudo chsh -s $(which zsh)

CHSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="powerlevel10k\/powerlevel10k"/' ".zshrc"

sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions)/' ".zshrc"

exec zsh
# update all software first
sudo apt update && sudo apt upgrade
sudo apt install gnome-tweaks yadm zsh guake neovim

## brave browser
sudo apt install apt-transport-https curl
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser


# oh-my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# homebrew (see https://docs.brew.sh/Homebrew-on-Linux#install)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
sudo apt-get install build-essential curl file git

test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv)
test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
test -r ~/.bash_profile && echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.zshrc
echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile

# dropbox
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -

# insync:
# manually from: https://www.insynchq.com/downloads?start=true

############### 
# Battery savers (see: https://dennemann.blog/2019/05/29/install-ubuntu/)
###############

### intel-undervolt
mkdir -p ~/Documents/tools && cd ~/Documents/tools
git clone https://github.com/kitsunyan/intel-undervolt.git
cd intel-undervolt && ./configure --enable-systemd && make && sudo make install

* update limits in /etc/intel-undervolt.conf (-100 for all)
* once stable enable system service at startup

sudo systemctl enable intel-undervolt.service
sudo systemctl start intel-undervolt.service

### activate hardware accelerated video (see https://www.reddit.com/r/brave_browser/comments/dqeqoe/vaapi_video_acceleration_on_linux_success/)

### deactivate nvidia card (reboot after these commands)
sudo apt install bbswitch-dkms
echo "echo bbswitch >> /etc/modules" | sudo bash
echo "echo 'options bbswitch load_state=0' >> /etc/modprobe.d/bbswitch.conf" | sudo bash
sudo system76-power graphics intel

# not needed as handled by system76-power: sudo kernelstub -a "modprobe.blacklist=nouveau"

###############
# Random:
###############

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting<Paste>
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

############### 
# Links:
###############

### apt vs apt-get
https://itsfoss.com/apt-vs-apt-get-difference/
### change Pop_OS! specific hotkeys
https://www.reddit.com/r/pop_os/comments/g157zq/edit_pop_os_specific_hotkeys/

sudo apt update
sudo apt -f install
sudo apt dist-upgrade
sudo apt install -y stow
sudo apt install -y mcrypt
mkdir /home/ubuntu
cd /home/ubuntu
cat ./.profile | grep bhx || echo 'set PATH=${PATH}:~/.local/bin' >> ./.profile
cat ./.profile | grep bhx || echo 'eval $(bhx --profile)' >> ./.profile
cat ./.bashrc  | grep bhx || echo 'eval $(bhx --bashrc)' >> ./.bashrc
[ -d ~/bh-hostconfig ] || git clone https://github.com/bryanhann/bh-hostconfig
echo ~/bh-hostconfig/setup.sh > ./setup.sh
chmod +x ./setup.sh
./setup.sh

# check shell
if [[ ${SHELL} == "/bin/zsh" ]]; then
  echo "setting up for zsh shell"
  cp .rc ~/.zshrc
  cp .profile ~/.profile
else
  echo "setting up for bash shell"
  cp .rc ~/.bashrc
  cp .profile ~/
fi

cp .tmux.conf ~/
cp .vimrc ~/  

cp ~/.vimrc .
cp ~/.bashrc .
cp ~/.bash_profile
cp ~/.tmux.conf .
cp -r ~/.vim/plugged/ultisnips/UltiSnips .

git add .
git commit -m "updating files"
git push origin master


```shell
cd
git init
echo '.*' >> .git/info/exclude
git remote add origin https://github.com/soloturn/dotfiles.git
git fetch -p --all
git checkout master
git reset --hard origin/master
git remote set-url origin git@github.com:soloturn/dotfiles.git
```

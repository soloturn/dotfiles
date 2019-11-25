
```shell
cd
git init
git remote add origin https://github.com/soloturn/dotfiles.git
git fetch -p --all
git checkout master
git reset --hard origin/master
git remote set-url origin git@github.com:soloturn/dotfiles.git
```

```
sudo -H npm install -g ungit
sudo find /usr/lib/node_modules/ungit/ -perm /u+r -print0 | sudo xargs -0 chmod a+r
sudo find /usr/lib/node_modules/ungit/ -perm /u+x -print0 | sudo xargs -0 chmod a+x
```
access content abroad
 * e.g. via unblock-us dns servers: 208.122.23.22, 208.122.23.23
 * read security considerations when changing a DNS server, maybe here: https://security.stackexchange.com/questions/23657/which-security-risks-are-associated-with-alternative-dns-providers


convert signature png to transparent
```
convert signature.png -transparent white transparent.png
```

sign pdf page 5 
```
sign-pdf in.pdf 5 transparent.png
```


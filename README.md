# notes

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

split and concat video
```
fmpeg -i input.mp4 -t 0:03:56 -c copy a.mp4 -ss 0:07:36 -t 0:36:00 -c copy b.mp4 -ss 0:51:40 -t 0:24:00 -c copy c.mp4 -ss 1:21:36 -to 1:46:17 -c copy d.mp4 -ss 1:52:05 -to 2:13:27 -c copy e.mp4 -ss 2:19:51 -to 02:33:46 -c copy out.mp4
ffmpeg -f concat -safe 0 -i con1.txt -c copy nfs1.mp4
```

## git
[visual git](http://marklodato.github.io/visual-git-guide/index-en.html), and 
a [live visualization with d3, e.g. fetch-rebase](http://onlywei.github.io/explain-git-with-d3/#fetchrebase).
the ones who wondered what the index is for, its power lies in ```git add -i```.



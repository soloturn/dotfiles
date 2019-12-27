  arch backup

sudo rsync --dry-run -arvu --delete --exclude-from ~/backup/exclude-128gb.txt --include-from ~/backup/include-home.txt /home/ /run/media/rt/233-root-home/home/ 

sudo rsync --dry-run -arvu --delete --exclude-from ~/backup/exclude-home.txt --include-from ~/backup/include-home.txt /run/media/rt/233-root-home/home/ /run/media/rt/1tb-home/256gb/ 

sudo rsync --dry-run -arvu --delete /run/media/rt/1tb-home/ /run/media/rt/3tb-home/1tb/ 
sudo rsync --dry-run -arvu --delete /run/media/rt/3tb-home/ /run/media/rt/4tb-home/ 

  restore
sudo rsync --dry-run -arvu /run/media/rt/233-root-home/home/rt/ /home/rt/ 


  sony vaio, hawa, 312gb to 3tb
sudo rsync --dry-run -arvu --delete --exclude-from /home/rt/backup/exclude-w10.txt /run/media/rt/FC021465021426E4/Users/hawa/ /run/media/rt/home/backup/sony-vaio/hawa/
sudo rsync --dry-run -arvu --delete --exclude-from /home/rt/backup/exclude-w10.txt /run/media/rt/1E46F3D146F3A823/Users/hawa/ /run/media/rt/home/backup/sony-vaio/hawa-w10/

  lrpc 
rsync -arvu --exclude-from ~/backup/exclude-stube.txt et@stube:/home/et/ '/run/media/rt/1tb-home/backup/et-stube'


1/Generate the SSH key with
	cd ./.ssh
	ssh-keygen -t rsa -b 4096 -C "nguyenchanh2201@gmail.com" 
  Copy the content of your public SSH key, it is the file id_rsa.pub by default

2/ to clone 1 new repo from github.com 
Command : 
	git clone https://github.com/nguyenchanh2201/Doc.git

3/ to push data to repo in github.com

Command : Example file : README.md 
	git add README.md
	git commit -m " message "
	git push -u origin master

4/ to pull data from repo github ( always update data from repo before push data to that )
	git pull https://github.com/nguyenchanh2201/Doc.git

5/ check status current 
	git status

6/ Check log 
	git log



docker commands
build container (only need this in the beginning, or when adding new dependencies)
```
$ docker build -t scraper .
```

run container (need this each time to launch environment)
```
$ docker run -v `pwd`:/workdir -p 8888:8888 -t scraper
```

git comands
tells git what files to track
```
git add --all
```
tells git what to commit ("save")
```git commit -m "short description of changes"
```
push updates to github
```git push origin master
```
pull updates from github
```
git pull origin master
```

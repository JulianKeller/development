# Useful Git commands

See changes made to a specific directory 

```bash
git log -- my_directory
```

put things into columns
```
git log --column
```
or
```
git config --global columnui auto
git config --global branch.sort -committerdate
```

put anything into columns 
```
seq 1 24 | git column --mode=column --padding=5
```

safer push force 
checks that the reference in the remote is up to date with the local. It prevents overwriting other peoples changes if you forgot to do a pull first.
```
git push --force-with-lease
```

maintenance,
adds a cronjob that git runs every hour of every day. Makes things faster in ways you don't notice
```shell
git maintenance start
```

## Useful Git Configurations and Aliases

```shell
git config --global alias.lg=log --graph --pretty=format:'%Cgreen%ad - %Cred%h%Creset -%C(yellow)%d%Creset %s %C(bold blue)<%an>%Creset' --abbrev-commit ==date=format:'%m-%d-%Y'
git config --global alias.checkout-pr=!f() {git fetch -fu ${2:-upstream} refs/pull-requests/$1/from:pr/$1 && git checkout pr/$1; } ; f
git config --global alias.recent=branch -l --sort=committerdate
git config --global alias.hash=rev-parse HEAD
```
```shell
rerere.enabled=true
```

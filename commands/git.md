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

## Useful Git Configurations and Aliases

```shell
alias.lg=log --graph --pretty=format:'%Cgreen%ad - %Cred%h%Creset -%C(yellow)%d%Creset %s %C(bold blue)<%an>%Creset' --abbrev-commit ==date=format:'%m-%d-%Y'
alias.checkout-pr=!f() {git fetch -fu ${2:-upstream} refs/pull-requests/$1/from:pr/$1 && git checkout pr/$1; } ; f
alias.recent=branch -l --sort=committerdate
alias.hash=rev-parse HEAD
```
```shell
rerere.enabled=true
```

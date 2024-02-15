# Useful Git commands

See changes made to a specific directory 

```bash
git log -- my_directory
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

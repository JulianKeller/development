# Vim commands

When squashing rebased commits, use this vim regex to place `# ` in front of each non-empty line 

```vim
g/^\(#\)\@!./s/^/#
```

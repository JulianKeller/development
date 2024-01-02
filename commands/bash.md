# run a command without hanging up the connect, such that you an exit the terminal 

```bash
nohup my-command > output.txt &
```

# compare sha strings in one line

```bash
[ "$(shasum -a 256 /path/to/your/file | awk '{print $1}')" = "yourknownsha256hashhere" ] && echo "The hashes match." || echo "The hashes do not match."
```

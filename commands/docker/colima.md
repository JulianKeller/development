# Colima
Colima is a container runtime on macos and linux

# Install Mac

```bash
brew install colima
```

# Running it on Mac

```bash
colima start --network-address --cpu 4 --memory 8 --vm-typ=va --va-rosetta
```
# Creating a config file instead of cli startup args
https://github.com/abiosoft/colima/blob/main/docs/FAQ.md#can-config-file-be-used-instead-of-cli-flags

```bash
colima start --edit
```

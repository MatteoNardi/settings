
# Settings

All my personal settings are kept in this git repository.
The `install.sh` script will make symlinks to them.

```bash
cd ~/Programming/
git clone git@github.com:MatteoNardi/settings.git
cd settings
sh install.sh
```


# Completions

By using bash-completions, you can add your custom completions by doing
```
flamegraph --completions bash >> .bash_completion

```

# Rust tools

```
cargo install flamegraph
```

Add the following to your `~/.bashrc`

```
for x in $HOME/.bashrc.d/* ; do
    test -f "$x" || continue
    test -x "$x" || continue
    source "$x"
done
```

Or to your `~/.config/fish/config.fish`

```
for x in $HOME/.fish.d/*.fish
    source "$x"
end
```

查看所有option
```bash
cat /usr/share/X11/xkb/rules/evdev.lst
```

### my favor
map caps as ctrl:
```bash
  setxkbmap -option caps:ctrl_modifier -option ctrl:swap_rwin_rctl
```

for ikbc poker:
```bash
  setxkbmap -option caps:ctrl_modifier -option ctrl:swap_rwin_rctl
```

### permanently effect
```bash
  gnome-session-properties
```
add as startup script

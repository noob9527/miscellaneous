# OpenVPN

### DNS leak
- [DNS leak when using systemd-resolved](https://gitlab.gnome.org/GNOME/NetworkManager-openvpn/issues/10)
- [systemd-resolved.service](https://www.freedesktop.org/software/systemd/man/systemd-resolved.service.html)

#### In short
base conf
```
up /etc/openvpn/update-systemd-resolved
up-restart
down /etc/openvpn/update-systemd-resolved
down-pre
```

```bash
sudo apt install openvpn-systemd-resolved
```


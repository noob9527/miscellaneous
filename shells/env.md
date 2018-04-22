# env
### share
- `/etc/profile`: System-wide .profile file for the Bourne shell (sh(1)) and Bourne compatible shells (bash(1), ksh(1), ash(1), ...).
- `$HOME/.profile`: Executed by the command interpreter for login shells. This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login exists.
- `/etc/environment`: System-wide configuration file, which means it is used by all users. It is owned by root though.
- `/etc/profile.d/`: The /etc/profile script and all scripts in /etc/profile.d are the global equivalent of each user's personal ~/.profile and executed as regular shell scripts by all shells during their initialization.

### bash
- `/etc/.bashrc`: System-wide .bashrc file for interactive bash(1) shells.
- `$HOME/.bash_profile`: The personal initialization file, executed for login shells
- `$HOME/.bashrc`: The individual per-interactive-shell startup file

Reference:
- bash manual(man bash)

### zsh
- `/etc/zshrc`: System-wide .zshrc file for interactive bash(1) shells.
- `$HOME/.zshrc`: The individual per-interactive-shell startup file.
- `/etc/zprofile`: System-wide .zprofile file, executed for login shells.
- `$HOME/.zprofile`: The personal initialization file, executed for login shells.

Reference:
- zsh manual(man zsh)

### login/non-login, interactive/non-interactive shell
#### A login shell
A login shell is the shell that is run when you log in to a system, either via the terminal or via SSH.\
Why is this important? If you run a login shell it executes a number of files on startup. For example, these file will be executed if it is a login shell.
- .profile
- .bash_profile
- .bash_login

If you want to set your environment variable(via export command), these can be a good place.

#### An interactive shell
An interactive shell is when you type in the name of the shell after you have logged in to the system. For example
```bash
bash
```
will start an interactive bash shell. An interactive (bash) shell executes the file .bashrc.

#### A non-interactive shell
A non-interactive shell is a shell that can not interact with the user. It's most often run from a script or similar. This means that .bashrc and .profile are not executed. It is important to note that this often influences your PATH variable.

#### Test current shell
To check if current shell is interactive, run
```bash
[[ $- == *i* ]] && echo 'Interactive' || echo 'Not interactive'
```
To check if current shell is a login shell, run
```bash
shopt -q login_shell && echo 'Login shell' || echo 'Not login shell'
```

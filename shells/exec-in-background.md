## &
The & makes the command run in the background.
from man bash:
> If a command is terminated by the control operator &, the shell executes the command in the background in a subshell. The shell does not wait for the command to finish, and the return status is 0.

## [nohup vs &](https://stackoverflow.com/questions/15595374/whats-the-difference-between-nohup-and-ampersand)
nohup catches the hangup signal (see man 7 signal) while the ampersand doesn't (except the shell is confgured that way or doesn't send SIGHUP at all).
Normally, when running a command using & and exiting the shell afterwards, the shell will terminate the sub-command with the hangup signal (kill -SIGHUP <pid>). This can be prevented using nohup, as it catches the signal and ignores it so that it never reaches the actual application.

## disown
In Z shell, you may also need to disown a job
```bash
dolphin &!
```
The &! (or equivalently, &|) is a zsh-specific shortcut to both background and disown the process, such that exiting the shell will leave it running.

refer to: 
- [exit-zsh-but-leave-running-jobs-open](https://stackoverflow.com/questions/19302913/exit-zsh-but-leave-running-jobs-open)


## redirect
- redirect stdout
    ```bash
    cmd 1>
    ```

- redirect stderr
    ```bash
    cmd 2>
    ```

- redirect stderr to stdout
    ```bash
    cmd 2>&1
    ```

### Summary
If you want to run a program in background, and detach it from terminal, it may look like this
```bash
nohup command >/dev/null 2>&1 &
```
An extra safe version would be like
```bash
nohup command </dev/null >/dev/null 2>&1 &
```
In z shell, you may need something like
```zsh
nohup command >/dev/null 2>&1 &!
```

refer to
- [how-do-i-use-the-nohup-command-without-getting-nohup-out](https://stackoverflow.com/questions/10408816/how-do-i-use-the-nohup-command-without-getting-nohup-out)
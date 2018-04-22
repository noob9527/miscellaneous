1. [bbr](https://teddysun.com/489.html)
    ```bash
    wget --no-check-certificate https://github.com/teddysun/across/raw/master/bbr.sh
    chmod +x bbr.sh
    ./bbr.sh
    ```
    验证是否安装成功
    ```bash
    sysctl net.ipv4.tcp_available_congestion_control
    #result> net.ipv4.tcp_available_congestion_control = bbr cubic reno
    sysctl net.ipv4.tcp_congestion_control
    #result> net.ipv4.tcp_congestion_control = bbr
    sysctl net.core.default_qdisc
    #result> net.core.default_qdisc = fq
    lsmod | grep bbr
    #result> tcp_bbr
    ```

2. [shadowsocksR](https://github.com/iMeiji/shadowsocks_install/wiki)
    使用root用户登录，运行以下命令：
    ```
    wget --no-check-certificate https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocksR.sh
    chmod +x shadowsocksR.sh
    ./shadowsocksR.sh 2>&1 | tee shadowsocksR.log
    ```

    **安装完成后，脚本提示如下：**
    ```
    Congratulations, ShadowsocksR server install completed!
    Your Server IP        :your_server_ip
    Your Server Port      :your_server_port
    Your Password         :your_password
    Your Protocol         :your_protocol
    Your obfs             :your_obfs
    Your Encryption Method:your_encryption_method

    Welcome to visit:https://shadowsocks.be/9.html
    Enjoy it!
    ```

    **卸载方法：**  
    使用 root 用户登录，运行命令：`./shadowsocksR.sh uninstall`  

    安装完成后即已后台启动 ShadowsocksR ，运行：`/etc/init.d/shadowsocks status`    
    可以查看 ShadowsocksR 进程是否已经启动。  
    本脚本安装完成后，已将 ShadowsocksR 自动加入开机自启动。  

    **使用命令：**  
    启动：`/etc/init.d/shadowsocks start`  
    停止：`/etc/init.d/shadowsocks stop`  
    重启：`/etc/init.d/shadowsocks restart`  
    状态：`/etc/init.d/shadowsocks status`  

    配置文件路径：`/etc/shadowsocks.json`  
    日志文件路径：`/var/log/shadowsocksr.log`  
    代码安装目录：`/usr/local/shadowsocks`  

    **如果你想修改配置文件，请参考：**  
    https://github.com/iMeiji/shadowsocks_install/blob/master/shadowsocksR-wiki/config.json.md  

3. [SwitchyOmega setting](https://github.com/FelisCatus/SwitchyOmega/wiki/GFWList)
    1. 在线恢复
        [备份文件](https://gist.githubusercontent.com/noob9527/40857e0e15fc0dbe9d47d80bef2efc17/raw/4636eace71f806fbc7aae5056dd41bd96aa7fd40/OmegaOptions.bak)
    2. 更新pac地址
        [GFWlist](https://raw.githubusercontent.com/gfwlist/gfwlist/master/gfwlist.txt)

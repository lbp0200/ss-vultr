# ss-vultr
在vultr上，在线自动部署ss

自动部署v2ray，[v2ray-vultr](https://github.com/lbp0200/v2ray-vultr)

>只支持Ubuntu 18.04

目前Vultr在搞活动，新注册用户，充50送25，可以考虑新建的小号薅羊毛，需要老用户邀请，附上邀请链接[https://www.vultr.com/?ref=7780016-4F](https://www.vultr.com/?ref=7780016-4F)

使用方法
---

### 第一步 新建服务器首次运行执行脚本

打开[Vultr](https://polr.liuboping.com/PrgTf)，登录之后，在`Servers`-`Startup Scripts`-`Add Startup Script`

`name` 随便填

`Type`->`Boot`

最后一项，复制粘贴[在线部署SS脚本链接](https://raw.githubusercontent.com/lbp0200/ss-vultr/master/VultrStartupScript.sh)里面的内容

修改脚本第三行`PWD=PhrelnesI`

`PhrelnesI`是默认的SS密码，修改为你自己的密码，比如`PWD=mima123`

PORT是端口号，`PORT=8388`代表SS服务端的端口号是8388

最后，点最下方蓝色按钮`Add Script`

### 第二步 部署服务器，在第5项选中刚才新建的部署脚本

新建服务器

`Server Type`选择Ubuntu 18.04

5.`Startup Script`，选中刚才新建的`Startup Script`

完成服务器的部署，等待服务器部署完成

ssr客户端的配置文件
```json
{
    "server":"VPS_IP",
    "server_port":8388,
    "local_port":1080,
    "password":"PhrelnesI",
    "timeout":60,
    "method":"chacha20-ietf-poly1305"
}
```

功能
---
已启用bbr加速
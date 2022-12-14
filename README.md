# Yunzai-Bot-Help   
>Centos&&Ubuntu系统轻量型图形化工具     
UpdateTime:2023/1/5_V1.4 
## 一、安装教程 
#### （1）切换用户
>必须`ROOT`模式
```sh
sudo su root      
```
#### （2）环境准备
>1.`Centos`系统初始化☞[Centos更多详细](https://gitee.com/ningmengchongshui/yunzai-bot-help/blob/main/centos/README.md)
```sh
yum update -y && yum install git -y    
```
>2.`Ubuntu`系统初始化☞[Ubuntu更多详细](https://gitee.com/ningmengchongshui/yunzai-bot-help/blob/main/ubuntu/README.md)  
```sh
apt update -y && apt-get install git -y && apt-get install  whiptail -y
```
#### （3）项目拉取
>克隆启动
```sh
git clone https://gitee.com/ningmengchongshui/yunzai-bot-help.git  /yunzai-bot-help && chmod +x /yunzai-bot-help/*/*.sh && sh /yunzai-bot-help/install.sh
```
>日常启动
```sh
sh /yunzai-bot-help/install.sh
```
## 二、手机搭建系统
>[☞Termux下载地址](https://github.com/termux/termux-app/releases)     
>选择下载`arm64`版    

### 国光教程

>安装proot、git、python

```shell
pkg install proot git python -y
```

>安装系统脚本

```shell
git clone https://gitee.com/Le-niao/termux-install-linux.git ~/termux-install-linux
```

>启动系统脚本|选择ubuntu系统

```shell
cd ~/termux-install-linux
python termux-linux-install.py
```

>启动系统

```shell
~/Termux-Linux/Ubuntu/start-ubuntu.sh
```

### 备用教程

>安装git

```shell
pkg install proot git -y
```

>安装脚本

```
git clone https://gitee.com/ningmengchongshui/yunzai-bot-help.git  ~/yunzai-bot-help && chmod +x ~/yunzai-bot-help/android.sh
```

>启动脚本|选择amd64|选择ubuntu系统|选择bionc

```shell
~/yunzai-bot-help/android.sh
```

>启动系统

```shell
~/start-ubuntu.sh
```




## 三、远程连接工具    
> Android：`JuiceSSH`         
> IOS：`Termius`     
> Windows：`MobaXterm`、`Termius`    
## 四、功能介绍    
- [x]  一键安装和部署环境     
- [x] 启动/重启/更新/停止
- [x] 后台运行/重新登录  
- [x] 端口管理(杀进程)    
- [x] SSH开通帮助（远程连接）   
- [x] 系统语言(可设置中文)   
- [x] 桌面安装(入门必备)      
## 五、企鹅讨论[☞为作者发电](https://afdian.net/a/WinterChocolates)      
群名  | 群号  |  群主 
------------- | -------------  | -------------    
| [BotHelp](https://afdian.net/a/WinterChocolates) | 806943302 | [@冬季巧克力](https://gitee.com/djqkl_znje) | 

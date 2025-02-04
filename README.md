# install-packettracer
Install Packet-Tracer on GNU/Linux that not include dpkg.

## Why We Prepare This Scripting?
This for installing Packet Tracer in : 

1) Arch Linux
2) Void Linux
3) Fedora
4) Any Distro that not have DPKG. 

Many of the destros does not have `dpkg` and must use this script to install Packet Tracer. 

## Installation 
Before active the Bash in this scripting. you need download the package from [NETCAD](https://www.netacad.com/courses/packet-tracer) to get the last version. 

**Note** Use only one package in Installation.

1) the first step is download the repository by git:

```bash
git clone https://github.com/Senior-Moe/install-packettracer.git
```

3) copy the package into repo directroy.

4) Then run the command: 

```bash
sudo bash install.sh
```

If you want uninstall run the command 

```bash
sudo bash uninstall.sh
```

**Note**
if you use WM such as [DWM from Suckless](https://dwm.suckless.org) you must make link the executed binary to Dmenu by 

``` bash
sudo ln -s /opt/pt/packettracer /bin/packettracer
```

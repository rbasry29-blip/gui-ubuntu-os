# PROOT-DISTRO-UBUNTU

<img width="1600" height="720" alt="1000011275" src="https://github.com/user-attachments/assets/f640620b-5af1-4850-8508-11d4d2e2e304" />



# features 

Run ubuntu in termux-x11


Comes with much themes
# Requirements 


7 GB of storage


Termux and 

Termux-x11 app
# Installation 
first install two apps 



1. Termux [HERE](https://github.com/termux/termux-app/releases/tag/v0.118.3/termux-app_v0.118.3+github-debug_arm64-v8a.apk)



2 Termux-x11 
[HERE](https://github.com/termux/termux-x11/releases/tag/nightly)



Now run commands in termux



```
pkg update -y
```
```
pkg install git -y
```
```
git clone https://github.com/rbasry29-blip/PROOT-DISTRO-UBUNTU
```




Then,  run



```
cd PROOT-DISTRO-UBUNTU
```



```
chmod +x *
```



```
./cli.sh
```


After that, run



```
./gui.sh
```




In any question,  only hit enter,  
You should have 6 gb + storage,  the installation may take 2 hour. 
Then,  restart your termux and run


```
server
```
Open another session,run


```
ubuntu 
```


then 

```
gui
```

If you want a full copy-paste command , use this -
```
pkg update -y
pkg install git -y
git clone https://github.com/rbasry29-blip/PROOT-DISTRO-UBUNTU
cd PROOT-DISTRO-UBUNTU
chmod +x *
./cli.sh
./gui.sh
```
And go to termux-x11 app and
Enjoy

# Stuck problem

If you stuck on 
```
setting up elementary-xfce-icon-theme
```
And in plocate
```
settting up plocate (intellizing database)
```
Then , hold termix app 
click on app info
click on force stop and ok .
Also clean the cache
then run in termux

```
cd PROOT-DISTRO-UBUNTU
./fix-stuck.sh
```
Then run
```
./gui.sh
```

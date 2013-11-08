# Wallhack

HarpJS application to house custom CSS framework

## Basic usage

1. [Install HarpJS](http://harpjs.com/docs/quick-start)
2. Checkout this repo
3. Run `harp server public`

## Container setup

1. [Install VirtualBox](https://www.virtualbox.org/wiki/Downloads)
2. [Install Vagrant](http://downloads.vagrantup.com/)
3. `vagrant up` (Will take a cople of minutes to boot first time)
4. `vagrant ssh`
5. Navigate to `/vagrant` (should map to cloned repo directory)
6. `sudo docker build -t wallhack .`

## Container usage

*From within Vagrant Box*

### Interactive Mode (Bash)

```bash
sudo docker run -i -t -p 49000:9000 -v /vagrant/:/mnt/wallhack:rw wallhack /bin/bash
```
    
### Interactive Mode (Harp)

```bash
sudo docker run -i -t -p 49000:9000 -v /vagrant/:/mnt/wallhack:rw wallhack compile /mnt/wallhack/public
```

### Daemon Mode (Server)

```bash
sudo docker run -d -p 49000:9000 -v /vagrant/:/mnt/wallhack:rw wallhack
```
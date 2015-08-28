# Official Joomla Container on EdenServers

[![Run on EdenServers](https://img.shields.io/badge/EdenServers-view-blue.svg)](http://www.edenservers.us)
[![](https://badge.imagelayers.io/edenservers/joomla:latest.svg)](https://imagelayers.io/?images=edenservers/joomla:latest 'Get your own badge on imagelayers.io')

![](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Joomla!-Logo.svg/2000px-Joomla!-Logo.svg.png)

All-in-one Joomla Server Container built for [EdenServers](http://www.edenservers.us).

It also includes an SCP server.

---

**This image is meant to be used on an EdenServers Server.**

Our images are built to specifically run for our services. You can run it directly with Docker though.

---
### 1.0.0 (2015-08-28)

This initial version contains:

* *Joomla*
* *scp* Server to upload and download files
* *mysql*

---

## Install

    $ docker pull edenservers/joomla

---

## Config

| Environment Variable  | Description |
| ------------- | ------------- |
| USERNAME    | SCP Username  |
| PASSWORD     | SCP Password  |

| Port  | Description |
| ------------- | ------------- |
| 80 | Joomla  |
| 22 | SCP  |

---

## Run example

    $  docker run -p 80:80 -p 1234:22 -e USERNAME=edenservers -e PASSWORD=edenservers --name joomla -d edenservers/joomla

On setup page :
* **database type** : mysql with mysqli extension
* **database name** : joomla
* **username** : joomla
* **password** : joomla
* **host** : localhost

---

Made by [![EdenServers](http://image.noelshack.com/fichiers/2015/35/1440630894-logo.png)](https://www.edenservers.us)

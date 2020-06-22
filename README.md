[![Build Status](https://travis-ci.org/asteny/alertmanager-bot-deb.svg?branch=master)](https://travis-ci.org/asteny/alertmanager-bot-deb)[![Download](https://api.bintray.com/packages/asten/alertmanager/alertmanager-bot/images/download.svg)](https://bintray.com/asten/alertmanager/alertmanager-bot/_latestVersion)


Alertmanager-bot deb
================

Deb package with [alertmanager-bot](https://github.com/metalmatze/alertmanager-bot) for Ubuntu (16.04 - 18.04)

Installation
------------
```bash
apt-get update
apt-get install gnupg2 apt-transport-https ca-certificates -y
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 379CE192D401AB61
echo "deb https://dl.bintray.com/asten/alertmanager xenial main" | tee -a /etc/apt/sources.list.d/alertmanager.list
apt-get update
apt-get install alertmanager-bot -y

```

[All package versions in Bintray repo](https://bintray.com/asten/alertmanager/alertmanager-bot)
-------------------------------------------------------------------------------

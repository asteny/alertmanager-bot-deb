VERSION = 0.4.2
ITERATION = 1
UID ?= 0

all: build

build: download
	chmod -Rv 644 build/contrib/
	fpm -s dir -f -t deb \
		-n alertmanager-bot \
		-v $(VERSION) \
		--iteration $(ITERATION) \
		--after-install build/contrib/alertmanager-bot.postinstall \
		--after-remove build/contrib/alertmanager-bot.postrm \
		-p build/packages \
		build/contrib/alertmanager-bot.service=/lib/systemd/system/alertmanager-bot.service \
		build/contrib/alertmanager-bot.defaults=/etc/default/alertmanager-bot \
		build/contrib/alertmanager-bot.preset=/usr/lib/systemd/system-preset/alertmanager-bot.preset \
		build/contrib/default.tmpl=/etc/alertmanager-bot/default.tmpl \
        /tmp/alertmanager-bot=/usr/bin/alertmanager-bot

download:
	cd /tmp && curl -Lo alertmanager-bot https://github.com/metalmatze/alertmanager-bot/releases/download/$(VERSION)/alertmanager-bot-$(VERSION)-linux-amd64
	cd /tmp && chmod +x alertmanager-bot

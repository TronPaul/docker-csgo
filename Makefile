USER=tronpaul

build:
	docker build -t ${USER}/csgo .

.PHONY: build

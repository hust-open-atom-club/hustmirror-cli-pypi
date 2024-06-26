all: sync

TIME=$(shell date "+%Y-%m-%d %H:%M:%S")

.PHONY:
sync:
	@echo "Sync from upstream"
	git submodule update --init --recursive
	cd hustmirror-cli && git pull origin master && make
	git commit -as -m "sync: update hustmirror-cli $(TIME)" || true

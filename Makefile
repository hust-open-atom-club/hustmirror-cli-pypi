all: sync

TIME=$(shell date "+%Y-%m-%d %H:%M:%S")

.PHONY:
sync:
	git submodule update --init --recursive
	cd hustmirror-cli && make
	git commit -as -m "sync: update hustmirror-cli $(TIME)" || true

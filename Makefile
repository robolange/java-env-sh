all:

install:
	install -m 0755 -o root -g root -d $(DESTDIR)/etc/profile.d
	install -m 0644 -o root -g root -t $(DESTDIR)/etc/profile.d \
		java.sh

.DEFAULT_GOAL := all

.PHONY: all install

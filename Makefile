PREFIX=/usr/local
EXECUTABLES=dblaunch iconinstaller dblaunch-create-launchers

all:

install:
	install -d $(PREFIX)/bin
	install $(EXECUTABLES) $(PREFIX)/bin

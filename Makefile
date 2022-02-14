TARGET = /usr/lib/python3.9
OLDTARGET = /usr/lib/python3.8

MODULE=hints.py

oldinstall: $(MODULE)
	@cp $< $(OLDTARGET)
	@chmod +x $(OLDTARGET)/$<

install: $(MODULE) oldinstall
	@cp $< $(TARGET)
	@chmod +x $(TARGET)/$<

actions:
	printf "install\tInstall Module\n"

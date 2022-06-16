
ifeq ($(shell id -u), 0)
TARGETS = /etc/vimrc
else
CONFIG = $(addprefix $(HOME)/.config/,i3 i3status)
DOTFILES = $(addprefix $(HOME)/.,shellrc zshrc bashrc Xdefaults)

TARGETS = $(CONFIG) $(DOTFILES)
endif

install: $(TARGETS)

$(HOME)/.config/%: src/config/%
	rm -rf $@
	cp -r $< $@

$(HOME)/.%: src/%
	rm -rf $@
	cp -r $< $@

/etc/%: src/etc/%
	rm -rf $@
	cp -r $< $@


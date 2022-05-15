
ifeq ($(shell id -u), 0)
TARGETS = /etc/vimrc
else
CONFIG = $(addprefix $(HOME)/.config/, i3 i3status)
DOT_FILES = $(HOME)/.zshrc $(HOME)/.Xdefaults
TARGETS = $(CONFIG) $(DOT_FILES)
endif

install: $(TARGETS)

/etc/%: src/etc/%
	cp -r $< $@

$(HOME)/.config/.%: src/config/%
	cp -r $< $@

$(HOME)/.%: src/%
	cp -r $< $@


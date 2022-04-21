
CONFIG = $(addprefix $(HOME)/.config/, nvim i3 i3status)
RCS = $(HOME)/.vimrc $(HOME)/.zshrc $(HOME)/.Xdefaults
TARGETS = $(CONFIG) $(RCS)

all: $(TARGETS)

$(HOME)/.config/%: src/.config/%
	cp -rf $< $@

$(HOME)/%: src/%
	cp $< $@

clean:
	rm -rf $(TARGETS)


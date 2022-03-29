
CONFIG = $(addprefix $(HOME)/.config/, nvim i3 i3status)
RCS = $(HOME)/.zshrc
TARGETS = $(CONFIG) $(RCS)

all: $(TARGETS)

$(HOME)/.config/%: src/.config/%
	cp -rf $< $@

$(HOME)/%: src/%
	cp $< $@

clean:
	rm -rf $(TARGETS)


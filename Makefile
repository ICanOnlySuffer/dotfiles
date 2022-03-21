
CONFIG = $(HOME)/.config/nvim
RCS = $(HOME)/.zshrc
TARGETS = $(CONFIG) $(RCS)

all: $(TARGETS)

$(HOME)/.config/%: src/.config/%
	cp -rf $< $@

$(HOME)/%: src/%
	cp $< $@


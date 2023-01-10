
all: build

test = $(shell pwd)

HOME_PATH = $(HOME)

build:
	@echo "hello Makefile build"
	@bash deploy.sh hello


clean:
	@echo "hello Makefile clean"
	@rm -f $(HOME_PATH)/.vimrc
	@echo "Clean successfully"
	
.PHONY: all build clean dist install uninstall _get_version release undo_release $(CURSOR_THEMES)

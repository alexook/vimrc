
all: build

test = $(shell pwd)

USER_NAME = $(shell getent passwd `who` | head -n 1 | cut -d : -f 1)
USER_PATH = /home/$(USER_NAME)
build:
	@echo "hello Makefile build"
	@bash deploy.sh


clean:
	@echo "hello Makefile clean"
	@rm -f $(USER_PATH)/.vimrc
	@echo "Clean successfully"
	
.PHONY: all build clean dist install uninstall _get_version release undo_release $(CURSOR_THEMES)

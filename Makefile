.PHONY: dotfiles
dotfiles:
	for file in $(shell find $(CURDIR) -name ".*" -not -name ".gitignore" -not -name ".git" -not -name ".*.swp"); do \
        f=$$(basename $$file); \
		echo $$file $(HOME)/$$f; \
		ln -sfn $$file $(HOME)/$$f; \
    done;


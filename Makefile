themedir = ~/Library/Application Support/abnerworks.Typora/themes

.PHONY: all
all: help

.PHONY: deploy  ## deploy theme files
deploy:
	cp -r fit* $(themedir)

.PHONY: help  ## view help
help:
	@grep -E '^.PHONY: [a-zA-Z_-]+.*?## .*$$' $(MAKEFILE_LIST) | sed 's/^.PHONY: //g' | awk 'BEGIN {FS = "## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

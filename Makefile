.PHONY: update

help:
	@echo "update labels for repositories in repositories - set GITHUB_TOKEN to your github token"

update:
	for repo in `cat repositories`; do node_modules/.bin/github-label-sync --access-token ${GITHUB_TOKEN} $$repo; done

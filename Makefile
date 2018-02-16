usage:
	@echo "Usage:"
	@echo "  make pull"
	@echo "  make push"

pull:
	git fetch --prune
	git checkout master && git merge origin/master
	git checkout develop && git merge origin/develop

push: pull
	git push --follow-tags origin master develop

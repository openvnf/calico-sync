PROJECT = calico-sync
VERSION = $(shell head -n1 manifests/calico-etcd-sync.yaml | sed "s/.* //")

GIT_SHA = $(shell git rev-parse HEAD | cut -c1-8)

usage:
	@echo "Usage: make <Command>"
	@echo
	@echo "Commands"
	@echo "    git-release"
	@echo "    version"

git-release:
	git tag -a $(VERSION)
	git push origin $(VERSION)

version:
	@echo "$(VERSION) (git-$(GIT_SHA))"

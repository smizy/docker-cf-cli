
.PHONY: all
all: runtime

.PHONY: clean
clean:
	docker rmi -f smizy/cf-cli:${TAG} || :

.PHONY: runtime
runtime:
	docker build \
		--build-arg BUILD_DATE=${BUILD_DATE} \
		--build-arg VCS_REF=${VCS_REF} \
		--build-arg VERSION=${VERSION} \
		--rm -t smizy/cf-cli:${TAG} .
	docker images | grep cf-cli

.PHONY: test
test:
	bats test/test_*.bats
generate:
	docker run -ti --rm --user 1000:1000 -v $(shell pwd)/lib:/generator/lib $(shell make container)

container: SILENT := >/dev/null
container:
	@ docker build -q .

dev_container:
	docker build .

inspect:
	docker run -ti --rm --entrypoint=/bin/bash $(shell make default)

.PHONY: container dev_container inspect generate

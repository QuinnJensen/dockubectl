all:
	docker buildx build --push --platform linux/amd64,linux/arm/v7,linux/arm64 \
		-t jensenq/dockubectl . 2>&1 | tee LOG

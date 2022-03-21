all:
	docker build -t jensenq/dockubectl . 2>&1 | tee LOG

DOCKER_HUB_REPOSITORY = "ivangabriele/functionary"

build:
	docker build -t $(DOCKER_HUB_REPOSITORY):latest .

push:
	docker push $(DOCKER_HUB_REPOSITORY):latest

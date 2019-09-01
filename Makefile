APP_IMAGE=artef/app:latest
APP_CONTAINER=docker_app_1

build:
	docker build -t $(APP_IMAGE) .

run:
	docker run -t -d --name $(APP_CONTAINER)  $(APP_IMAGE)
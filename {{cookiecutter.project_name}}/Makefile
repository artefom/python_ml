APP_IMAGE=artef/{{cookiecutter.project_name}}:latest
APP_CONTAINER=docker_{{cookiecutter.project_name}}

build:
	docker build -t $(APP_IMAGE) .

run:
	docker run -t -d --name $(APP_CONTAINER)  $(APP_IMAGE)
APP_IMAGE={{cookiecutter.company}}/{{cookiecutter.project_slug}}:latest
APP_CONTAINER=docker_{{cookiecutter.project_slug}}

build:
	docker build -t $(APP_IMAGE) .

run:
	docker run -t -d --name $(APP_CONTAINER)  $(APP_IMAGE)
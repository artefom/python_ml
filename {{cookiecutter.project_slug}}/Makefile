IMAGE_NAME ?= {{cookiecutter.docker_hub_user}}/{{cookiecutter.project_slug}}
IMAGE_TAG ?= latest
CONTAINER_NAME ?= docker_{{cookiecutter.project_slug}}

build:
	docker build -f Dockerfile -t ${IMAGE_NAME}:${IMAGE_TAG} .
	docker push ${IMAGE_NAME}:${IMAGE_TAG}

run:
	- docker rm ${CONTAINER_NAME}
	docker run -t -d --name ${CONTAINER_NAME} ${IMAGE_NAME}:${IMAGE_TAG}

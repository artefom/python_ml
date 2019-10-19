from {{cookiecutter.project_slug}}.configuration import conf

import logging
logger = logging.getLogger(__name__)

def {{cookiecutter.main_script_name}}():
    logger.info("Executing worklfow...")

    logger.info("Mlflow url: {}".format(conf.get('tracking','mlflow_uri')))


if __name__ == "__main__":
    {{cookiecutter.main_script_name}}()

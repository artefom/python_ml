FROM python:3.7

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

WORKDIR /{{cookiecutter.project_name}}

# Add setup.py to install dependecies and cache them
COPY setup.py /{{cookiecutter.project_name}}
COPY README.md /{{cookiecutter.project_name}}
COPY {{cookiecutter.project_name}}/bin/{{cookiecutter.project_name}} /{{cookiecutter.project_name}}/{{cookiecutter.project_name}}/bin/{{cookiecutter.project_name}}
COPY {{cookiecutter.project_name}}/version.py /{{cookiecutter.project_name}}/{{cookiecutter.project_name}}/version.py
RUN pip install -e /{{cookiecutter.project_name}}

# Add source code
# Everything after this line is uncached
COPY . /{{cookiecutter.project_name}}

RUN pip install -e /{{cookiecutter.project_name}}

ENTRYPOINT ["{{cookiecutter.project_name}}"]

CMD ["--help"]
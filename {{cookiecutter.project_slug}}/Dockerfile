FROM python:3.7

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

WORKDIR /{{cookiecutter.project_slug}}

# Add setup.py to install dependecies and cache them
COPY setup.py /{{cookiecutter.project_slug}}
COPY README.md /{{cookiecutter.project_slug}}
COPY {{cookiecutter.project_slug}}/bin/{{cookiecutter.project_slug}} /{{cookiecutter.project_slug}}/{{cookiecutter.project_slug}}/bin/{{cookiecutter.project_slug}}
COPY {{cookiecutter.project_slug}}/version.py /{{cookiecutter.project_slug}}/{{cookiecutter.project_slug}}/version.py
RUN pip install -e /{{cookiecutter.project_slug}}

# Add source code
# Everything after this line is uncached
COPY . /{{cookiecutter.project_slug}}

RUN pip install -e /{{cookiecutter.project_slug}}

ENTRYPOINT ["{{cookiecutter.project_slug}}"]

CMD ["--help"]
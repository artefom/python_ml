FROM pytorch/pytorch

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

WORKDIR /app

# Add setup.py to install dependecies and cache them
COPY setup.py /app
COPY README.md /app
COPY app/bin/app /app/app/bin/app
COPY app/version.py /app/app/version.py
RUN pip install -e /app

# Add source code
# Everything after this line is uncached
COPY . /app

RUN pip install -e /app

ENTRYPOINT ["app"]

CMD ["--help"]
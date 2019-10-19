Cookiecutter tempalte for python ml project
==================

Based on Apache airflow

Features:
----------------
1. Dockerized execution
2. Command-line interface
3. Gitlab-ci build yaml

Project configuration
============================

Project uses project_slug.cfg file for configuration, which can be overridden using environment variables.
The file is divied into several sections, grouping configuration parameters for convenience.

Each section can be acessed inside code as

```python
from project_slug.configuration import conf

# Get value from file or environment variable
conf.get('section_name', 'variable_name')
```

Values in configuration must be specified without quotes

To override default variables in .cfg file one can specify environment variables as
ENVPREFIX__SECTION__VALUE=value

On startup Project will automatically parse those and use them instead of values from .cfg file 

See project_slug/config_templates/default_project_slug.cfg for detailed info about configuration

Docker execution
============================

Project comes with pre-configured docker file which will copy source code, install all libraries in cache-friendly fashion and run help message: `project_slug --help`

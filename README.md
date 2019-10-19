Cookiecutter tempalte for python ml project
==================

Based on Apache airflow

# How to use cookiecutter projects?

```bash
# Install cookiecutter with pip
pip install cookiecutter
# Initialize project from git repository
cookiecutter "repository url"
```

Cookiecutter will ask you few questions about the project and will create project structure

See **Project template parameters description** For full list of parameters of current project

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

Project template parameters description
============================

1. **project_name** - Human-readable project name displayed in README and comments
2. **project_slug** - root of the project, python module name, directory name
3. **env_prefix** - All environment variables used in configuration will be prefixed with this
4. **main_script_name** - Name of the main entry point executed with 'project_slug main_script_name'
5. **author** - Human-readable creator name for setup.py
6. **company** - Human-readable company name for docs and license
7. **docker_hub_user** - used in docker push <hub-user>/<repo-name>:<tag>
8. **description** - Default readme will be populated with this project description

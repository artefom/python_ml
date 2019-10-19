{{cookiecutter.project_name}}
============================

{{cookiecutter.description}}

Usage
============================

To install project in editable mode (can be edited after installation locally),
run cd `{{cookiecutter.project_slug}} && pip install -e .`

After that, {{cookiecutter.project_name}} can be imported inside any python code as
```python
import {{cookiecutter.project_slug}}
# {{cookiecutter.project_name}} creates configuration file {{cookiecutter.project_slug}}.cfg from template (default_{{cookiecutter.project_slug}}.cfg
# inside current working directory
# You can now edit the {{cookiecutter.project_slug}}.cfg to change the configuration and rerun script

# Import main entrypoint
from {{cookiecutter.project_slug}}.{{cookiecutter.main_script_name}} import {{cookiecutter.main_script_name}}

# Run
{{cookiecutter.main_script_name}}()
```

Project configuration
============================

Project uses {{cookiecutter.project_slug}}.cfg file for configuration, which can be overridden using environment variables.
The file is divied into several sections, grouping configuration parameters for convenience.

Each section can be acessed inside code as

```python
from {{cookiecutter.project_slug}}.configuration import conf

# Get value from file or environment variable
conf.get('section_name', 'variable name')
```

Values in configuration must be specified without quotes

To override default variables in .cfg file one can specify environment variables as
{{cookiecutter.env_prefix}}__SECTION__VALUE=value

On startup {{cookiecutter.project_name}} will automatically parse those and use them instead of values from .cfg file 

See {{cookiecutter.project_slug}}/config_templates/default_{{cookiecutter.project_slug}}.cfg for detailed info about configuration

Docker execution
============================

Project comes with pre-configured docker file which will copy source code, install all libraries in cache-friendly fashion and run help message: `{{cookiecutter.project_slug}} --help`

import re
import sys

MODULE_REGEX = r'^[_a-zA-Z][_a-zA-Z0-9]+$'

project = '{{ cookiecutter.project_slug }}'

if __name__ == '__main__':
    if not re.match(MODULE_REGEX, project):
        print('ERROR: %s is not a valid Python module name!' % project)
        sys.exit(1)

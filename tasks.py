"""This files is the replacement of Makefile."""

import shutil
from invoke import task

@task
def clean(ctx, docs=False, bytecode=False, extra=''):
    """Remove all created files."""
    patterns = ['build']
    if docs:
        patterns.append('docs/_build')
    if bytecode:
        patterns.append('**/*.pyc')
    if extra:
        patterns.append(extra)
    for pattern in patterns:
        ctx.run("rm -rf {}".format(pattern))

@task
def build(ctx, docs=False):
    """Build this software."""
    ctx.run("python setup.py build")
    if docs:
        ctx.run("sphinx-build docs docs/_build")

@task
def check_dependencies(ctx):
    """Checking all necessary binaries to build and deploy this software."""
    dependencies = ['python3', 'minikube', 'docker', 'git', 'helm', 'kubectl']
    for dependency in dependencies:
        if not shutil.which(dependency):
            print("Please install %s" % dependency)

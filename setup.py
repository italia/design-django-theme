import os
from setuptools import setup, find_packages

with open(os.path.join(os.path.dirname(__file__), 'README.md')) as readme:
    README = readme.read()

# allow setup.py to be run from any path
os.chdir(os.path.normpath(os.path.join(os.path.abspath(__file__), os.pardir)))

#  rm -R build/ dist/ *egg-info
#  python3 setup.py sdist
#  twine upload dist/*

setup(
    name='design-django-theme',
    version='v2.0.2',
    packages=['bootstrap_italia_template',],
    package_data = {'bootstrap_italia_template': ['bootstrap_italia_template/*']},
    include_package_data=True,
    license='Apache 2.0',
    description="Bootstrap Italia template for Django",
    long_description=README,
    long_description_content_type='text/markdown',
    url='https://github.com/italia/design-django-theme',
    author='Giuseppe De Marco, Francesco Filicetti',
    author_email='giuseppe.demarco@unical.it, francesco.filicetti@unical.it',
    classifiers=[
        'Environment :: Web Environment',
        'Framework :: Django',
        'Framework :: Django :: 2.0',
        'Framework :: Django :: 3.0',
        'Framework :: Django :: 4.0',
        'Intended Audience :: Developers',
        'License :: OSI Approved :: Apache Software License',
        'Operating System :: OS Independent',
        'Programming Language :: Python',
        'Programming Language :: Python :: 3',
    ],
    install_requires=[
        'django',
        'libsass',
        'django-sass-processor',
        'django_compressor',
    ]
)

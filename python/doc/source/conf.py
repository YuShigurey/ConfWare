# Configuration file for the Sphinx documentation builder.
#
# For the full list of built-in configuration values, see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

# -- Project information -----------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#project-information

project = 'Project-Name'
copyright = '2022, Emia'
author = 'Project'
release = '0.1.0'
version = '0.1.0'

# -- General configuration ---------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#general-configuration

extensions = [
    "sphinx.ext.autodoc",
    "sphinx.ext.duration",
    "sphinx.ext.doctest",
    "sphinx.ext.todo",
    "sphinx.ext.coverage",
    "sphinx.ext.mathjax",
    "sphinx.ext.intersphinx",
    # "sphinx.ext.napoleon",
    # "sphinx.ext.autosectionlabel",
    # "sphinx_rtd_theme",
    "sphinx_book_theme",
    "myst_parser",
'nbsphinx',
]

templates_path = ['_templates']
exclude_patterns = []

locale_dirs = ['../locales/']   # path is example but recommended.
gettext_compact = False     # optional.

language = 'en'

# -- Options for HTML output -------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#options-for-html-output

# html_theme = 'alabaster'
# html_theme = "sphinx_rtd_theme"
html_theme = "sphinx_book_theme"

html_static_path = ['_static']

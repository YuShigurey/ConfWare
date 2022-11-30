
## setup

### install dependencies

Use poetry to manage dependencies

```powershell
pip install poetry
poetry install

# export requirements.txt
poetry export -f requirements.txt --output requirements-prod.txt --without-hashes

# add dependency
poetry add dep-name
# or add dep name and constraint directly into pyproject.toml
# and exec `poetry update`

```

### pull submodules

```powershell
git submodule init
git submodule update
```


## Docs

### Commands

All command shall be executed under ./doc directory

```powershell

# dependency
python -m pip install -U Sphinx sphinx-intl myst-parser nbsphinx sphinx-book-theme  sphinx-autobuild

# Sync API comments
sphinx-apidoc -o source ../src/maxoptics_sdk -A Project -f -e -M -H project -V 0.1.0

# International
sphinx-build -b gettext ./source build/gettext
sphinx-intl update -p ./build/gettext -l zh_CN

# Build Static
sphinx-build -b html -D language=en ./source/ ./html/en


# Develop 
sphinx-autobuild source html/en --host 0.0.0.0
sphinx-autobuild source html/zh_CN --host 0.0.0.0 -D language=zh_CN
```

### Configuration

in conf.py

```python
extensions = [
    "sphinx.ext.autodoc",
    "sphinx.ext.duration",
    "sphinx.ext.doctest",
    "sphinx.ext.todo",
    "sphinx.ext.coverage",
    "sphinx.ext.mathjax",
    "sphinx.ext.intersphinx",
    "sphinx_rtd_theme",
    "myst_parser"
]
```

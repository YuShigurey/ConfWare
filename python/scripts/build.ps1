# cd ../doc

.\ensure_conda.ps1
python .\miniBuilders\build.py
.\miniBuilders\BuildCythonWhl.ps1 -pyversion "3.8" -libpath "../src/mod1"

.\miniBuilders\BuildPoetryPy.ps1 -pyversion "3.8"

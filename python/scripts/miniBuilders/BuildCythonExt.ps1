param($pyversion $libpath)

$origpath = Get-Location

& conda create -n "build-py$pyversion" "python=$pyversion " --yes
Set-Location $libpath
conda deactivate
& conda activate "build-py$pyversion "
pip install cython
python setup.py build_ext bdist_wheel
conda deactivate

Set-Location $origpath
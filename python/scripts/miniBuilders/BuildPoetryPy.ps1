param($pyversion)

Set-Location ..
conda deactivate
try{
    & conda activate "build-py$pyversion"
}
catch {
    & conda create -n "build-py$pyversion" "python=$pyversion " --yes
    & conda activate "build-py$pyversion "
}
pip install -r ./prerequisite-requirements.txt -i https://pypi.douban.com/simple
poetry build
conda deactivate

Set-Location ./scripts
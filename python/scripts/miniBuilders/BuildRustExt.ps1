param($pyversion)

conda deactivate
try{
    & conda activate "build-py$pyversion"
}
catch {
    & conda create -n "build-py$pyversion" "python=$pyversion " --yes
    & conda activate "build-py$pyversion "
}
Set-Location ../src/rust_extension
maturin build -i python
conda deactivate

Set-Location ../../scripts
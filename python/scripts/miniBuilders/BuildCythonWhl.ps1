param($pyversion, $libpath)

$origpath = Get-Location

conda deactivate
try{
    & conda activate "build-py$pyversion"
}
catch {
    & conda create -n "build-py$pyversion" "python=$pyversion " --yes
    & conda activate "build-py$pyversion "
}

Set-Location $libpath
Set-Location .\scripts
ls
.\build_whl.ps1
conda deactivate
Copy-Item .\dist\* "$origpath\..\dist"

Set-Location $origpath
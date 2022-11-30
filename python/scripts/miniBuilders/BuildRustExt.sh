#!/bin/bash

_=$1
pyversion=$2
conda create -n "build-py$pyversion" "python=$pyversion" --yes
cd ../src/rust_extension
conda deactivate
conda activate "build-py$pyversion "
maturin build -i python
conda deactivate

cd ../../scripts
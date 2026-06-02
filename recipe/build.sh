#!/bin/bash
export DISABLE_AUTOBREW=1
conda-recipe-upstream-validator --description $SRC_DIR/DESCRIPTION --meta-yaml recipe/meta.yaml
${R} CMD INSTALL --build . ${R_ARGS}

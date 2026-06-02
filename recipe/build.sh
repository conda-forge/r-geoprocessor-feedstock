#!/bin/bash
export DISABLE_AUTOBREW=1
conda-recipe-upstream-validator \
  --description "$SRC_DIR/DESCRIPTION" \
  --meta-yaml "$RECIPE_DIR/meta.yaml" || exit 1
${R} CMD INSTALL --build . ${R_ARGS}

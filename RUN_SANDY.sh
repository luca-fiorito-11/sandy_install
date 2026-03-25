#!/usr/bin/env bash

# ---------------------------------------------------------------------
# RUN_SANDY.sh
#
# This script demonstrates how to run SANDY sampling on different
# nuclear data files using the sandy.sampling module.
#
# It performs:
#   1. Environment setup for NJOY
#   2. Display of the sampling module help
#   3. Sampling runs on several example ENDF-derived data files
# ---------------------------------------------------------------------
set -e  # Stop on first error
set -o pipefail

# Path to NJOY executable (adjust if necessary)
export NJOY=`pwd`/NJOY2016/build/njoy
python -c "import sandy; print(sandy.get_njoy())"

# ---------------------------------------------------------------------
# 1. Show help for the sampling module
#    This prints usage information and available command-line options.
# ---------------------------------------------------------------------
python -m sandy.sampling --help


# ---------------------------------------------------------------------
# 2. Run sampling on Hydrogen-1 (H1) cross sections from JEFF-4.0
#    Generates 2 samples to demonstrate basic operation.
# ---------------------------------------------------------------------
python -m sandy.sampling H1_xs.jeff40 --samples 2


# ---------------------------------------------------------------------
# 3. Run sampling on Uranium-235 (U235) fission yields from JEFF-4.0
#    Again using 2 samples as an example.
# ---------------------------------------------------------------------
python -m sandy.sampling U235_nfpy.jeff40 --samples 2


# ---------------------------------------------------------------------
# 4. Run sampling on Cesium-134 (Cs134) radioactive decay data
#    Again using 2 samples as an example.
# ---------------------------------------------------------------------
python -m sandy.sampling Cs134_rdd.jeff40 --samples 2

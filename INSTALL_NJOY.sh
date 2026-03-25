#!/usr/bin/env bash
# -------------------------------------------------------------------
# INSTALL_NJOY.sh
#
# This script downloads, builds, and installs NJOY2016 from source.
# It performs a shallow clone for speed, uses CMake for configuration,
# and compiles using all available CPU cores.
#
# After running this script, you will find:
#   ./NJOY2016             – the cloned repository
#   ./NJOY2016/build       – the build directory
#
# The script restores your original working directory when done.
# -------------------------------------------------------------------

set -e  # Stop on first error
set -o pipefail

# Remember the starting directory
START_DIR="$(pwd)"

echo "-------------------------------------------------------------"
echo " Installing NJOY2016"
echo "-------------------------------------------------------------"

echo "Cloning NJOY2016 repository..."
git clone --depth 1 https://github.com/njoy/NJOY2016.git

cd NJOY2016
mkdir -p build
cd build

echo "Running CMake..."
cmake -DCMAKE_BUILD_TYPE=Release ..

# Build using all CPU cores
echo "Building NJOY..."
make -j"$(nproc)"

# Return to start directory
cd "$START_DIR"

echo "-------------------------------------------------------------"
echo "NJOY2016 build completed successfully."
echo "Returned to: $START_DIR"
echo "-------------------------------------------------------------"

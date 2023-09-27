#!/bin/bash
set -ex

# Convenience workspace directory for later use
WORKSPACE_DIR=$(pwd)

# Now install all dependencies
yarn install

# Install Commitizen globally
npm install commitizen -g

# Install documentation dependencies
pip3 install -r docs/requirements.txt
pip3 install sphinx-autobuild pre-commit

pre-commit install --hook-type commit-msg

echo "Done!"

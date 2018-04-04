#!/usr/bin/env bash

# Compiling with ghcjs:
stack build --stack-yaml=stack.yaml

# Moving the generated files to the js folder:
mkdir -p js
cp -r $(stack path --local-install-root --stack-yaml=stack.yaml)/bin/sample-ghcjs-with-stack-exe.jsexe/* js/

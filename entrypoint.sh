#!/bin/bash
set -e

cd m3o-js
WORK_DIR=$(pwd)

echo "Working directory ${WORK_DIR}"
echo 'setting up m3o-js for publishing...'

ls -al
ts-publish-setup

echo 'formatting ...'
prettier -w .

echo 'publishing m3o-js to npm ...'
if [! -f .npmrc ]; then echo "missing .npmrc" && exit 1; fi
npm install
npm run build
npm publish --access public

# echo "::set-output name=success::$success"
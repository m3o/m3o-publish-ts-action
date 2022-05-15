#!/bin/bash
set -e

cd m3o-js
WORK_DIR=$(pwd)

echo "ts-publisher-action-> Working directory ${WORK_DIR}"
echo 'ts-publisher-action-> setting up m3o-js for publishing...'

ls -al
ts-publish-setup

echo 'ts-publisher-action-> formatting ...'
prettier -w .

echo 'ts-publisher-action-> publishing m3o-js to npm ...'

if [ ! -f .npmrc ]
then
        echo "missing .npmrc"
        exit 1
fi

npm install
npm run build
npm publish --access public

rm .npmrc

# echo "::set-output name=success::$success"
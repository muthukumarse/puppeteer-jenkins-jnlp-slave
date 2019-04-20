#!/bin/sh
cd /app
echo "Deleting node_modules & coverage folder..."
rm -rf node_modules/
rm -rf coverage
echo "Installing YARN dependencies..."
yarn install --offline --force
echo "Start copying Puppeteer dependencies..."
mkdir -p node_modules/puppeteer/.local-chromium
cp -R /puppeteer/linux-637110 node_modules/puppeteer/.local-chromium
mkdir -p node_modules/puppeteer-firefox-dl/.local-browser
cp -R /puppeteer/firefox-linux-2f959d575a3d61f5dda12e4e2dca1f46a92ab569 node_modules/puppeteer-firefox-dl/.local-browser
echo "Puppeteer dependencies are copied..."

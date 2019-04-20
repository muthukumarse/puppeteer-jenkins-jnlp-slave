
#!/bin/sh
sh /puppeteer/prepare.sh
cd /app
echo "Executing UI Automation Scripts in Parallel..."
yarn test:parallel:chrome
echo "Generating HTML Report..."
yarn report:generate
echo "Cleaning node_modules"
rm -rf node_modules/
echo "UI Automation Testing Completed..."
# Remove existing www directory
echo "Removing files..."
rm -rf ./www || true

# Build production
echo "Building files..."
#tsc

# Copy over needed files and folders
echo "Copying files..."
cp -rf ./src/config ./www/config

cp ./.npmrc ./www/.npmrc

mkdir ./www/.elasticbeanstalk
cp ./.elasticbeanstalk/config.yml ./www/.elasticbeanstalk/config.yml

cp ./package.json ./www/package.json

# Just get the required node_modules
echo "Installing modules..."
npm install --production --prefix ./www
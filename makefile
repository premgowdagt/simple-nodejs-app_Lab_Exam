# Define variables
APP_NAME = simple-nodejs-app
NODE_ENV = development

# Install dependencies
install:
	@echo "Installing dependencies..."
	npm install

# Lint the code with ESLint
lint:
	@echo "Running ESLint..."
	npx eslint src/

# Automatically fix linting issues
lint-fix:
	@echo "Fixing linting issues..."
	npx eslint --fix src/

# Run tests (Assuming tests are set up with a testing framework like Mocha/Jest)
test:
	@echo "Running tests..."
	npx mocha test/ # or npx jest if you're using Jest

# Start the application (assuming the entry point is `app.js` or `index.js`)
start:
	@echo "Starting the app..."
	node src/app.js  # or the entry point of your app

# Start the application using PM2 (if you are using PM2 for process management)
start-pm2:
	@echo "Starting the app with PM2..."
	pm2 start src/app.js --name $(APP_NAME)

# Stop the application (if you started it with PM2)
stop-pm2:
	@echo "Stopping the app with PM2..."
	pm2 stop $(APP_NAME)

# Restart the application (if using PM2)
restart-pm2:
	@echo "Restarting the app with PM2..."
	pm2 restart $(APP_NAME)

# Clean up node_modules (if you want to clean up dependencies)
clean:
	@echo "Cleaning up node_modules..."
	rm -rf node_modules/

# Install and start the app (this installs and then starts the app)
install-start: install start

# Default target
.PHONY: install lint lint-fix test start start-pm2 stop-pm2 restart-pm2 clean install-start

# Variables
APP_NAME = simple-nodejs-app
NODE_MODULES = node_modules
PACKAGE_JSON = package.json
INSTALL_CMD = npm install
START_CMD = npm start
TEST_CMD = npm test
LINT_CMD = npm run lint
BUILD_CMD = npm run build

# Default target: Install dependencies
.PHONY: all
all: install

# Install dependencies
.PHONY: install
install:
	@echo "Installing dependencies..."
	$(INSTALL_CMD)

# Start the application
.PHONY: start
start:
	@echo "Starting the application..."
	$(START_CMD)

# Run tests
.PHONY: test
test:
	@echo "Running tests..."
	$(TEST_CMD)

# Lint the code
.PHONY: lint
lint:
	@echo "Linting the code..."
	$(LINT_CMD)

# Build the application
.PHONY: build
build:
	@echo "Building the application..."
	$(BUILD_CMD)

# Clean up the node_modules directory
.PHONY: clean
clean:
	@echo "Cleaning up the project..."
	rm -rf $(NODE_MODULES)
	rm -rf ./.env

# Run the application in development mode (optional, if using a tool like `nodemon`)
.PHONY: dev
dev:
	@echo "Running in development mode..."
	npx nodemon

# Run the application in production mode (optional)
.PHONY: prod
prod:
	@echo "Running in production mode..."
	$(START_CMD) --production

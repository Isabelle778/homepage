.DEFAULT_GOAL := help

dockercomposebin = docker-compose --env-file $(PWD)/.env

help: ## This help
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-25s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST) | sort | uniq

build: ## Build docker images
	@[ -f .env ] || cat .env.example > .env
	@$(dockercomposebin) build

up: ## Push docker containers up 
	@$(dockercomposebin) up -d

down: ## Pull docker containers down
	@$(dockercomposebin) down -v

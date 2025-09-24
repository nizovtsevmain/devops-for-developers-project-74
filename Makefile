setup:
	docker compose run --rm app make setup

up-exist:
	docker compose up --abort-on-container-exist

start:
	docker compose up

ci:
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

build:
	docker compose -f docker-compose.yml build app

push:
	docker compose -f docker-compose.yml push app

up-development:
	docker run -p 8080:8080 -e NODE_ENV=development nizovtsevi/devops-for-developers-project-74 make dev
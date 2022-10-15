up:
	docker compose up -d
down:
	docker compose down --remove-orphans
restart:
	@make down
	@make up
build:
	docker compose build --no-cache --force-rm
init:
	@make build
	@make up
ps:
	docker ps -a --no-trunc
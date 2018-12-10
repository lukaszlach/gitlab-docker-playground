.PHONY: start stop restart kill update run-gitlab run-gitlab-runner register-gitlab-runner clean

start:
	docker-compose up -d gitlab gitlab-runner

stop:
	docker-compose down

restart: stop start

kill:
	docker-compose kill

logs:
	docker-compose logs -f --tail=0

update: clean
	docker-compose pull gitlab gitlab-runner

run-gitlab:
	docker-compose up gitlab

run-gitlab-runner:
	docker-compose up gitlab-runner

register-gitlab-runner: gitlab-runner/config/config.toml

gitlab-runner/config/config.toml:
	docker-compose run --rm register-gitlab-runner

clean:
	docker-compose down
	docker-compose rm -f

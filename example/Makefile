docker_stack_name = swarmtail

it:
	@echo "make [configs|deploy|destroy]"

.PHONY: configs
configs:
	test -f "configs/promtail.yml" || cp configs/promtail.default.yml configs/promtail.yml

deploy: configs
	docker stack deploy -c docker-compose.yml $(docker_stack_name)

destroy:
	docker stack rm $(docker_stack_name)

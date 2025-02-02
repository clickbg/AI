start:
	docker compose up -d

stop:
	docker compose down

install:
	docker exec -it ollama ollama pull deepseek-r1:7b
	docker exec -it ollama ollama pull codellama:13b

update:
	docker compose pull
	docker compose up --force-recreate --build -d --remove-orphans
	docker exec -it ollama ollama pull deepseek-r1:7b
	docker exec -it ollama ollama pull codellama:13b

restart: stop start

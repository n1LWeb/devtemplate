up:
	docker compose up -d

down:
	docker compose down

watch:
	inotify-hookable -f docker-compose.yml -c "make down; make up" &

unwatch:
	killall inotify-hookable

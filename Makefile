up:
	git clone https://github.com/todo-deploy/todo-app.git
	cp Procfile todo-app/
	cd todo-app; \
	git add . && git commit -m "Add Procfile"; \
	heroku login; \
	heroku create --buildpack heroku/nodejs; \
	git push heroku master; \
	heroku open
down:
	cd todo-app; heroku apps:destroy

status:
	cd todo-app; heroku logs
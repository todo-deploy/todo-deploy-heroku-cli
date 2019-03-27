up:
	git clone https://github.com/todo-deploy/todo-app.git
	cp Procfile todo-app/
	cd todo-app; \
	git add . && git commit -m "Add Procfile"; \
	heroku login; \
	heroku create --buildpack heroku/nodejs; \
	heroku addons:create mongolab:sandbox; \
	git push heroku master; \
	heroku open
down:
	cd todo-app; \
	heroku addons:destroy mongolab:sandbox; \
	heroku apps:destroy

status:
	cd todo-app; heroku logs
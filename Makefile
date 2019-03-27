up:
	git clone https://github.com/todo-deploy/todo-app.git
	cd todo-app
	cp ../Procfile .
	git add & git commit -m "Add Procfile"
	heroku login
	heroku create --buildpack heroku/nodejs
	git push heroku master
	heroku open
down:
	heroku apps:destroy

status:
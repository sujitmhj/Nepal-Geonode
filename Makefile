loaddata:
	# Load fixture data
	python manage.py loaddata fixtures/initial_data.json
	python manage.py loaddata fixtures/sample_admin.json
	python manage.py loaddata fixtures/default_oauth_apps.json

restart:
	sudo service uwsgi-emperor restart
	sudo service nginx restart

pull:
	git reset --hard HEAD
	git pull

deploy: pull restart

fixlayerpermission:
	sudo chmod a+w uploaded/layers/*

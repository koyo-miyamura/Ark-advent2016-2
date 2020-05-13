DB_FILE="database.db"

run:
	DBIC_TRACE=1 carton exec plackup dev.psgi

migrate:
	if [ -f $(DB_FILE) ]; then rm $(DB_FILE); fi
	carton exec perl ./script/migrate.pl

insert:
	carton exec perl ./script/insert_default_data.pl

db-update: migrate insert

.RECIPEPREFIX := >
PY ?= python
MANAGE := $(PY) manage.py

.PHONY: run migrate makemigrations superuser

run:
> $(MANAGE) runserver

migrate:
> $(MANAGE) migrate

makemigrations:
> $(MANAGE) makemigrations

superuser:
> $(MANAGE) createsuperuser

schema-json:
> $(MANAGE) spectacular --file schema.json

schema-yaml:
> $(MANAGE) spectacular --file schema.yaml --format yaml
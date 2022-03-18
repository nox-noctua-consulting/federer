# Peon (Game Server Manager)

A project to assist gamers in self deploying/managing game servers.

## Architecture

WebUI (PeonUI) built into docker image using flask as base.\
Docker compose to deploy all app components (PeonUI, PostgreSQL)

Flask provided by [tiangolo/uwsgi-nginx-flask](https://hub.docker.com/r/tiangolo/uwsgi-nginx-flask/)\
Postgres provided by [postgres:14-alpine](https://hub.docker.com/_/postgres)

### Features

- Deploy and delete games from a recipe catalgue (hosted here)
- Start/stop servers with timeouts (e.g. specify a game session to run for 6 hours (with option to extend))
- Access control
- API control (for discord bots)
- Recipe checker
- Timers
- Persistent saves (UI managed)


#### Notes

[Flask app example](https://ianlondon.github.io/blog/deploy-flask-docker-nginx/)

Quick Project Download

```bash
wget https://github.com/nox-noctua-consulting/peon/archive/main.zip
```

Deploy app in Detached mode

```bash
docker-compose up -d
```

## Implemented so far

1.**Docker Image** Can build/deploy flask app into custom docker image
2.**Docker Compose** Can deploy webui.webapp and webui.db using ``docker-compose up -d``, with app only starting after db has started.
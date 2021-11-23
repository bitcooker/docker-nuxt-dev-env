# NuxtJS Development Environment Using Docker

[![Docker Image CI](https://github.com/ifaniqbal/docker-nuxt-dev-environment/actions/workflows/docker-image.yml/badge.svg)](https://github.com/ifaniqbal/docker-nuxt-dev-environment/actions/workflows/docker-image.yml)

## Installation

```sh
git clone git@github.com:ifaniqbal/docker-nuxt-dev-environment.git
cd docker-nuxt-dev-environment
```

## Usage

Initially, we need to create `src` directory.

```sh
mkdir src
```

Next, build the services. This command will build three services: `nuxt-dev.test`, `nuxt-prod.test`,
and `node`.

```sh
docker-compose build --build-arg user=$USER
```

Next, create nuxt app.

```sh
docker-compose run --rm node npx create-nuxt-app .
```

Next, start the development server.

```sh
docker-compose up -d nuxt-dev.test
```

Test it. Open browser on [localhost:3000](http://localhost:3000)

To stop the development server, run:

```sh
docker-compose down
```

To start the production server, run:

```sh
docker-compose up -d nuxt-prod.test
```

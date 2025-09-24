# JS Fastify Blog

## Requirement

* NodeJS v20.6.1
* Sqlite или PostgreSQL

## Commands

```bash
make install
make dev
```

## Run tests with Postgres

To run tests with Postgres, you need to edit *config/config.cjs* and under the `test` key comment out the use of SQLite and uncomment the environment variables

```js
  // test: {
  //   dialect: 'sqlite',
  //   storage: './database.test.sqlite',
  // },
  test: {
    dialect: 'postgres',
    database: process.env.DATABASE_NAME,
    username: process.env.DATABASE_USERNAME,
    password: process.env.DATABASE_PASSWORD,
    port: process.env.DATABASE_PORT,
    host: process.env.DATABASE_HOST,
  },
```

Specify environment variables manually or prepare a *.env* file with the command

```bash
make prepare-env
```

In it specify the data to connect to the database

```dotenv
DATABASE_NAME=postgres
DATABASE_USERNAME=postgres
DATABASE_PASSWORD=postgres
DATABASE_PORT=5432
DATABASE_HOST=localhost
```

## Running an application with Postgres (production)

Export environment variables to work with the database or prepare a *.env* file with variables

Run

```bash
make build # build assets
make start # Open in browser: http://localhost:8080
```

---


### Hexlet tests and linter status:
[![Actions Status](https://github.com/nizovtsevmain/devops-for-developers-project-74/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/nizovtsevmain/devops-for-developers-project-74/actions)
[![push](https://github.com/nizovtsevmain/devops-for-developers-project-74/actions/workflows/push.yml/badge.svg)](https://github.com/nizovtsevmain/devops-for-developers-project-74/actions/workflows/push.yml)

### Docker Hub
https://hub.docker.com/repository/docker/nizovtsevi/devops-for-developers-project-74/general
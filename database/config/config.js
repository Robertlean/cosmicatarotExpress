module.exports={
    "development": {
      "username": "postgres",
      "password": null,
      "database": "cosmicaTarotdb",
      "host": "localhost",
      "dialect": "postgres",
      "port":5432
    },
    "test": {
      "username": "postgres",
      "password": "pgadmin",
      "database": "cosmic",
      "host": "127.0.0.1",
      "dialect": "postgres"
    },
    "production": {
      "username": "postgres",
      "password": null,
      "database": "cosmicatarotdb",
      "host": "127.0.0.1:52999",
      "dialect": "postgres"
    }
  }
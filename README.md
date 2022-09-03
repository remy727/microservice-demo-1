# README

- Seed example data
```
curl -d '{"name": "salah", "score": 4.1}' -H 'Content-Type: application/json' http://localhost:3000/users
curl -d '{"name": "mane", "score": 4.5}' -H 'Content-Type: application/json' http://localhost:3000/users
```

- Run microservice that returns the list of names
```
bundle exec puma -b tcp://0.0.0.0:8080 config_names.ru
curl -v http://localhost:8080
```
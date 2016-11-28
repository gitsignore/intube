# inTube

inTube is an educational project realized in one day.
 
The purpose was to realized a streaming web application.

## Requirements

* Ruby
* Ruby on Rails
* DB server (SQLite, MySQL, POSTGRESQL)

## Installation

First, you need to clone this repository:
```bash
$ git clone https://github.com/TataneInYourFace/intube.git
```

Go in the application folder:
```bash
$ cd intube
```

Install the application:
```bash
$ bundle install
```

Create your own file with your secret app keys in 'config/secrets.yml':
```yaml
development:
  secret_key_base:  your_development_secret_key

test:
  secret_key_base:  your_test_secret_key

production:
  secret_key_base: your_production_secret_key
```

Prepare database:
```bash
$ rake db:migrate
```

Load SQLite dump:
```bash
$ rake db:data:load
```

Execute the server:
```bash
$ bin/rails server
```

In your browser go to : http://localhost:3000

# CreateRailsApp

Basic steps to create a new Rails application from scratch.

## Using Docker
- Create your app folder
  ```
  mkdir my_new_app && cd my_new_app 
  ```
- Download [Dockerfile](Dockerfile) and [docker-compose.yml](docker-compose.yml) inside the new folder
- Edit `docker-compose.yml` to use Mysql instead of Postgres
    - Enable Mysql image (uncomment lines from 5 until 11) and enable volume in line 51
    - Disable Postgres image (comment lines from 21 until 29) and disable volume in line 50
    - Replace `postgres` for `mysql` inside `depends_on` (Line 38)
- Build the container
  ```
  docker-compose run --service-ports app bash
  ```
- Create the new application (See all options with `rails new --help` and customize based on it)
  ```
  rails new my_app --database=postgresql --javascript=esbuild --css=sass
  ```
- Copy generated files (Note: ignore warning messages)
  ```
  mv ../my_app/{*,.*} ./
  ```
- Edit DB settings    
  Edit `config/database.yml` and enter the database credentials (host: postgres, user: root, password: password)

- Run application
  ```
  rails db:migrate
  bin/dev
  ```
  Visit http://localhost:3000
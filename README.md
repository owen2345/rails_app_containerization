# Rails App Containerization

## Build a new rails application
- Download this repository
- Set your desired ruby version in `Dockerfile` and `Dockerfile_builder`
- Edit `docker-compose.yml` to use `Mysql` instead of `Postgres` (if needed)
    - Enable Mysql image
    - Disable Postgres image
  
- Build the container
  ```
  docker-compose run builder bash
  ```
- Install the desired rails version
  ```
  gem install rails -v "7.0"
  ```
- Create the new application (See all options with `rails new --help` and customize based on it)
  ```
  rails new --database=postgresql --javascript=esbuild --css=sass .
  ```
- Edit `config/database.yml` and enter the database credentials (host: postgres, user: root, password: password)

- (Optional) Edit `Dockerfile` to add extra app dependencies
- Run application (Exit from previous container)
  ```
  docker-compose up app
  ```
  Visit http://localhost:3000

## Containerize existent applications
- Download `Dockerfile` and `docker-compose.yml`
- Set your desired ruby version in `Dockerfile`
- Edit `docker-compose.yml` to use Mysql instead of Postgres (if needed)
  - Enable Mysql image
  - Disable Postgres image
  
- Edit `config/database.yml` and enter the database credentials (host: postgres, user: root, password: password)

- (Optional) Edit `Dockerfile` to add extra app dependencies 
- Run application
  ```
  docker-compose up app
  ```
  Visit http://localhost:3000
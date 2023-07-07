export PATH=$PATH:./vendor/bin
export PATH=$PATH:./node_modules/.bin

alias sbr="./mvnw -Dspring-boot.run.profiles=local spring-boot:run"
alias db:reset="./mvnw liquibase:dropAll liquibase:update"
alias db:seed="docker-compose exec postgres psql app -c \"\$(<seed.sql)\""

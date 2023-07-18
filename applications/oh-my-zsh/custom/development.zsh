source $HOME/.sdkman/bin/sdkman-init.sh
source $(brew --prefix nvm)/nvm.sh

export PATH=$PATH:./vendor/bin
export PATH=$PATH:./node_modules/.bin
export PATH=$PATH:/Applications/IntelliJ\ IDEA.app/Contents/MacOS

alias sbr="./mvnw -Dspring-boot.run.profiles=local spring-boot:run"
alias db:reset="./mvnw liquibase:dropAll liquibase:update"
alias db:seed="docker-compose exec postgres psql app -c \"\$(<seed.sql)\""

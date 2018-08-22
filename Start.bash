docker-machine.exe start default
docker-machine.exe env default
eval $("C:\Program Files\Docker Toolbox\docker-machine.exe" env default)
docker-compose.exe run web rails new . --force --database=mysql --skip-bundle
docker-compose.exe down
docker-compose.exe run web rake db:create
docker-compose.exe run web rake db:migrate
docker-compose.exe up

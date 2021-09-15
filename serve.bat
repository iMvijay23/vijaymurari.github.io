REM docker run --rm --volume=%cd%:/srv/jekyll -p 4000:4000  jekyll/jekyll jekyll serve --watch --incremental --force_polling
FOR /f "tokens=*" %%i IN ('docker ps -q') DO docker stop %%i
REM FOR /f "tokens=*" %i IN ('docker ps -q') DO docker stop %i
REM docker run --rm -v=%cd%:/srv/jekyll -p 4000:4000 -it jekyll/jekyll /bin/bash 
REM jekyll serve --force_polling --watch

docker run --rm -e "JEKYLL_ENV=docker" -v %cd%:/srv/jekyll -p 4000:4000 -it jekyll/jekyll jekyll serve --config  _config.yml,_config.docker.yml

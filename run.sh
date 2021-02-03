docker build -t react_env:myself . --no-cache
# docker run -it --rm --name react_env react_env:myself /bin/bash

#開発用
app_dir=`pwd`/react_app
docker run -it -d -v $app_dir:/react_app --name react_env -p 8001:8001  react_env:myself

docker exec -it react_env bash



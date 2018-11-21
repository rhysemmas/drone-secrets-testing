docker ps -a | awk '{print $1,$2}' | grep mysql:latest | awk '{print $1}' | xargs -I {} sh -c 'docker kill {}; docker rm {};'

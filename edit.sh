#! /bin/sh

for d in $(ls -d */)
do
  echo $d
  sed -i '' '/MAINTAINER/d' $d/latest/Dockerfile
  sed -i '' '/ADD https:\/\/github.com/d'  $d/latest/Dockerfile
  sed -i '' '/RUN chmod/d' $d/latest/Dockerfile
  sed -i '' '/USER glot/d' $d/latest/Dockerfile
  sed -i '' '/WORKDIR/d' $d/latest/Dockerfile
  sed -i '' '/CMD/d' $d/latest/Dockerfile
  sed -i '' '/ENTRYPOINT/d' $d/latest/Dockerfile
  sed -i '' '/useradd/d' $d/latest/Dockerfile
  sed -i '' '/groupadd/d' $d/latest/Dockerfile
  sed -i '' '/#/d' $d/latest/Dockerfile

  echo "RUN apt-get update && apt-get install git build-essential -y" >> $d/latest/Dockerfile
  echo "ENV GIT_SSH_COMMAND='ssh -i /key'" >> $d/latest/Dockerfile
  echo "ADD ../../key /key" >> $d/latest/Dockerfile
  # break
done

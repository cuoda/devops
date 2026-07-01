#!/bin/bash

<< comment
deploy django app
comment

clone_repo() {
  echo "cloning the repo"
  git clone https://github.com/LondheShubham153/django-notes-app.git
}
echo "cloning the repo is completed"


install_requirements() {
  echo "installing dependencies"
  sudo apt-get install docker.io nginx -y
}
echo "installing dependencies is completed"

required_restart() {
  echo "restarting the services"
  sudo chown $USER /var/run/docker.sock
  sudo systemctl enable docker
  sudo systemctl enable nginx
  sudo systemctl restart docker
}

deploy(){
  docker build -t notes-app .
  docker run -d -p 8000:8000 notes-app:latest
}

echo "deploying the app started"

if ! clone_repo; then
  echo "unable to clone the repo because the repo is already cloned"
  cd django-notes-app
fi

if ! install_requirements; then
  echo "unable to install dependencies"
  exit 1
fi

if ! required_restart; then
  echo "unable to restart the services"
  exit 1
fi

deploy

echo "deploying the app completed"

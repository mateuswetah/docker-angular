# Docker Angular

A Docker repository for open-source development in Angular. Specify your desired Angular CLI version in _Dockerfile_.

To run this:
```
$ git clone https://github.com/mateuswetah/docker-angular.git
$ cd docker-angular
$ docker build -t angular-image.
$ docker run -td --name angular -h angular -p 4200:4200 -v /home/<YOUR_WORKING_DIRECTORY_PATH>/docker-angular:/home/node angular-image /bin/bash
$ docker exec -it angular /bin/bash
```
Notice that _/docker-angular_ it's just a suggestion for directory to be mapped. The /node folder will exist as the _node_ docker image creates this user, and it's where you should work.

Inside the container, don't forget to change to your user in case you want to edit files from an editor in Host:

```
su node
cd /home/node

```

This will leave you in the folder mapped during `run` command.
Once you're inside your docker container and folder, you can follow usual workflow to an Angular project:
```
git clone *some_angular_repository* OR ng new myProject
cd myProject
npm install
ng serve --host 0.0.0.0 OR ng build --dev.
```

If you plan to run `ng serve`, remember to have your port 4200 free.

Credits to [node official repository](https://hub.docker.com/_/node/), for leaving most of the hard work done here.


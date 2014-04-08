fabric8-java-docker
=====================

This project builds a [docker](http://docker.io/) container for running Java based micro services.

Try it out
----------

If you have docker installed you should be able to try it out via

    docker run -p 8080 -d -t fabric8/fabric8-java

You can pass in various [environment variables](http://fabric8.io/#/site/book/doc/index.md?chapter=environmentVariables_md) to customise how a fabric is created or joined; or specify stand alone mode if required etc.

e.g. to startup 5 Fabric8 instances; each will get their own IP address etc:

    docker run -d -p 8080 fabric8/fabric8-java
    docker run -d -p 8080 fabric8/fabric8-java
    docker run -d -p 8080 fabric8/fabric8-java
    docker run -d -p 8080 fabric8/fabric8-java
    docker run -d -p 8080 fabric8/fabric8-java
    
You can then run **docker attach** or **docker logs** to get the logs at any time.

Run  **docker ps** to see all the running containers or **docker inspect $containerID** to view the IP address and details of a container


Building the docker container locally
-------------------------------------

We have a Docker Index trusted build setup to automatically rebuild the fabric8/fabric8-java container whenever the [Dockerfile](https://github.com/fabric8io/fabric8-docker/blob/master/Dockerfile) is updated, so you shouldn't have to rebuild it locally. But if you want to, here's now to do it...

Once you have [installed docker](https://www.docker.io/gettingstarted/#h_installation) you should be able to create the containers via the following:

    git clone git@github.com:fabric8io/fabric8-java-docker.git
    cd fabric8-java-docker
    ./build.sh

The fabric8 container should then build.

Experimenting
-------------

To spin up a shell in one of the containers try:

    docker run -p 8080 -i -t fabric8:fabric8-java /bin/bash

You can then noodle around the container and run stuff & look at files etc.


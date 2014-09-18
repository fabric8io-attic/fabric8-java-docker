fabric8-java-docker
=====================

This project builds a [docker](http://docker.io/) container which is used by [fabric8](http://fabric8.io/) to create Java based [Micro Services](http://fabric8.io/gitbook/microServices.html) using the [Java Container](http://fabric8.io/gitbook/javaContainer.html).

Its not intended for this container image to be usable by itself; its used by the [Java Container](http://fabric8.io/gitbook/javaContainer.html) to create a new docker container image for each micro service as you create a container for the profile for a java container using the [docker plugin](http://fabric8.io/gitbook/docker.html)

Try it out
----------

* this [demo](http://macstrac.blogspot.co.uk/2014/05/micro-services-with-fabric8.html) shows how to get started using a [Java Container](http://fabric8.io/gitbook/javaContainer.html) with fabric8
* check out how to use [docker with fabric8](http://fabric8.io/gitbook/docker.html); in particularly you need to:
  * ensure docker containers can see the host running the fabric; e.g. using localip or manualip resolution (as on OS X and Windows often docker containers cannot see your local host machines host name)
  * add the docker profile to the root container
* if you use the fabric8 console or command line to create a docker container for the java container profile; it will create a new docker image on the fly based on **fabric8/fabric8-java** but also copying any configuration files or jars into the lib folder etc.


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

    docker run -P -i -t fabric8/fabric8-java /bin/bash

You can then noodle around the container and run stuff & look at files etc.


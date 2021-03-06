# docker-ruby

__Different Ruby versions installed in Docker Containers.__

-----

  * __sys42/docker-ruby22__:
  
  [![](https://badge.imagelayers.io/sys42/docker-ruby22:latest.svg)](https://imagelayers.io/?images=sys42/docker-ruby22:latest 'Get your own badge on imagelayers.io')
  * __sys42/docker-ruby21:__
  
  [![](https://badge.imagelayers.io/sys42/docker-ruby21:latest.svg)](https://imagelayers.io/?images=sys42/docker-ruby21:latest 'Get your own badge on imagelayers.io')
  * __sys42/docker-ruby20:__
  
  [![](https://badge.imagelayers.io/sys42/docker-ruby20:latest.svg)](https://imagelayers.io/?images=sys42/docker-ruby20:latest 'Get your own badge on imagelayers.io')
  * __sys42/docker-ruby191:__
  
  [![](https://badge.imagelayers.io/sys42/docker-ruby191:latest.svg)](https://imagelayers.io/?images=sys42/docker-ruby191:latest 'Get your own badge on imagelayers.io')
  * __sys42/docker-rubymulti:__
  
  [![](https://badge.imagelayers.io/sys42/docker-rubymulti:latest.svg)](https://imagelayers.io/?images=sys42/docker-rubymulti:latest 'Get your own badge on imagelayers.io')

--------

Since many Ruby Gems require native compilation this image is based on [sys42/docker-build-essentials](https://github.com/sys42/docker-build-essentials).

This repository is used to build the following images:

  * __sys42/docker-ruby22__ (Ruby 2.2 embedded)
  * __sys42/docker-ruby21__ (Ruby 2.1 embedded)
  * __sys42/docker-ruby20__ (Ruby 2.1 embedded)
  * __sys42/docker-ruby191__ (Ruby 1.9.1 embedded)
  * __sys42/docker-rubymulti__ (Ruby 1.9.1, 2.0, 2.1 and 2.2 embedded)
   
If you need any special combination of the above versions in a single container then copy Dockerfile.rubymulti and adapt it to your needs.

**Why is the directory structure of this repository so strange?**

First of all: automated builds on the Docker Hub require the Dockerfile to be named `Dockerfile`. If you want to setup multiple builds from a single github repository you need subfolders for the different builds.

Well, that's not so bad, you think. Me, too. But then comes Docker. When you want to include files in a build with the ADD command in a Dockerfile, these files must be in the same directory or below it. You cannot use relative paths like `../adir` and links won't be followed, too. So the only way around both problems is a (really ugly) deeply nested directory structure.

For this repository the directory structure looks like this:

```
ruby22/Dockerfile
     |
     |-- ruby21/Dockerfile
              |
              |-- ruby20/Dockerfile
                       |
                       |-- ruby191/Dockerfile
                                 |
                                 |-- rubymulti/Dockerfile
                                             |
                                             |--- install-data/   <--- shared files here
```

What a nasty mess ...


For generic usage informations please examine [the README file of the base image](https://github.com/sys42/docker-base).

----

**origin notice:**

Most of the scripts are taken from [the Phusion passenger repository](https://github.com/phusion/passenger-docker). I have modified them to work with the automatic build system of [Docker Hub](https://hub.docker.com/).

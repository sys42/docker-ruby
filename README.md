# docker-ruby22

[![](https://badge.imagelayers.io/sys42/docker-ruby22:latest.svg)](https://imagelayers.io/?images=sys42/docker-ruby22:latest 'Get your own badge on imagelayers.io')
[![](https://badge.imagelayers.io/sys42/docker-ruby21:latest.svg)](https://imagelayers.io/?images=sys42/docker-ruby21:latest 'Get your own badge on imagelayers.io')
[![](https://badge.imagelayers.io/sys42/docker-ruby20:latest.svg)](https://imagelayers.io/?images=sys42/docker-ruby20:latest 'Get your own badge on imagelayers.io')
[![](https://badge.imagelayers.io/sys42/docker-ruby191:latest.svg)](https://imagelayers.io/?images=sys42/docker-ruby191:latest 'Get your own badge on imagelayers.io')
[![](https://badge.imagelayers.io/sys42/docker-rubymulti:latest.svg)](https://imagelayers.io/?images=sys42/docker-rubymulti:latest 'Get your own badge on imagelayers.io')

Ruby installed in a Docker Container.

Since many Ruby Gems require native compilation this image is based on [sys42/docker-build-essentials](https://github.com/sys42/docker-build-essentials).

This repository is used to build the following images:

  * __sys42/docker-ruby22__ (Ruby 2.2 embedded)
  * __sys42/docker-ruby21__ (Ruby 2.1 embedded)
  * __sys42/docker-ruby20__ (Ruby 2.1 embedded)
  * __sys42/docker-ruby191__ (Ruby 1.9.1 embedded)
  * __sys42/rubymulti__ (Ruby 1.9.1, 2.0, 2.1 and 2.2 embedded)

For generic usage informations please examine [the README file of the base image](https://github.com/sys42/docker-base).

----

**origin notice:**

Most of the scripts are taken from [the Phusion passenger repository](https://github.com/phusion/passenger-docker). I have modified them to work with the automatic build system of [Docker Hub](https://hub.docker.com/).

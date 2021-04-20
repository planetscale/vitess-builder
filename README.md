vitess-builder
==============

This is a small development/testing helper for Vitess.  It starts a docker-in-docker "server" container, and builds a "client" container image.  In the client container, it clones the Vitess repo at a given refspec (default `master`), builds `vitess/lite`, and creates a cluster using `docker-compose.beginners.yml`

tl;dr
=====
```sh
docker build -t vitess-builder . && ./runall master
```


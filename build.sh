#!/bin/sh

if [ $# -lt 1 ]; then
   echo "USAGE: $0 VARIANT(s)"
   echo
   echo "  VARIANT(s) = one or more of the following targets:"
   echo
   echo "    ruby191    - image containing Ruby 1.9.1"
   echo "    ruby20     - image containing Ruby 2.0"
   echo "    ruby21     - image containing Ruby 2.1"
   echo "    ruby22     - image containing Ruby 2.2"
   echo "    rubymulti  - image containing all listed versions"
   echo "    all        - special targets to build all listed images"
  exit 1
fi

TARGET_ALL="ruby191 ruby20 ruby21 ruby22 rubymulti"
TARGET_LIST=

for target in $@; do
  echo "checking target [$target] ..."
  if [ "$target" = "all" ]; then
    TARGET_LIST=$TARGET_ALL
    break
  fi
  if [ -L "link_$target" ]; then
    TARGET_LIST="$TARGET_LIST $target"
  else
    echo "[WARNING] skipping invalid target $target ..."
  fi
done

VERSION=$(cat VERSION)

for target in $TARGET_LIST; do
  REPO_AND_VERSION="sys42/docker-$target:$VERSION"

  cd -P "link_$target"
  echo "building [$REPO_AND_VERSION] at [$(pwd)]..."
  docker build -t $REPO_AND_VERSION  .
  cd -
done


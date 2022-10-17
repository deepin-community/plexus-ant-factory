#!/bin/sh -e

VERSION=$2
TAR=../plexus-ant-factory_$VERSION.orig.tar.gz
DIR=plexus-ant-factory-$VERSION
TAG=$(echo "plexus-ant-factory-$VERSION" | sed 's,~\(alpha\|beta\),-\1-,')

svn export http://svn.codehaus.org/plexus/tags/$TAG/ $DIR
tar -c -z -f $TAR $DIR
rm -rf $DIR ../$TAG

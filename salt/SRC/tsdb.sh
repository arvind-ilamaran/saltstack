#!/bin/sh

wget -nv http://192.100.30.29/tsdb/tsdb_1.1.tar.gz
if [ $? != 0 ] ; then
echo "Fetching of tsdb file failed."
exit 1
fi

R CMD INSTALL tsdb_1.1.tar.gz
if [ $? != 0 ] ; then
echo "R package installation failed."
exit 1
fi

mv tsdb_1.1.tar.gz tsdb_`date +%Y_%m_%d`.tar.gz
if [ $? != 0 ] ; then
echo "TSDB tarball not found. "
exit 1
fi

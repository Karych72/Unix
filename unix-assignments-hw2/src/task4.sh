#!/bin/bash

sed -i -e 's/^/<tr><td>/g' $1
sed -i -e 's/[,]/<\/td><td>/g' $1
sed -i -e 's/$/<\/tr><\/td>/g' $1
sed -i -e '1 i\<html><table border="1"><tr><th>Name</th><th>Surname</th><th>Number</th></tr>' $1
sed -i -e '$ a\</table></html>' $1


#!/bin/bash

# pulls latest github branch
# assumes ssh key is installed on github
# variables
localBranch=/james/github/bash-scripts
remotebranch=master
log=$localBranch/logs/`basename $0`
HOST='hostname'

if [ -d $localBranch ] ; then 

# pull latest copy
`git pull origin master`

# add files that have been changed
`git add $localBranch/*`

# commit
`git commit -m "automated commit from $HOST"`

# push
`git push origin master`


fi











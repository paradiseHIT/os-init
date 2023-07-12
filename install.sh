#!/bin/bash
WORK_DIR=`dirname $0`

PWD=`cd $WORK_DIR; pwd`

test -e ${HOME}/.vim
if [ $? == 0 ]
then
  rm -fr ${HOME}/.vim.bak
  cp -r ${HOME}/.vim ${HOME}/.vim.bak
else
  mkdir ${HOME}/.vim
fi

cp -r $PWD/.vim ${HOME}/
cp -f .vimrc ${HOME}/
cp -f .gitconfig ${HOME}/

#! /bin/sh
#! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#! Tool for building extended Retro images quickly
#! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
if [ $1 ]
then
  if [ $1 == "--add" ]
  then
    for var in $2 $3 $4 $5 $6 $7 $8 $9
    do
      cat $var >>bootstrap.retro
    done
    echo "save bye" >>bootstrap.retro
    retro --with bootstrap.retro
    rm -f bootstrap.retro
  fi
  if [ $1 == "--clean" ]
  then
    rm -f bootstrap.retro
  fi
  if [ $1 == "--info" ]
  then
    for var in $2 $3 $4 $5 $6 $7 $8 $9
    do
      echo $var
      grep License $var | sed 's/^(//' | sed 's/)//'
      grep Copyright $var | sed 's/^(//' | sed 's/)//'
      grep Descr $var | sed 's/^(//' | sed 's/)//'
      grep Deps $var | sed 's/^(//' | sed 's/)//'
      grep GPL $var >/dev/null
      if [ "$?" -eq "0" ]; then
        echo "   WARNING: Use of this module may require you to license your code"
        echo "   WARNING: under the GPL license if you choose to distribute."
      fi
      echo " "
    done
  fi
else
  echo "-------------------------------------------------------------"
  echo "libtool.sh - tool for adding extensions to a Retro image"
  echo " "
  echo "./libtool.sh --add file1 file2 ... file8"
  echo "Load files into a Retro image. Can accept up to 8 filenames."
  echo " "
  echo "./libtool.sh --clean"
  echo "Remove any temporary files created"
  echo " "
  echo "./libtool --info file1 file2 ... file8"
  echo "See a summary of extensions, including copyright and license"
  echo "-------------------------------------------------------------"
fi

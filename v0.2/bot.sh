#!/system/bin/sh

# packages variables for installation
cm1=git;cm2=wget;cm3=curl;cm4=openssh
cm5=wget;cm6=php;cm7=proot;cm8=htop
cm9=python3;cm10=perl

# ordinary variables
plate="**************************************"

# python libraries variables for installation
pyl1=colorama
pyl2=rich
pyl3=termcolor
pyl4=python-pip

# files variables for installation
ip_tracer="git clone https://github.com/RajkuMrdusad/IP-Tracer.git"
cupp="git clone https://github.com/Mebus/cupp.git"
zphisher="git clone https://github.com/htr-tech/zphisher.git"
pwgxtractor="git clone https://github.com/bartwel27/PWGXtractor"
  # file directories names to expect
     ip_t="IP-Tracer"
     c_pp="cupp"
     z_p="zphisher"
     pwg="PWGXtractor"

# variable database
pkgdb="$cm1 $cm2 $cm3 $cm4 $cm5 $cm6 $cm7 $cm8 $cm9 $cm10"
pylibdb="$pyl1 $pyl2 $pyl3 $pyl4"
fdb="$ip_t $c_pp $z_p $pwg"

# anti error variables
forpkg="i can help run \"pkg installed $pkgdb\" to install packages manualy."
forpylib="i can help run \"pip install $pylibdb\" to install python libraries manualy."

# start installation

# installation of packages
# check if the following pkg's are installed
if ! command -v $pkgdb;then
  echo "The packages >> $pkgdb are installed"
  echo "[SYSTEM founds $? errors]"
else
  echo "The packages >> $pkgdb are not installed"
  
    # find error code in execution
     if [ $? -ne 0 ];then
       echo "[SYSTEM founds $? errors]"
       echo "$plate"
       echo "Installing required packages..."
       echo "$plate"
       pkg install $pkgdb
     else
       echo "[SYSTEM founds $? errors]"
     fi
    # find error code in execution

fi


# check for pkg's again
        if command -v $pkgdb;then
          echo ">>>>>> packages installed <<<<<<"
          #pkg files $pkgdb
        else
          echo ">>>>>> packages not installed <<<<<<"
          
        fi
      # check for pkg's again
        
  # check python libraries
    if ! pip show -V $pylibdb;then
       pip show
       echo ">>>>>> already installed <<<<<<"
       echo ">>>>>> It's your lucky day friend <<<<<<"
    else
       echo ">>>>>> not installed <<<<<<"
       echo "$plate"
       echo "Installing required python libraries..."
       echo "$plate"
       pip install $pylibdb
       pip show -V $pylibdb
       echo ">>>>>> Succesfully installed <<<<<<"
     
    fi
  # check python libraries
     # no need to check...
          
            # PYTHON lib
       # check if there was an error in installation
       if [ $? -ne 1 ];then
         echo ">>> During installation $? errors were discovered <<<"
       else
         echo "[SYSTEN founds $? errors]"
         echo ">>>>>> Not your lucky day friend! <<<<<<"
         echo "$plate";echo "$forpylib";echo "$plate"
       fi
       # check if there was an error in installation



# check all requirements before cloning files
if command -v $pkgdb, pip show -V $pylibdb
then
    echo ">>> Everything is installed <<<"

    # remove expected files
     # incase sys has these empty directories
      # delete
    echo "deleting...";rm -rf $fdb

    # and re-clone directories
    $ip_tracer
    $cupp
    $zphisher
    $PWGXtractor
    echo "$plate";echo "During cloning system founds $? errors";echo "$plate"
    echo "=> Done"
else
    echo ">>> Packages: $pkgdb"
    echo ">>> Py libraries: $pylibdb"
    echo "Are not installed, installing..."
    pkg install $pkgdb
    pip install $pylibdb


       # remove expected files
     # incase sys has these empty directories
      # delete
    echo "deleting...";rm -rf $fdb

    # and re-clone directories
    $ip_tracer
    $cupp
    $zphisher
    $PWGXtractor
    echo "$plate";echo "During cloning system founds $? errors";echo "$plate"
    echo "=> Done"

fi

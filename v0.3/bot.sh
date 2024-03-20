#!/system/bin/sh

# loading...
echo "opening @Beebot..."
sleep 4
clear
  
logo3="""

▄▄▄▄· ▄▄▄ .▄▄▄ .    ▄▄▄▄·       ▄▄▄▄▄
▐█ ▀█▪▀▄.▀·▀▄.▀·    ▐█ ▀█▪▪     •██  
▐█▀▀█▄▐▀▀▪▄▐▀▀▪▄    ▐█▀▀█▄ ▄█▀▄  ▐█.▪
██▄▪▐█▐█▄▄▌▐█▄▄▌    ██▄▪▐█▐█▌.▐▌ ▐█▌·
·▀▀▀▀  ▀▀▀  ▀▀▀     ·▀▀▀▀  ▀█▄▀▪ ▀▀▀ 
                      author: mr.nobody
""";echo "$logo3"

plate="************************************************"
echo "$plate"
echo "After Loop opened Note: to exit you use CTRL+C"
echo "$plate";echo ""
echo "ver: 0.1"
echo """                                  
                                           ((O))
____________________________________________/
|......................................... |
|.  >>> Pkg & etc Library installer <<<   .|
|......................................... |
••••••••••••••••••••••••••••••••••••••••••••
|                                          |
+                                          +
"""
sleep 0.1

# selecting an option
echo "[+] Select any option [+]"
select yn in "sh_packages" "py_packages" "apt_install" "git_cloning" "php_server" "wget_cloning" "exit";do
  case $yn in
  
  
  #--------------------------------------------------------------------#
  #------------------PKG-------------------#
  #--------------------------------------------------------------------#
    sh_packages ) echo " +++ while Loop for shell pkgs +++ "
    count=0
    while [ $count -le 1 ];do
      read -p "Write pkg name: " pkgN
      echo "running..."
      sleep 4
      echo """
      *****************************************
      *  pkg install $pkgN                    *
      *****************************************
                 && checking...
      """
      
      # check if package name is avaialble
      if  command -v $pkgN;then
        echo "The package $pkgN is already installed"
         # make error code
           if [ $? -eq 0 ];then
              echo "-(•) system founds $? errors."
           else
              echo "-(•) system founds $? errors."
           fi
      else
        echo "The package $pkgN is not installed,installing..."
        
         # make error code
           if [ $? -ne 0 ];then
              echo "-(•) system founds $? errors."
           else
              echo "-(•) system founds $? errors."
           fi
      
        pkg install $pkgN -y
         # check if it has been installed
          if command -v $pkgN;then
              echo ""
              echo "You can check."
              which $pkgN
              echo "the $pkgN is now installed"
              echo ""
              echo "mr.nobody: I got you covered man!";echo ""
          else
              echo ""
              echo "Error: \"$pkgN\" package has not been installed, because it does not exist or( canceled"
          fi
        # check if it has been installed
      
      
      fi
      
    done
      break;;
      #--------------------------------------------------------------------#
      #------------------------PKG--------------------------#
      #--------------------------------------------------------------------#
      
      
      
      
      #--------------------------------------------------------------------#
      #------------------------PIP--------------------------#
      #--------------------------------------------------------------------#
      py_packages ) echo " ~~~ While loop for pip libraries ~~~ "
      count=0
      while [ $count -le 1 ];do
        read -p "Write pip name: " pipN
        echo ""
        echo "running..."
        sleep 4
        echo """
        *****************************************
        *  pip install $pipN                    *
        *****************************************
                 && checking...
        """
        
        # check if pip name is avaialble
        if pip show $pipN;then
        echo "The Library $pipN is already installed"
         # make error code
           if [ $? -eq 0 ];then
              echo "-(•) system founds $? errors."
           else
              echo "-(•) system founds $? errors."
           fi
        else
        echo "The library $pipN is not installed,installing..."
        
         # make error code
           if [ $? -ne 0 ];then
              echo "-(•) system founds $? errors."
           else
              echo "-(•) system founds $? errors."
           fi
      
        pip install $pipN
        
        # check if it has been installed
          if pip show $pipN;then
              echo ""
              echo "You can check."
              echo "the $pipN is now installed"
              echo ""
              echo "mr.nobody: I got you covered man!";echo ""
          else
              echo "Error: ($pipN) package has not been installed, its either it does not exist or canceled"
          fi
        # check if it has been installed
        
        
        fi
        
      done
        break;;
        #--------------------------------------------------------------------#
        #------------------------PIP--------------------------#
        #--------------------------------------------------------------------#
        
        
        
        #--------------------------------------------------------------------#
        #------------------------APT--------------------------#
        #--------------------------------------------------------------------#
      apt_install ) echo " === apt installation === "; 
      
      # before installation check for apt package
      if command -v apt;then
         echo "apt is already installed"
         apt update -y
         apt upgrade
         echo "apt is now updated and upgraded"
      else
         echo "apt is not installed, installing..."
         pkg install apt
         echo "Done! updating && upgrading..."
         apt update -y
         apt upgrade
         echo "apt is now updated and upgraded"
      fi
      break;;
        #--------------------------------------------------------------------#
        #------------------------APT--------------------------#
        #--------------------------------------------------------------------#

        
        
        
        #--------------------------------------------------------------------#
        #------------------------CLONE--------------------------#
        #--------------------------------------------------------------------#
      git_cloning )
        clear
        echo "$logo3"
        echo """
          ================================
          => git respotory clonning Bot <=
          ================================
        """
        echo "checking for git command..."
        sleep 2
        # is git command available
        if command -v git;then
          echo "git command is available"
        else
          echo "git command is unavailable"
          echo "installing git..."
          pkg install git -y
        fi
        
        # start loop
        count=0
        while [ $count -le 1 ];do
          plate=">>>>>>>>>>>>>>>>>>>••<<<<<<<<<<<<<<<<<<<<<"
          echo ""
          echo "$plate"
          echo ">>> no password is required to clone. <<<<"
          echo "$plate"
          
          read -p "git user name >> " Uname
          read -p "git respotory file name >> " Rname
          
          echo "git clone https://github.com/$Uname/$Rname"
          git clone https://github.com/$Uname/$Rname
          echo ""
          # check if file has been cloned
          if [ -d $Rname ]
          then
             echo "\"$Rname\" is in: $(pwd)."
          else
             echo "$Rname has not been cloned, try again with correct input."
          fi
          
        done
        
      break;;
        #--------------------------------------------------------------------#
        #------------------------CLONE--------------------------#
        #--------------------------------------------------------------------#
          
          
          #--------------------------------------------------------------------#
        #------------------------WGET--------------------------#
        #--------------------------------------------------------------------#
      wget_cloning )
        clear
        echo "$logo3"
        echo """
          ================================
          => wget respotory clonning Bot <=
          ================================
        """
        echo "checking for wget command..."
        sleep 2
        # is wger command available
        if command -v wget;then
          echo "wget command is available"
        else
          echo "git command is unavailable"
          echo "installing wget..."
          pkg install wget -y
        fi
          
          read -p "wget username: " wgUname
          read -p "wget file or path: " wgFname
          
          echo "wget https://raw.githubusercontent.com/$wgUname/$wgFname"
          echo "posting...";sleep 3
          # post on this
          wget https://raw.githubusercontent.com/$wgUname/$wgFname
          
      break;;
        #--------------------------------------------------------------------#
        #------------------------WGET--------------------------#
        #--------------------------------------------------------------------#
          
          
          
          #--------------------------------------------------------------------#
          #------------------------PHP STARTER--------------------------#
          #--------------------------------------------------------------------#
     php_server )
          echo "Opening php...";sleep 0.5
          clear
          echo "$logo3"
          
          # select section
          
          select op in "automated_localhost:" "manual_localhost:" "exit"
          do
            case $op in
            
            # automated
            automated_localhost: )
             echo " ) Welcome to php ( "
           echo "automated localhost:8383"
          
          # check if php is available
           if command -v php;then
             echo "php is already installed."
            # perform action
            read -p "Set path directory: " dir
            cd $dir && php -S localhost:8383
          
           else
             echo "php is not installed, installing..."
             pkg install php
              # after installation
             # check again 
             if command -v php;then
              echo "php has been installed now"
          
            # perfom action
             read -p "Set path directory: " dir
             cd $dir && php -S localhost:8383
          
             else
              echo ""
              echo "php has not been installed still"
               # display posible solution
              echo "run 'pkg install php' manually."
              echo "And re-run me"
              fi
            # perfom action
           fi
          # check if php is installed
            break;;
            # automated
            
            # manual
            manual_localhost: )
            echo " ) Welcome to php ( "
            echo "manual localhost: [yourport]"
            
            
            # check if php is available
           if command -v php;then
             echo "php is already installed."
            # perform action
            read -p "Local Port: " p
            read -p "Set path directory: " dir
            cd $dir && php -S localhost:$p
            
           else
             echo "php is not installed, installing..."
             pkg install php
              # after installation
             # check again 
             if command -v php;then
              echo "php has been installed now"
          
            # perfom action
            read -p "Local Port: " p
            read -p "Set path directory: " dir
            cd $dir && php -S localhost:$p
          
             else
              echo ""
              echo "php has not been installed still"
               # display posible solution
              echo "run 'pkg install php' manually."
              echo "And re-run me"
              fi
            # perfom action
           fi
          # check if php is installed
            break;;
            # manual
            
            exit ) echo "Abort!"; exit;;
          esac
          done
          # select section
          
          break;;
          #--------------------------------------------------------------------#
          #------------------------PHP STARTER--------------------------#
          #--------------------------------------------------------------------#

          
        
      exit ) echo "Abort!"; exit;;
        
      esac
    done

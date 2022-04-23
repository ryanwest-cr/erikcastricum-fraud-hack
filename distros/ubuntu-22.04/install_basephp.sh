#---------------------------------------------------------------------
# Function: InstallBasePhp Ubuntu 20.04
#    Install Basic php need to run ispconfig
#---------------------------------------------------------------------
InstallBasePhp(){
  echo -n "Installing basic PHP modules... "
  apt_install php7.4-cli php7.4-mysql mcrypt
  echo -e "[${green}DONE${NC}]\n"
}
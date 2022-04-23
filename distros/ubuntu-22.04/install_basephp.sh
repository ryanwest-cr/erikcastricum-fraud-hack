#---------------------------------------------------------------------
# Function: InstallBasePhp Ubuntu 20.04
#    Install Basic php need to run ispconfig
#---------------------------------------------------------------------
InstallBasePhp(){
  echo -n "Installing basic PHP modules... "
  apt_install php8.1-cli php8.1-mysql mcrypt
  echo -e "[${green}DONE${NC}]\n"
}

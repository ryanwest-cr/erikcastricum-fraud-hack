#---------------------------------------------------------------------
# Function: InstallJailkit
#    Install Jailkit
#---------------------------------------------------------------------

#Program Versions
InstallJailkit() {
  echo -n "Installing Jailkit... "
  apt_install jailkit
  echo -e "[${green}DONE${NC}]\n"
}


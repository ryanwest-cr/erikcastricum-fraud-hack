#---------------------------------------------------------------------
# Function: InstallWebmail
#    Install the chosen webmail client. Squirrelmail or Roundcube
#---------------------------------------------------------------------
InstallWebmail() {
  if [ "$CFG_WEBMAIL" == "roundcube" ]; then
	echo -n "Installing webmail client ($CFG_WEBMAIL)... "
	echo "==========================================================================================="
	echo "Attention: When asked 'Configure database for roundcube with dbconfig-common?' select 'Yes'"
	echo "Attention: When asked 'MySQL application password for roundcube:' donot set password!"
	echo "Just press <enter> here"
	echo "Due to a bug in dbconfig-common, this can't be automated."
	echo "==========================================================================================="
	echo "Press ENTER to continue... "
	read DUMMY
	echo -n "Installing Roundcube... "
	apt-get -y install roundcube roundcube-core roundcube-mysql roundcube-plugins javascript-common libjs-jquery-mousewheel php-net-sieve tinymce
	sed -i "s|^\(\$config\['default_host'\] =\).*$|\1 \'localhost\';|" /etc/roundcube/config.inc.php
        if [ $CFG_WEBSERVER == "apache" ]; then
              echo "Alias /webmail /var/lib/roundcube" >> /etc/apache2/conf-enabled/roundcube.conf
              service apache2 reload
        fi
  fi
}


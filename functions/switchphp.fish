function switchphp --argument phpOld phpNew
	sudo a2dismod $phpOld
	sudo a2enmod $phpNew
	sudo update-alternatives --set php /usr/bin/$phpNew
	sudo systemctl restart apache2
end

function wordpress() {
	cd ~/WordPress
}

function wpdebug() {
	pwd=$PWD
	cd ~/WordPress
	wp config set WP_DEBUG $1 --raw
	cd "$pwd"
}

function plug() {
        ln -s "$PWD/$1" "/home/kylejohnson/WordPress/wp-content/plugins/$1"
}

function switchphp() {
        sudo a2dismod php$1
        sudo a2enmod php$2
        sudo update-alternatives --set php /usr/bin/php$2
        sudo service apache2 restart
        php -v
}

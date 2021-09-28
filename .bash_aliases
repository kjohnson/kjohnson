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

function php8() {
        sudo a2dismod php5.6
        sudo a2dismod php7.4
        sudo a2enmod php8.0
        sudo service apache2 restart
}
function php7() {
        sudo a2dismod php5.6
        sudo a2dismod php8.0
        sudo a2enmod php7.4
        sudo service apache2 restart
}
function php5() {
        sudo a2dismod php7.4
        sudo a2dismod php8.0
        sudo a2enmod php5.6
        sudo service apache2 restart
}

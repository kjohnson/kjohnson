# Navigation
function code() {
	cd ~/Code
}
function wordpress() {
	cd ~/WordPress
}
function homestead() {
	cd ~/Homestead
}

# WordPress
function wpdebug() {
	pwd=$PWD
	cd ~/WordPress
	wp config set WP_DEBUG $1 --raw
	cd "$pwd"
}
function plug() {
        ln -s "$PWD/$1" "/home/kylejohnson/WordPress/wp-content/plugins/$1"
}

# Homestead (Laravel)
function up() {
	cd ~/Homestead
	vagrant up
}
function down() {
	cd ~/Homestead
	vagrant suspend
}

# PHP
function php8() {
        sudo a2dismod php5.6
        sudo a2dismod php7.4
        sudo a2enmod php8.0
        sudo service apache2 restart
        sudo update-alternatives --set php /usr/bin/php8.0
}
function php7() {
        sudo a2dismod php5.6
        sudo a2dismod php8.0
        sudo a2enmod php7.4
        sudo service apache2 restart
        sudo update-alternatives --set php /usr/bin/php7.4
}
function php5() {
        sudo a2dismod php7.4
        sudo a2dismod php8.0
        sudo a2enmod php5.6
        sudo service apache2 restart
        sudo update-alternatives --set php /usr/bin/php5.6
}

function phpv() {
	 sudo apt install php$1-cli php$1-curl php$1-mbstring php$1-mcrypt php$1-xml php$1-zip
}

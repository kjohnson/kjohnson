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

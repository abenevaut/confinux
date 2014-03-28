if [ -f /etc/bashrc ]; then
	# --> Read /etc/bashrc, if present.
	. /etc/bashrc
fi

if [ -f ~/confinux/config/bashrc ]; then
	# --> Read ~/confinux/config/bashrc, if present.
	. ~/confinux/config/bashrc
fi

# EOF

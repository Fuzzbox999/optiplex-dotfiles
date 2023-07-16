#!/bin/sh

startmyx() {
	read -p "Do you want to start the graphical user interface (y/n) ?" -r choice
	case "$choice" in
		y|Y )
			startx
			return 0
			;;
		n|N )
			echo ""
			echo  "Where there is a shell, there is a way..."
			return 0
			;;
		* )
			echo "An answer is required..."
			return 1
			;;
	esac
}

until startmyx; do : ; done

		

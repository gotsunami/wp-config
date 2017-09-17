function wpconfig {
 ./wp-config current 2> /dev/null > /dev/null
 if [ $? -eq 0 ]; then
     echo "["`./wp-config current 2> /dev/null`"] ";
 fi
}

PS1='(\u@\h `wpconfig`\!'

function wpenv {
 ./wp-env current 2> /dev/null > /dev/null
 if [ $? -eq 0 ]; then
     echo "["`./wp-env current 2> /dev/null`"] ";
 fi
}

PS1='(\u@\h `wpenv`\!'

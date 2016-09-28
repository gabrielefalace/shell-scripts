#/bin/bash

for d in */ ; do
    cd "$d"
    OUTPUT="$(git branch | grep '*')"
    if [ "$OUTPUT" == "* master" ];
    then
        # better check if working directory is actually clean 
        git pull > /dev/null
        echo -e "\033[1;32m ✔ \033[0m $d"
    else
        echo -e "\033[1;31m ✘ \033[0m $d \033[1;31m (not master) \033[0m"
    fi
    cd ..
done

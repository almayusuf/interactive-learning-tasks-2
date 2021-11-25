#!/bin/bash

# for numbers in {1..100}
# do
#     echo $numbers
# done 

#Adds list of users
# USERS="
# bob
# lisa
# ben
# tom"

# for users in $USERS
# do 
#     echo "Adding a user $i"
#     useradd $i 2> /dev/null
# done


#Adds list of users
# PACKAGES="
# telnet
# elinks
# wget
# unzip"

# for i in $PACKAGES
# do 
#     echo "Adding a package $i"
#     yum -y install $i 2> /dev/null
# done

# for i in *.csv 
# do 
#     echo $i
#     mv $i  /mnt
# done

for i in *.html
do 
    echo $i
    rm $i $i.backup
done
   
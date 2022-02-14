#!/bin/bash
user_create() {
        echo "To create a new user : "
        read -p "Enter userame: " newuser
        sudo useradd $newuser
        passopenssl rand –base64 14
        userpass=$(openssl rand -base64 8)
        sudo usermod -a -G testers $newuser
        sudo chage -d 0 $newuser
}
user_create
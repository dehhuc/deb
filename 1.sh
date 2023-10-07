#!/bin/bash

# Выделение цветом сообщений
TEXT_RESET='\e[0m'
TEXT_YELLOW='\e[0;33m'
TEXT_RED_B='\e[1;31m'

# 1. Обновляем индексы пакетов с репозитария
echo -e $TEXT_YELLOW
echo 'Обновляем индексы пакетов с репозитария'
echo -e $TEXT_RESET
sudo apt-get -q -y update

# 2. Установка dpkg-dev devscripts equivs software-properties-common
echo -e $TEXT_YELLOW
echo 'Установка пакетов: dpkg-dev devscripts equivs software-properties-common'
echo -e $TEXT_RESET
sudo apt-get -q -y install dpkg-dev devscripts equivs software-properties-common

# 3. Добавляем репозиторий bullseye
echo -e $TEXT_YELLOW
echo 'Добавляем репозиторий bullseye в систему...'
echo -e $TEXT_RESET
sudo add-apt-repository -y -s -S 'deb http://mirror.yandex.ru/debian/ bullseye main'

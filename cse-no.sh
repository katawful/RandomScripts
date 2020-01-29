#!/bin/bash
cd "/run/media/SSD/SteamLibrary/steamapps/common/Oblivion/Data/OBSE/Plugins/" # working directory
file="/run/media/SSD/SteamLibrary/steamapps/common/Oblivion/Data/OBSE/Plugins/game.txt" # file to read
if [ ! -f "$file" ] # checks if file doesn't exist
then
    mv "/run/media/SSD/SteamLibrary/steamapps/common/Oblivion/Data/OBSE/Plugins/" "/run/media/SSD/SteamLibrary/steamapps/common/Oblivion/Data/OBSE/CS/" # move CSE directory out
    mv "/run/media/SSD/SteamLibrary/steamapps/common/Oblivion/Data/OBSE/Game/Plugins/" "/run/media/SSD/SteamLibrary/steamapps/common/Oblivion/Data/OBSE/" # move game directory in 
    echo "Game plugins successfully moved" # return files to game
fi
cd "/run/media/SSD/SteamLibrary/steamapps/common/Oblivion/" # ENB working directory
enb="/run/media/SSD/SteamLibrary/steamapps/common/Oblivion/d3d9.dll" # ENB file
if [ ! -f "$enb" ] # checks if ENB is diabled
then
    mv "/run/media/SSD/SteamLibrary/steamapps/common/Oblivion/d3d9-cse.cse" "/run/media/SSD/SteamLibrary/steamapps/common/Oblivion/d3d9.dll" # enable ENB
    echo "ENB successfully enabled"
fi
if [ -f "$file" ] && [ -f "$enb" ] # checks if both files exist
then
    echo "Game mode enabled" # check if files are proper
    cd $HOME
fi

#!/bin/bash
sudo wget https://github.com/compujuckel/AssettoServer/releases/download/v0.0.54/assetto-server-linux-x64.tar.gz
sudo tar -xvf assetto-server-linux-x64.tar.gz
sudo rm assetto-server-linux-x64.tar.gz
sudo git clone https://github.com/MrPaulon/FastLane
cd FastLane
sudo rm install-base.sh
read -p "[t]=TrackDay [c]=Championship  [f]=FreeRoom  [h]=hillclimb: " choix
if [ $choix == t ]
then
    sudo rm FR\ -\ Fast\ lane\ -\ Championship.tar
    sudo rm FR\ -\ Fast\ lane\ -\ FreeRoom\ SRP.tar
    sudo rm FR\ -\ Fast\ lane\ -\ Hillclimb.tar
    sudo tar -xvf FR\ -\ Fast\ lane\ -\ TrackDay.tar.gz
    sudo rm FR\ -\ Fast\ lane\ -\ TrackDay.tar
elif [ $choix == f ]
then
    sudo rm FR\ -\ Fast\ lane\ -\ Championship.tar
    sudo rm FR\ -\ Fast\ lane\ -\ TrackDay.tar.gz
    sudo rm FR\ -\ Fast\ lane\ -\ Hillclimb.tar
    sudo tar -xvf FR\ -\ Fast\ lane\ -\ FreeRoom\ SRP.tar
    sudo rm FR\ -\ Fast\ lane\ -\ FreeRoom\ SRP.tar
elif [ $choix == h ]
then
    sudo rm FR\ -\ Fast\ lane\ -\ Championship.tar
    sudo rm FR\ -\ Fast\ lane\ -\ TrackDay.tar.gz
    sudo rm FR\ -\ Fast\ lane\ -\ FreeRoom\ SRP.tar
    sudo tar -xvf FR\ -\ Fast\ lane\ -\ Hillclimb.tar
    sudo rm FR\ -\ Fast\ lane\ -\ Hillclimb.tar
else
    sudo rm FR\ -\ Fast\ lane\ -\ TrackDay.tar.gz
    sudo rm FR\ -\ Fast\ lane\ -\ FreeRoom\ SRP.tar
    sudo rm FR\ -\ Fast\ lane\ -\ Hillclimb.tar
    sudo tar -xvf FR\ -\ Fast\ lane\ -\ Championship.tar
    sudo rm FR\ -\ Fast\ lane\ -\ Championship.tar
fi
sudo mv * ./..
cd ..
sudo rm -R FastLane

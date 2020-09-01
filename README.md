# gmu-vpn-slicer

this is an implementation of https://github.com/dlenski/vpn-slice for the george mason university VPN

## Usage

This should allow you to connect to masons servers, (Zeus, mason.gmu.edu) without routing all of your network through their vpn.

Personally i use this on raspberry pi to ssh jump into zeus without having the mason VPN installed on each of my devices.

## Install

> For any help please join masonlug.slack.com and i'll be happy to assist

1. Install the [Open Connect Client](https://www.infradead.org/openconnect/) From your package manager.

2. Install the [VPN Slicer](https://github.com/dlenski/vpn-slice) And be sure to run the [self test](https://github.com/dlenski/vpn-slice#first-steps)

3. Clone this repo

4. In `vpn-slicer.service` write in the _absolute_ path of the repository location on the line `WorkingDirectory=`

Example: `WorkingDirectory=/home/zosman/gmu-vpn-slicer/`

5. In `vpn-slicer.sh` put your NETID in the `VPN_USER` Paramater.

Example: `VPN_USER=zosman`

> Please note if you are faculty you will have to change the `TYPE` Paramater to `GENERAL` (Or whatever you use when connecting to the VPN normally)

6. Last step! You made it!

This will link your service to your systems systemd services

`ln -s /etc/systemd/system/vpn-slicer.service /path/to/vpn-slicer.service`

Reload your systemd dameon

`sudo systemctl daemon-reload`

Enable your new service

`sudo systemctl enable vpn-slicer`

Start your new service

`sudo systemctl start vpn-slicer`

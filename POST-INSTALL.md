
## POST-INSTALLATION NECESSITIES

1. install the latest NVIDIA driver (if you need it)
  a. $ apt --purge remove nvidia-*
  b. download the latest Linux driver from the website (https://www.nvidia.com/en-in/drivers/details/254271/)
  c. install the driver
  d. import the driver's signature into MOK using mokutils:
    $ mokutils --import /usr/share/nvidia/nvidia-modsign-crt-XXXXXXXXXX.der
  e. restart and follow the onscreen MOK prompts to authorize the certificate and add it to MOK

2. Configure Gnome
  a. install Gnome extensions
    1. Dash to Dock (https://extensions.gnome.org/extension/307/dash-to-dock/)
      a. open Extensions > Dash to Dock, set Appearance > Opacity to 0% or 50%
  b. (optional) change wallpaper

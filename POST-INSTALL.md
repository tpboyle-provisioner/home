
## POST-INSTALLATION NECESSITIES

1. install and configure the latest NVIDIA driver (if you need it)
  a. install the driver
    pre: install pkg-config, libglvnd-dev
    1. $ apt --purge remove nvidia-*
    2. download the latest Linux driver from the website (https://www.nvidia.com/en-in/drivers/details/254271/)
    3. install the driver
    4. import the driver's signature into MOK using mokutils:
      $ mokutils --import /usr/share/nvidia/nvidia-modsign-crt-XXXXXXXXXX.der
    5. restart and follow the onscreen MOK prompts to authorize the certificate and add it to MOK
  b. install and configure nvidia-prime to ensure the dedicated GPU is always what's used
    1. $ sudo apt install nvidia-prime
    2. $ sudo prime-select nvidia
    3. check that it worked: $ sudo prime-select query

2. Configure Gnome
  a. install Gnome extensions
    1. Dash to Dock (https://extensions.gnome.org/extension/307/dash-to-dock/)
      a. open Extensions > Dash to Dock, set Appearance > Opacity to 0% or 50%
  b. (optional) change wallpaper

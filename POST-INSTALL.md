
## POST-INSTALLATION NECESSITIES

1. install and configure the latest NVIDIA driver (if you need it)
  a. select the driver
    1. Open Software & Updates > Additional Drivers.
    2. Select the latest driver.
    3. Click 'Apply Changes'.
    4. Possibly reboot.
  b. I think the driver should be automatically trusted by MOK,
       but you may need to run through the mokutils setup for the NVIDIA driver if not.
  b. install and configure nvidia-prime to ensure the dedicated GPU is always what's used
    1. $ sudo apt install nvidia-prime
    2. $ sudo prime-select nvidia
    3. check that it worked: $ sudo prime-select query
  c. add the Wayland fix to the GRUB boot command
    1. $ sudo vim /etc/default/grub
    2. it's either...
        GRUB_CMDLINE_LINUX_DEFAULT="quiet splash nvidia.NVreg_EnableGpuFirmware=0"
      or
        GRUB_CMDLINE_LINUX_DEFAULT="quiet splash nvidia_drm.modeset=1"
    3. $ sudo update-grub
    4. $ sudo reboot now
  c. ensure "performance mode" is enabled in NVIDIA X Server...

2. Configure Gnome
  a. install Gnome extensions
    1. remove Dash to Dock
    2. enable extensions
  b. (optional) change wallpaper

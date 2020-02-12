# backlight_command
Enable backlight command key for i3wm (if xbacklight cannot work)

1. save the backlight.sh into your i3 config directory
2. chmod +x backlight.sh

in your i3 config file set binding key command with:
```
######################## Screen Brightness Controls #############################
# increase brightness
bindsym XF86MonBrightnessUp exec echo "yourpassword" | sudo -S ~/.config/i3/backlight.sh inc 500

# decrease brightness
bindsym XF86MonBrightnessDown exec echo "yourpassword" | sudo -S ~/.config/i3/backlight.sh dec 500
#################################################################################
```

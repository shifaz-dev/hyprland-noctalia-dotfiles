-- Auto-start config
-- if you dont use UWSM add your auto start programs here, otherwise use XDG autostart https://wiki.archlinux.org/title/XDG_Autostart

hl.on("hyprland.start", function ()
    hl.exec_cmd("dbus-update-activation-environment --systemd --all")
    hl.exec_cmd("qs -c noctalia-shell")
    hl.exec_cmd("xhost +SI:localuser:root")
    -- Mark the 2K monitor as primary in XWayland so games (eFootball etc.) pick it and offer 2560x1440
    hl.exec_cmd("sh -c 'sleep 2; xrandr --output DP-1 --primary'")
end)

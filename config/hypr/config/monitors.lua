-- Monitor wiki https://wiki.hypr.land/Configuring/Basics/Monitors/

hl.monitor({
    output    = "DP-1",
    mode      = "2560x1440@120",
    position  = "0x0",
    scale     = "auto",
})

hl.monitor({
    output    = "HDMI-A-1",
    mode      = "1920x1080@100",
    position  = "2560x0",
    scale     = "auto",
})

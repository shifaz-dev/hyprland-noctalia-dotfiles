-- Look and feel configuration

hl.config({
    general = {
        gaps_in = 2,
        gaps_out = 2,
        border_size = 2,
        extend_border_grab_area = 10,
        resize_on_border = true,
        col = {
            active_border = {
                colors = { NCTL_PRIMARY, NCTL_SURFACE },
                angle = 45,
            },
            inactive_border = NCTL_SURFACE,
        },
    },
    group = {
        col = {
            border_active = NCTL_PRIMARY,
            border_inactive = NCTL_SURFACE,
            border_locked_active = NCTL_SECONDARY,
            border_locked_inactive = NCTL_SURFACE_VARIANT,
        },
        groupbar = {
            col = {
                active = NCTL_PRIMARY,
                inactive = NCTL_SURFACE,
                locked_active = NCTL_SECONDARY,
                locked_inactive = NCTL_SURFACE_VARIANT,
            },
        },
    },
    decoration = {
        dim_special = 0.3,
        rounding = 5,
        rounding_power = 2,
        active_opacity = 0.85,
        inactive_opacity = 0.75,
        fullscreen_opacity = 1,
        shadow = {
            enabled = true,
            range = 4,
            render_power = 3,
            color = "rgba(1a1a1aee)",
        },
        blur = {
            enabled = true,
            size = 6,
            passes = 3,
            vibrancy = 0.1696,
            special = true,
        },
    },
})

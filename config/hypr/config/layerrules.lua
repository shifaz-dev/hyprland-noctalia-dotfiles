-- Layer rules for blur on Noctalia surfaces

hl.layer_rule({
    name        = "noctalia",
    match       = {
        namespace = "^noctalia-(bar-.+|background|dock-.+|panel|notification|attached-panel|osd)(-.*)?$",
    },
    no_anim     = true,
    ignore_alpha = 0.2,
    blur        = true,
    blur_popups = true,
})

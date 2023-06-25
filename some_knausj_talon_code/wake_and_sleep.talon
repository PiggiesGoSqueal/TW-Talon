# NOT MY CODE.
# FULL CREDIT:
# https://github.com/knausj85/knausj_talon

#defines the commands that sleep/wake Talon
mode: all
-

# Does not do anything. May be for add-ons I don't use currently (as of 6/25/2023).
^(welcome back)+$:
    user.mouse_wake()
    user.history_enable()
    user.talon_mode()
# I think this is for add-ons I currently do not use in TW-Talon as of 6/25/2023.
^sleep all [<phrase>]$:
    user.switcher_hide_running()
    user.history_disable()
    user.homophones_hide()
    user.help_hide()
    user.mouse_sleep()
    speech.disable()
    user.engine_sleep()
^talon sleep [<phrase>]$: speech.disable()
^(talon wake)+$: speech.enable()
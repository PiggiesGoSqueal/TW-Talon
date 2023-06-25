# NOT MY CODE.
# FULL CREDIT:
# https://github.com/knausj85/knausj_talon
mode: all
speech.engine: wav2letter
-
^go to sleep [<phrase>]$: speech.disable()
^(wake up)+$: speech.enable()
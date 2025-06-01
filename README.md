# GenericSafetynetFix
GenericSafetynetFix is a android magisk/kernelsu module that is a basic module spoofing props without interfering with other modules.

How does it work?
It applies a bunch of props:
resetprop -n ro.boot.veritymode "enforcing"
resetprop -n ro.boot.verifiedbootstate "green"
resetprop -n vendor.boot.verifiedbootstate "green"
resetprop -n ro.boot.vbmeta.device_state "locked"
resetprop -n ro.boot.flash.locked "1"
resetprop -n ro.debuggable "0"
resetprop -n ro.secure "1"
resetprop -n ro.adb.secure "1"
resetprop -n ro.build.type "user"
resetprop -n ro.build.tags "release-keys"

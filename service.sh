#!/system/bin/sh

until [ "$(getprop sys.boot_completed)" = "1" ]; do
  sleep 1
done

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
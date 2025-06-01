SKIPMOUNT=false

##########################################################################################
# Permissisons
##########################################################################################

# Magisk will automatically set the correct permissions for most files
ui_print "- Setting permissions"
# Set permissions for service.sh
# set_perm <path> <owner> <group> <permission_in_octal>
# Owner: root (0), Group: root (0), Permissions: rwxr-xr-x (0755)
set_perm $MODPATH/service.sh 0 0 0755

##########################################################################################
# Finalizing
##########################################################################################

ui_print "- Done"
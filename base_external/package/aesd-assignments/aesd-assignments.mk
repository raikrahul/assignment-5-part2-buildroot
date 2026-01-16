
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

# Assignment 5 Part 2: Socket server for QEMU
AESD_ASSIGNMENTS_VERSION = 'abf79d123322208173e6a58ce9724a8160971f5f'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
AESD_ASSIGNMENTS_SITE = 'git@github.com:raikrahul/assignment-5-native-socket.git'
AESD_ASSIGNMENTS_SITE_METHOD = git
AESD_ASSIGNMENTS_GIT_SUBMODULES = YES

# Build aesdsocket from server/ subdirectory
define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/server all
endef

# Install aesdsocket binary and init script
define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/server/aesdsocket $(TARGET_DIR)/usr/bin/
	$(INSTALL) -m 0755 $(@D)/server/aesdsocket-start-stop $(TARGET_DIR)/etc/init.d/S99aesdsocket
endef

$(eval $(generic-package))

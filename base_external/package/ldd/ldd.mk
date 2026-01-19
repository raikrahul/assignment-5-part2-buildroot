
LDD_VERSION = c6e402d2b1af99dfb1f09ff1793b536dede00b27
LDD_SITE = https://github.com/raikrahul/assignment-7-ldd.git
LDD_SITE_METHOD = git
LDD_LICENSE = GPL-2.0
LDD_LICENSE_FILES = LICENSE
LDD_MODULE_SUBDIRS = misc-modules scull

$(eval $(kernel-module))
$(eval $(generic-package))

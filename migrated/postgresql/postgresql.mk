# vim: ft=make ts=4 sw=4 noet
#
# The contents of this file are subject to the Apache 2.0 license you may not 
# use this file except in compliance with the License.
#
# Software distributed under the License is distributed on an "AS IS" basis,
# WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
# for the specific language governing rights and limitations under the
# License.
#
#
#
# Copyright 2015 William BONNET (https://github.com/wbonnet/pg-compile).
# All rights reserved. Use is subject to license terms.
#
# Even if this work is a complete rewrite, it is originally derivated work based 
# upon mGAR build system from OpenCSW project (http://www.opencsw.org).
#
# Copyright 2001 Nick Moffitt: GAR ports system
# Copyright 2006 Cory Omand: Scripts and add-on make modules, except where otherwise noted.
# Copyright 2008 Dagobert Michelsen (OpenCSW): Enhancements to the CSW GAR system
# Copyright 2008-2013 Open Community Software Association: Packaging content
#
#
#
# Contributors list :
#
#    William Bonnet 	wllmbnnt@gmail.com
#
#

# Defines the software name if not set
SOFTWARE_UPSTREAM_NAME = postgresql

# Defines the files to retrieve
SOFTWARE_DIST_FILES     ?= $(SOFTWARE_UPSTREAM_NAME)-$(SOFTWARE_VERSION).tar.bz2
SOFTWARE_CHECKSUM_FILES ?= $(SOFTWARE_UPSTREAM_NAME)-$(SOFTWARE_VERSION).tar.bz2.md5

# Defines the source repository
SOFTWARE_UPSTREAM_SITES ?= $(PG_SITE)/v$(SOFTWARE_VERSION)

# Definition of the build dependencies
# BUILD_DEPENDENCIES_PACKAGES = 
# BUILD_DEPENDENCIES_PACKAGES_DEBIAN =  build-essential libreadline-dev zlib1g-dev flex bison libxml2-dev libxslt-dev libssl-dev

# Argument for configure step
CONFIGURE_ARGS = --with-libxml --with-libxslt --with-openssl

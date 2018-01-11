TOP = .
include $(TOP)/configure/CONFIG

.NOTPARALLEL:

DIRS += configure
DIRS += devIocStats
DIRS += iocAdmin
DIRS += testIocStatsApp
DIRS += iocBoot
# For LCLS
#DIRS += testIocAdminApp

include $(TOP)/configure/RULES_TOP

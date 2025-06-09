TOP = .
include $(TOP)/configure/CONFIG

DIRS += configure
DIRS += devIocStats
DIRS += iocAdmin
DIRS += op
devIocStats_DEPEND_DIRS += configure
iocAdmin_DEPEND_DIRS += configure
ifeq '$(MAKE_TEST_IOC_APP)' 'YES'
DIRS += testIocStatsApp
testIocStatsApp_DEPEND_DIRS += devIocStats
DIRS += iocBoot
iocBoot_DEPEND_DIRS += testIocStatsApp
# For LCLS
#DIRS += testIocAdminApp
endif
include $(TOP)/configure/RULES_TOP

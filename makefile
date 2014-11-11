#
# ================================================================================
# Author:          weiwench(saberwen@hotmail.com)
# Create Time:     2014-11-11 15-18 WEEK_2
# Modify Time:     2014-11-11 15-18 WEEK_2
# File Name:       makefile
# Description:     
#
# ================================================================================
#

# --------------------------------------------------------------------------------
# SET environment {{{ START
# --------------------------------------------------------------------------------
AT    :=# @
RM    := rm --force 
DEBUG := YES
UNITE := NO
# --------------------------------------------------------------------------------
# SET environment END }}}
# --------------------------------------------------------------------------------


# --------------------------------------------------------------------------------
# SET compiler {{{ START
# --------------------------------------------------------------------------------
CROSS_COMPILER_PREFIX := 
CROSS_COMPILER_PREFIX := 
CC                    := $(CROSS_COMPILER_PREFIX)gcc    
CXX                   := $(CROSS_COMPILER_PREFIX)g++
AR                    := $(CROSS_COMPILER_PREFIX)ar     
AS                    := $(CROSS_COMPILER_PREFIX)as     
LD                    := $(CROSS_COMPILER_PREFIX)ld     
CPP                   := $(CROSS_COMPILER_PREFIX)cpp    
NM                    := $(CROSS_COMPILER_PREFIX)nm     
STRIP                 := $(CROSS_COMPILER_PREFIX)strip  
OBJCOPY               := $(CROSS_COMPILER_PREFIX)objcopy
OBJDUMP               := $(CROSS_COMPILER_PREFIX)objdump
# --------------------------------------------------------------------------------
# SET compiler END }}}
# --------------------------------------------------------------------------------


# --------------------------------------------------------------------------------
# SET compiler flags and files {{{ START
# --------------------------------------------------------------------------------
DLFLAGS        := -shared -fPIC
CFLAGS         := 
DEBUG_CFLAGS   := -Wall -O0 -g -rdynamic
RELEASE_CFLAGS := -Wall -O3

# SYSTEM include and libs directories
GLOBAL_INC_DIR := 
GLOBAL_LIB_DIR := 

# PRIVATE include and libs directories
LOCAL_INC_DIR  := ./
LOCAL_LIB_DIR  := ./
# --------------------------------------------------------------------------------
# SET compiler flags and files END }}}
# --------------------------------------------------------------------------------


# --------------------------------------------------------------------------------
# STATEMENTS usually need NOT to be changed {{{ START
# --------------------------------------------------------------------------------
SOURCES_DL   = 
OBJECTS_DL   = $(addsuffix .so,$(addprefix lib,$(basename $(SOURCES_DL))))
OBJECTS_DL_O = $(patsubst %$(suffix $(SOURCES_DL)),%.o,$(SOURCES_DL))

SOURCES_C   = $(filter-out $(SOURCES_DL), $(wildcard *.c $(suffix $(SOURCES_DL))))
OBJECTS     = $(basename $(SOURCES_C))
OBJECTS_O   = $(patsubst %.c,%.o,$(SOURCES_C))
DIRECTORY   = $(shell echo ./*/)
ALL_INC_DIR = $(addprefix -I, $(LOCAL_INC_DIR) $(GLOBAL_INC_DIR))
ALL_LIB_DIR = $(addprefix -L, $(LOCAL_LIB_DIR) $(GLOBAL_LIB_DIR))

ifeq (YES, ${DEBUG})
    CFLAGS += ${DEBUG_CFLAGS}
    DLFLAGS += ${DEBUG_CFLAGS}

else
    CFLAGS += ${RELEASE_CFLAGS}
    DLFLAGS += ${RELEASE_CFLAGS}

endif

ifeq (YES, ${UNITE})
    OBJECTS := main

UNITE_TARGET ?= 
ifneq ("", "${UNITE_TARGET}")
    OBJECTS := ${UNITE_TARGET}
endif

else

endif

# --------------------------------------------------------------------------------
# STATEMENTS usually need NOT to be changed END }}}
# --------------------------------------------------------------------------------

define wwc

@echo ================$@

endef


# --------------------------------------------------------------------------------
# START make {{{ START
# --------------------------------------------------------------------------------
all: _CFG $(OBJECTS)
	@echo "(SOURCES_C) "  $(SOURCES_C) 
	@echo "(SOURCES_DL)"  $(SOURCES_DL)
	@echo "(OBJECTS)   "  $(OBJECTS)
	@echo "(OBJECTS_O) "  $(OBJECTS_O)
	@echo "(OBJECTS_DL) "  $(OBJECTS_DL)
	@echo "(OBJECTS_DL_O) "  $(OBJECTS_DL_O)
	@echo "(OBJECTS_SUFFIX) "  $(suffix $(SOURCES_C))
	$(wwc)



$(OBJECTS): $(OBJECTS_O)
ifeq (YES,${UNITE})
	$(AT)$(CC) $^ -o $@ $(ALL_LIB_DIR) $(ALL_INC_DIR) $(CFLAGS)
else
	$(AT)$(CC) $(patsubst %,%.o,$@) -o $(patsubst %,%,$@) $(ALL_LIB_DIR) $(ALL_INC_DIR) $(CFLAGS)
endif
	$(wwc)


$(OBJECTS_O): $(SOURCES_C)
	$(AT)$(CC) -c $(patsubst %.o,%.c,$@) $(ALL_LIB_DIR) $(ALL_INC_DIR) $(CFLAGS)


$(OBJECTS_DL): $(OBJECTS_DL_O)
	$(AT)$(CXX) -o $@ $^ $(ALL_LIB_DIR) $(ALL_INC_DIR) $(DLFLAGS)

$(OBJECTS_DL_O): $(SOURCES_DL)
	$(AT)$(CXX) -c $(patsubst %.o,%.c,$@) $(ALL_LIB_DIR) $(ALL_INC_DIR) $(DLFLAGS)


strip:
	$(AT)$(STRIP) $(OBJECTS) 


clean:
	$(AT)$(RM) $(OBJECTS) $(OBJECTS_O) $(OBJECTS_DL) $(OBJECTS_DL_O)


# --------------------------------------------------------------------------------
# CONFIG Makefile {{{ START
# --------------------------------------------------------------------------------
_CFG:
ifeq (YES,${DEBUG})
	@echo "[43m++++++++++++++++++++++++++   DEBUG  compile +++++++++++++++++++++++++++[0m"
	@sed -i 's/^\<DEBUG.*:=.*[YESNO]\{1,3\}\>/DEBUG := YES/g' Makefile
else
	@echo "[43m++++++++++++++++++++++++++  RELEASE compile +++++++++++++++++++++++++++[0m"
	@sed -i 's/^\<DEBUG.*:=.*[YESNO]\{1,3\}\>/DEBUG := NO/g' Makefile
endif

ifeq (YES,${UNITE})
	@echo "[43m++++++++++++++++++++++++++   UNITE  compile +++++++++++++++++++++++++++[0m"
	@sed -i 's/^\<UNITE.*:=.*[YESNO]\{1,3\}\>/UNITE := YES/g' Makefile
else
	@echo "[43m++++++++++++++++++++++++++ SEPARATE compile +++++++++++++++++++++++++++[0m"
	@sed -i 's/^\<UNITE.*:=.*[YESNO]\{1,3\}\>/UNITE := NO/g' Makefile
endif

# --------------------------------------------------------------------------------
# CONFIG Makefile END }}}
# --------------------------------------------------------------------------------


# --------------------------------------------------------------------------------
# START make END }}} 
# --------------------------------------------------------------------------------


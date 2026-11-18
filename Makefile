
.SUFFIXES:

ifeq ($(strip $(DEVKITPPC)),)
$(error DEVKITPPC no esta configurado)
endif

include $(DEVKITPPC)/wii_rules

TARGET := counter_strike_wii
BUILD := build
SOURCES := source
DATA := data
INCLUDES :=

CFLAGS := -g -O2 -Wall $(MACHDEP) $(INCLUDE)
LDFLAGS := -g $(MACHDEP)
LIBS := -lwiiuse -lbte -logc -lm
LIBDIRS := $(PORTLIBS)

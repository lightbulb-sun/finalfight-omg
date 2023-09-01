.DELETE_ON_ERROR:

ROM_US = finalfight-us.sfc
ROM_EU = finalfight-eu.sfc
ASM = hack.asm
HACK_US = hack-us.sfc
HACK_EU = hack-eu.sfc
SYM_US = hack-us.sym
SYM_EU = hack-eu.sym

AS = asar
ASFLAGS = --symbols=wla
ASFLAGS_US = $(ASFLAGS) -DUS=1
ASFLAGS_EU = $(ASFLAGS)

all: $(HACK_US) $(HACK_EU)

$(HACK_US): $(ASM)
	cp $(ROM_US) $(HACK_US)
	$(AS) $(ASFLAGS_US) $(ASM) $(HACK_US)

$(HACK_EU): $(ASM)
	cp $(ROM_EU) $(HACK_EU)
	$(AS) $(ASFLAGS_EU) $(ASM) $(HACK_EU)

.PHONY:
clean:
	rm -rf $(HACK_US) $(HACK_EU) $(SYM_US) $(SYM_EU)

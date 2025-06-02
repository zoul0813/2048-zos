BIN=2048.bin

ifndef ZVB_SDK_PATH
	$(error "Failure: ZVB_SDK_PATH variable not found.  It must point to Zeal Video Board SDK path.")
endif

include $(ZVB_SDK_PATH)/sdcc/base_sdcc.mk

run:
	$(ZEAL_NATIVE_BIN) -H bin -r $(ZEAL_NATIVE_ROM) -e eeprom.img #-t tf.img

native: all run

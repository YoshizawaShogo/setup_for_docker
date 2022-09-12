default:
	echo "Please select 'install' or 'update'."
.PHONEY: default

TARGET_DIRS := $(wildcard ./projects/*)

define template
	$(MAKE) $1 -C $2

endef

update: install
	$(foreach TARGET_DIR,$(TARGET_DIRS),$(call template,update,$(TARGET_DIR)))
.PHONEY: update

install:
	$(foreach TARGET_DIR,$(TARGET_DIRS),$(call template,install,$(TARGET_DIR)))
.PHONEY: install

clean: 
	echo "未実装"
.PHONEY: clean

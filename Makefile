
STICK=/media/ujr/MEMSTICKUJR

default:
	@echo "Targets: stick"
	@echo "See also: docs/Makefile"

stick:
	rsync -av --delete /home/ujr/doc/ieg/ $(STICK)/Backup/ieg


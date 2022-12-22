
STICK=/media/ujr/MEMSTICKUJR

default:
	@echo "Targets: stick"

stick:
	rsync -av --delete /home/ujr/doc/ieg/ $(STICK)/Backup/ieg


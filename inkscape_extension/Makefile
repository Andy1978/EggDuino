.PHONY: fetch install uninstall update_patches realclean

PLOTINK_FILES= ebb_motion.py ebb_serial.py plot_utils.py

INKSCAPE_DRIVER_FILES= eggbot_conf.py eggbot_hatch.py eggbot_presethatch.inx\
  eggbot.py eggbot_reorder.py hersheydata.py hershey.py eggbot_hatch.inx eggbot.inx\
  eggbot_presethatch.py eggbot_reorder.inx eggbot_scanlinux.py hershey.inx

INKSCAPE_CONT= eggbot_acrostic.inx eggbot_acrostic.py eggbot_maze.inx\
  eggbot_maze.py eggbot_pptb.inx eggbot_pptb.py eggbot_sineandlace.inx\
  eggbot_sineandlace.py eggbot_spiraltext.inx eggbot_spiraltext.py\
  eggbot_stretch.inx eggbot_stretch.py eggbot_twist.inx eggbot_twist.py

TARGET=~/.config/inkscape/extensions

all:
	@echo 'No default target, choose between "fetch", "install", "uninstall" or "realclean"'

fetch:
	./fetch_extern.sh

install: fetch
	cd plotink/libraries && cp $(PLOTINK_FILES) $(TARGET); cd -
	cd EggBot/inkscape_driver && cp $(INKSCAPE_DRIVER_FILES) $(TARGET); cd -
	cd EggBot/inkscape_contributed && cp $(INKSCAPE_CONT) $(TARGET); cd -

uninstall:
	cd $(TARGET) && rm -f $(PLOTINK_FILES) $(INKSCAPE_DRIVER_FILES) $(INKSCAPE_CONT); cd -

update_patches: fetch
	cd plotink && git diff > ../plotink.patch
	cd EggBot && git diff > ../EggBot.patch

realclean:
	rm -rf EggBot plotink

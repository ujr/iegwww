# 20080902 modified subst include syntax; templates updated.
# 20180124 targets publish (to Web Server) and sync (remote Fossil)
# 20180803 target vault (push to repository on memory stick)
# 20181118 target seven (push with remote Fossil on Web server)
# 20221222 migrate site to GitHub Pages

STICK=/media/ujr/MEMSTICKUJR

all: index.html about.html auftritte.html mitspielen.html \
	proben.html press.html goenner.html

pull:
	@echo "Pulling changes form origin"
	git pull origin

push publish: all
	@echo "Publishing on GitHub Pages"
	git push origin

#publish: all
#	@echo "Publishing to foo.bar.ch"
#	rsync -av --exclude ".*.swp" --exclude ".fslckout" \
#	./ foo.bar.ch:/data/httpd/instrumentalensemble.ch/htdocs

# Sync with the default server URL (see `fossil help remote-url').
# Don't specify the URL below; a plain "fossil sync" uses the last-used
# URL with the last-used credentials and does not prompt for a password.

sync:
	@echo "Syncing with `fossil remote-url`"
	@fossil sync

nine:
	@echo "Fossil push to 192.168.1.9..."
	@echo "Will be prompted for credentials!"
	fossil push https://ujr@192.168.1.9/fossils.cgi/iegwww --once

stick:
	@echo "Fossil push to memory stick"
	@echo "Make sure the memory stick is mounted!"
	fossil push $(STICK)/Vault/iegwww.fossil --once


index.html: index.tmpl head.tmpl foot.tmpl
	subst index.tmpl > index.html

about.html: about.tmpl head.tmpl foot.tmpl
	subst about.tmpl > about.html

auftritte.html: auftritte.tmpl head.tmpl foot.tmpl
	subst auftritte.tmpl > auftritte.html

mitspielen.html: mitspielen.tmpl head.tmpl foot.tmpl
	subst mitspielen.tmpl > mitspielen.html

proben.html: proben.tmpl head.tmpl foot.tmpl
	subst proben.tmpl > proben.html

press.html: press.tmpl head.tmpl foot.tmpl
	subst press.tmpl > press.html

goenner.html: goenner.tmpl head.tmpl foot.tmpl
	subst goenner.tmpl > goenner.html

foot.tmpl: sccode.txt
	touch foot.tmpl

#clean:
#	rm -f *.html

install: translate_ui-de.mo
	install translate translate_ui /usr/local/bin
	which gdialog >/dev/null 2>&1 || install gdialog /usr/local/bin
	grep -q "`cat translate.services`" /etc/services || cat translate.services >> /etc/services
	install translate.xinetd /etc/xinetd.d/translate
	install translate_ui-de.mo /usr/share/locale/de/LC_MESSAGES/translate_ui.mo

translate_ui.pot: translate_ui
	xgettext -o translate_ui.pot -L Shell translate_ui

translate_ui-de.mo: translate_ui-de.po
	msgfmt -o translate_ui-de.mo translate_ui-de.po

clone:
	git clone https://github.com/itmo-infocom/calc_examples.git

download:
	git pull

upload:
	git add -A
	git commit
	git push origin 

tags:
	git push origin --tags

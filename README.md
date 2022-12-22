
# The www.instrumentalensemble.ch Website

Seit 2008 online unter [www.instrumentalensemble.ch][ieg]

- *docs/* – the stuff to be published by the web server
- *logo/, fotos/, varia/* – related stuff, but not part of web site
- *README.md* – this file

## Links

- [Werkverzeichnis](./varia/Werkverzeichnis.md) (sehr lückenhaft)
- [Externe Musiker](./varia/Externe.md)
- [Seminare](./varia/Seminare.md)
- [Celedonio Flores](./varia/CeledonioFlores.md)
- [www.kirchenchor-goldau.ch](http://www.kirchenchor-goldau.ch/)
  • 1917 gegründet als Cäcilienchor • ab 2000 Kirchenchor Goldau
  • Chorleitung 1993-2005 Edwin Weibel, ab 2005 Esther Rickenbach
  • 2018 Jubiläum 100 Jahre mit der Missa Gratias agimus tibi von
  Jan Dismas Zelenka • viele gemeinsame Auftritte mit dem IEG

## Revamp

Eine Überarbeitung steht dringend an:

- Responsive Web Design (use w3.css or another simple framework)
- Moderneres Design (wer hat gute Bilder?)
- Nice to have: Werkverzeichnis

## Technisches

Die Webseite wird mit Hilfe meines uralten Programms `subst`
aus “Templates” (.tmpl) zusammengesetzt. Die HTML-Dateien sind
also generiert. Die Abhängigkeiten zwischen .tmpl und .html sowie
die nötigen subst-Aufrufe werden durch das Makefile gesteuert.

Sowohl die Templates als auch die generierten HTML-Dateien werden
ins Repository eingecheckt. Das ist zwar redundant, ein beliebiger
Checkout ist aber auch ohne Build sofort zur Ansicht bereit.

Web Analytics mit [StatCounter](https://statcounter.com).

Hosting auf seven.xilab.ch mit Dank an [Xilab GmbH](https://www.xilab.ch).
Update Dez 2022: Hosting auf [GitHub Pages](https://pages.github.com/).

Die Domäne *instrumentalensemble.ch* wurde am 3. März 2008
bei SWITCH registriert. Am 29. März 2016 Wechsel zur NetZone AG,
weil SWITCH das Registrar-Geschäft aufgibt. Zeitgleich gehen Halter
(und Rechnungskontakt) von VZ zu mir über.

[ieg]: http://www.instrumentalensemble.ch


# Notizen zur IEG-Webseite

## Paths

- <http://www.instrumentalensemble.ch/>
- seven.xilab.ch:/data/httpd/instrumentalensemble.ch/htdocs
- seven.xilab.ch:/etc/apache2/vhosts.d/30_instrumentalensemble.ch.conf

Abgleich:

```sh
cd .../ieg/www
rsync -av ./ seven.xilab.ch:/data/httpd/instrumentalensemble.ch/htdocs
```

## Tricks

Bestehende PDF-Datei verkleinern mit
`gs -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -dCompatibilityLevel=1.4
-dPDFSETTINGS=setting -sOutputFile=output.pdf input.pdf`
replacing *setting* with `/screen` (least quality and size),
`/ebook`, `/printer`, or `/prepress` (highest quality and size).

## Historic Configs

Here some *very* old configs when the site was hosted by xilab
using Apache Web Server and BIND (DNS Server):

Add to file */chroot/dns/etc/bind/named.conf*

```BIND
zone "instrumentalensemble.ch" IN {
  type master;
  file "pri/instrumentalensemble.ch";
}
```

Create file */chroot/dns/var/bind/pri/instrumentalensemble.ch*

```BIND
$TTL 3h
@       IN      SOA     one.xilab.ch. admin.xilab.ch.  (
                                      2007060801 ; Serial
                                      3h         ; Refresh
                                      30m        ; Retry
                                      1w         ; Expire
                                      180 )      ; Negative caching TTL
                IN      NS      one.xilab.ch.
                IN      NS      two.xilab.ch.
;               IN      MX      10 mail.xilab.ch.
www             IN      CNAME   one.xilab.ch.
```

Create file */etc/apache2/vhosts.d/30\_instrumentalensemble.ch.conf*

```Apache
<VirtualHost *:80>
  ServerAdmin  xxxxxx@xilab.ch
  DocumentRoot /home/httpd/instrumentalensemble.ch/htdocs
  ServerName   instrumentalensemble.ch
  ErrorLog     /data/httpd/instrumentalensemble.ch/logs/error_log
  CustomLog    /data/httpd/instrumentalensemble.ch/logs/access_log common

  # Require user 'ieg' for member area:   (long gone)
  <Directory /data/httpd/instrumentalensemble.ch/htdocs/members>
    AuthType Basic
    AuthName "Mitglieder"
    AuthUserFile /data/httpd/instrumentalensemble.ch/users
    Require user ieg
  </Directory>

  # Allow htaccess to override:
  <Directory /data/httpd/instrumentalensemble.ch/htdocs>
    AllowOverride All
    Options +Indexes
  </Directory>

  # Make htaccess files inaccessible:
  <Files .htaccess>
    Order allow,deny
    Deny from all
  </Files>
</VirtualHost>
```

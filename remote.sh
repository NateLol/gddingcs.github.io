cd /home/d/dinggd
find public_html/ -type d -exec chmod 711 {} \;
find public_html/ -type f -exec chmod 644 {} \;
\rm -rf public_html/remote.sh

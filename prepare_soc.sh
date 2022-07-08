lOCAL

cp -r gddingcs.github.io/ soc/
cd soc
rm -rf .vscode/ .git/ 
rm -f .DS_Store .gitignore Makefile CNAME mysite.conf jemdoc.py
find . -name "*.jemdoc" -type f | xargs rm -f
scp -r ./ dinggd@sunfire:public_html/


REMOTE

find public_html/ -type d -exec chmod 755 {} \;
find public_html/ -type f -exec chmod 644 {} \;
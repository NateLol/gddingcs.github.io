#lOCAL
rm -rf ~/soc
cp -r ../dinggd.github.io/ ~/soc
cd ~/soc
rm -rf .vscode/ .git/ 
rm -f .gitignore Makefile CNAME mysite.conf jemdoc.py prepare_soc.sh
find . -name "*.jemdoc" -type f | xargs rm -f
find . -name "*.DS_Store" -type f | xargs rm -f
scp -r ./ dinggd@sunfire:public_html/
rm -rf ~/soc

#REMOTE

#find public_html/ -type d -exec chmod 711 {} \;
#find public_html/ -type f -exec chmod 644 {} \;

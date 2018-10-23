git checkout master
cabal exec site clean
cabal exec site build
git checkout gh-pages
cp -r public/index.html .
cp -r public/css .
git add *.html
git add css
git commit -m "Update page"
git push
git checkout master

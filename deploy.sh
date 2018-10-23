git checkout master
cabal exec site clean
cabal exec site build
git checkout gh-pages
cp -r public/*.html .
cp -r public/css .
git add *.html
git add css
git commit -m "Update page"
git push origin gh-pages
git checkout master

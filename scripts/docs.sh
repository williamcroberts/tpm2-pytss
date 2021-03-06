#!/usr/bin/env sh
set -e

rm -rf pages
sphinx-build -W -b html docs pages
find pages/ -name \*.html -exec \
  sed -i 's/<span class="gp">\&gt;\&gt;\&gt; <\/span>//g' {} \;
touch pages/.nojekyll

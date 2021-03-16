#!/usr/bin/env bash

rm *.md
cp -r ../../HexoFWK/source/_posts/*.md ./

git add *.md
git commit -m "Synchronize _posts folder"
git push

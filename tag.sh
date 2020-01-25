#!/bin/sh

repo="neilk/travisTest"

maketag() {
  echo "cooltag-$(date --iso-8601=s | tr -d ':-')"
}

git remote -v
echo "changing"
refspec="https://${GITHUB_TOKEN}@github.com/${repo}.git"
git remote add tagTarget "$refspec"
git remote -v

tag=$(maketag)
git tag "$tag"
git push tagTarget --tags

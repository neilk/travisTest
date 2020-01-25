#!/bin/sh

repo="neilk/travisTest"

maketag() {
  echo "cooltag-$(date --iso-8601=s | tr -d ':-')"
}

refspec="https://${GITHUB_TOKEN}@github.com/${repo}.git"
git remote add origin "$refspec"

tag=$(maketag)
git tag "$tag"
git push origin "$tag"

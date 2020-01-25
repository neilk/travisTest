#!/bin/sh

maketag() {
  echo "cooltag-$(date --iso-8601=s | tr -d ':-')"
}

tag=$(maketag)
git tag "$tag"
git push origin "$tag" "https://${GITHUB_TOKEN}@github.com/neilk/travisTest.git

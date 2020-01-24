#!/bin/sh

maketag() {
  echo "cooltag-$(date --iso-8601=s | tr -d ':-')"
}

tag=$(maketag)
git tag "$tag"
git push "$tag"

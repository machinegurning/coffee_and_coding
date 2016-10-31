#!/bin/bash


# configure your name and email if you have not done so
git config --global user.email "matthew.a.upson@gmail.com"
git config --global user.name "Matthew Upson"

# clone the repository to the book-output directory
git clone -b gh-pages \
	  https://${GITHUB_PAT}@github.com/${TRAVIS_REPO_SLUG}.git \
	    book-output
cd book-output
cp -r ../_book/* ./
git add *
git commit -m "Update the book"
git push origin gh-pages
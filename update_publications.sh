#!/bin/bash
# Check for prerequisites.
#if [ ! -f data/publications.bib ]; then
#  echo "ERROR: data/publications.bib file not found"
#  exit 1;
#fi

echo ""
echo "This script will regenerate entries for every publication in the data/publications.bib file. " 
#read -p "Press enter to continue"

rm -R content/publication/

if [ ! -f ./publications.bib ]; then
  echo "ERROR: marster bib file not found. Skipping update"
else
  internal/bibl/cli.py import --bibtex ./publications.bib --overwrite
#  cp ../../../Vitae/data/publications.bib internal/data/publications.bib

fi

#academic import --bibtex  internal/data/publications.bib --overwrite

exit 0;
#!/bin/sh

VERS="1.0.0"
DATE="2013-6-4"
LAYOUT=layout      # Tables based layout.

ASCIIDOC_HTML="asciidoc --backend=xhtml11 --conf-file=${LAYOUT}.conf --attribute icons --attribute=revision=$VERS  --attribute=date=$DATE --attribute=title=$TITLE"

$ASCIIDOC_HTML -a index-only -a banner index.txt

$ASCIIDOC_HTML -a index-only resources.txt

$ASCIIDOC_HTML -a index-only community.txt

$ASCIIDOC_HTML -a index-only cfp.txt
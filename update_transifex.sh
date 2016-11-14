#!/bin/sh
########################################################################
#
# This script has two options:
# --push
#     1. refresh translation files (*.ts) from source
#     2. upload source language (en_US) to Transifex for translation
# --pull
#     1. download translations from Transifex leaving directly maintained files untouched
#     2. modify Transifex generated *.ts files
#
# Manually:
# 3. review and commit changes to SCM
#
# Prerequisite:
# * have the Transifex client installed (http://docs.transifex.com/client/setup)
#   and configured (http://docs.transifex.com/client/config).
# * user needs to have maintainer priviledges to the Transifex project
# * configure languages not to be updated from Transifex (e.g. because
#   translations arrive in SCM directly) in the DIRECTLY_MAINTAINED list.
#
########################################################################

# command line switch
if [ $# -lt 1 ]; then
  echo "Usage:\nupdate_transifex.sh --push\nupdate_transifex.sh --pull"
  exit 1
fi

# list the languages that are _NOT_ translated through Transifex
DIRECTLY_MAINTAINED="en_US en_UK en_AU fr de de_1901 de_CH da_DK it"
TS_DIR="resources/translations"
BRANCH="scribus.scribus"
DIRECTION="$1"

# upload
if [ $DIRECTION = "--push" ]; then
    lupdate Scribus.pro
    tx push -s -r $BRANCH
# download
elif [ $DIRECTION = "--pull" ]; then
    langs=""
    for la in $(find $TS_DIR -name "*.ts" | cut -d"." -f2)
    do
        if test "${DIRECTLY_MAINTAINED#*$la}" != "$DIRECTLY_MAINTAINED"; then
            echo "Skipping:" $la
            continue
        fi
        langs="$langs,$la"
    done
    echo "Found:" $langs

    tx pull -f -r $BRANCH -l $langs

    # rectify some differences between lupdate and Transifex generated *.ts files
    sed -i~ $'s:<?xml version="1.0" ?><!DOCTYPE TS><TS language="\(.*\)" version="2.1">:<?xml version="1.0" encoding="utf-8"?>\\\n<!DOCTYPE TS>\\\n<TS version="2.1" language="\\1">:' $TS_DIR/*.ts
    sed -i~ 's:<translation type="unfinished"/>:<translation type="unfinished"></translation>:' $TS_DIR/*.ts
    rm $TS_DIR/*~
fi

##!/bin/bash
# =============================================================================
#
# - Copyright (C) 2017     George Li <yongxinl@outlook.com>
#
# - This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
#
# =============================================================================

## Shell Opts ----------------------------------------------------------------
set -e

## Vars ----------------------------------------------------------------------
# - commonly used variables
script_path="$( if [ "$( echo "${0%/*}" )" != "$( echo "${0}" )" ] ; then cd "$( echo "${0%/*}" )"; fi; pwd )"

## Main ----------------------------------------------------------------------
infobox "*** Checking for required libraries." 2> /dev/null ||
    source "/etc/functions.dash";

infobox "*** Cleaning up Linux Distribution ..." && success
rm -rf /tmp/*
rm -rf /var/cache/apk/*
rm -rf /${script_path}
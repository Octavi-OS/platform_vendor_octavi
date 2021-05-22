#!/sbin/sh
#
# /system/bin/clean_cache.sh
# During a rom update, this script needed to
# delete cache in /data/system/package_cache/*
#

if [ -d /data/system/package_cache/ ]; then
    rm -fr /data/system/package_cache/*
fi

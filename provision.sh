#!/bin/sh -ex

setup-apkcache '/etc/apk/cache/'
apk --verbose --progress update --purge # --update-cache
apk --verbose --progress upgrade --latest # --update-cache --available
apk cache --purge clean
# apk --verbose cache sync
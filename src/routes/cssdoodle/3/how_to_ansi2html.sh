#!/usr/bin/env bash

wget "http://www.pixelbeat.org/scripts/ansi2html.sh" -O /tmp/ansi2html.sh
chmod +x /tmp/ansi2html.sh
git diff --color-words --no-index orig.svelte +page.svelte | \
/tmp/ansi2html.sh > 2beshared.html
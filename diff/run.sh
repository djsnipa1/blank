#!/usr/bin/env bash

#diff diff/App1.svelte diff/App2.svelte > diff/App.diff

#diff2html -i file -- diff/App.diff -F diff/index.html
#diff diff/App1.svelte diff/App2.svelte

#wget "http://www.pixelbeat.org/scripts/ansi2html.sh" -O tmp/ansi2html.sh
#chmod +x tmp/ansi2html.sh
git diff --color-words --no-index diff/App2.svelte diff/App1.svelte | tmp/ansi2html.sh > diff/index.html

git diff --color-words --no-index diff/Doodle22.svelte diff/Doodle21.svelte | tmp/ansi2html.sh > diff/index2.html

./pst diff/index.html
./pst diff/index2.html
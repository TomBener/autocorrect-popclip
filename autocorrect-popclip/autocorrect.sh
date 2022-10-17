#!/bin/zsh
export LANG='en_US.UTF-8' && /bin/echo -n "$POPCLIP_TEXT" | \
sed 's/“/「/g; s/”/」/g' | \
/opt/homebrew/bin/autocorrect --stdin

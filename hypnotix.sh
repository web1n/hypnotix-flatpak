#!/bin/bash

if [ ! -d "$XDG_CACHE_HOME/hypnotix/favorites" ]; then
  mkdir -p "$XDG_CACHE_HOME/hypnotix/favorites"
fi
if [ ! -f "$XDG_CACHE_HOME/hypnotix/favorites/list" ]; then
  touch "$XDG_CACHE_HOME/hypnotix/favorites/list"
fi

if [[ -z "$GTK_THEME" ]]; then
  export GTK_THEME="Adwaita:dark"
fi

/app/lib/hypnotix/hypnotix.py "$@"

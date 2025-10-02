#!/bin/bash

CATEGORIES=(
    "PERSONAL"
    "WORK"
    "VIM"
    "WASTE"
    "STOP"
)

# we will try sk for this
selected=$(printf "%s\n" "${CATEGORIES[@]}" | sk --color="bw" --bind 'q:abort')
sk_status=$?

if [[ $sk_status -ne -0 || -z "$selected" ]]; then
    exit 0
fi

tmux set -g status-interval 5

if [[ "$selected" == "STOP" ]]; then
    timew stop
    tmux set -g status-right ""
else
    timew start "$selected"
    tmux set -g status-right "$selected #(timew | awk '/^ *Total/ {print \$NF}')"

    if [[ "$selected" == "WASTE" ]]; then
			hostess rm www.reddit.com
			hostess rm www.x.com
			hostess rm www.linkedin.com
			hostess rm www.privatemail.com
			hostess rm discord.com
			hostess rm status.discord.com
			hostess rm cdn.discordapp.com
			hostess rm latency.discord.media
			hostess rm gateway.discord.gg
    else
			hostess add www.reddit.com 127.0.0.1
			hostess add www.x.com 127.0.0.1
			hostess add www.linkedin.com 127.0.0.1
			hostess add www.privatemail.com 127.0.0.1
			hostess add discord.com 127.0.0.1
			hostess add status.discord.com 127.0.0.1
			hostess add cdn.discordapp.com 127.0.0.1
			hostess add latency.discord.media 127.0.0.1
			hostess add gateway.discord.gg 127.0.0.1
    fi
fi

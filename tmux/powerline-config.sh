# Default configuration file for tmux-powerline.
# Modeline {
#	 vi: foldmarker={,} foldmethod=marker foldlevel=0 tabstop=4 filetype=sh
# }

# General {
	# Show which segment fails and its exit code.
	export TMUX_POWERLINE_DEBUG_MODE_ENABLED="false"
	# Create error log in tmux runtime temp dir.
	export TMUX_POWERLINE_ERROR_LOGS_ENABLED="false"
	# Only log specific scopes. Space separated list of scopes. Supported scopes: weather.sh lib/text_roll.sh lib/powerline.sh lib/colors.sh config/helpers.sh
	export TMUX_POWERLINE_ERROR_LOGS_SCOPES=""
	# Use patched font symbols.
	export TMUX_POWERLINE_PATCHED_FONT_IN_USE="true"

	# The theme to use.
	export TMUX_POWERLINE_THEME="powerline-theme"
	# Overlay directory to look for themes. There you can put your own themes outside the repo. Fallback will still be the "themes" directory in the repo.
	export TMUX_POWERLINE_DIR_USER_THEMES="${DOTFILES_PATH}/tmux"
	# Overlay directory to look for segments. There you can put your own segments outside the repo. Fallback will still be the "segments" directory in the repo.
	export TMUX_POWERLINE_DIR_USER_SEGMENTS="${XDG_CONFIG_HOME:-$HOME/.config}/tmux-powerline/segments"

	# The initial visibility of the status bar. Can be {"on", "off", "2"}. 2 will create two status lines: one for the window list and one with status bar segments.
	export TMUX_POWERLINE_STATUS_VISIBILITY="on"
	# In case of visibility = 2, where to display window status and where left/right status bars.
	# 0: window status top, left/right status bottom; 1: window status bottom, left/right status top
	export TMUX_POWERLINE_WINDOW_STATUS_LINE=0
	# The status bar refresh interval in seconds.
	# Note that events that force-refresh the status bar (such as window renaming) will ignore this.
	export TMUX_POWERLINE_STATUS_INTERVAL="1"
	# The location of the window list. Can be {"absolute-centre, centre, left, right"}.
	# Note that "absolute-centre" is only supported on `tmux -V` >= 3.2.
	export TMUX_POWERLINE_STATUS_JUSTIFICATION="centre"

	# The maximum length of the left status bar.
	export TMUX_POWERLINE_STATUS_LEFT_LENGTH="60"
	# The maximum length of the right status bar.
	export TMUX_POWERLINE_STATUS_RIGHT_LENGTH="90"

	# The separator to use between windows on the status bar.
	export TMUX_POWERLINE_WINDOW_STATUS_SEPARATOR=""

	# Uncomment these if you want to enable tmux bindings for muting (hiding) one of the status bars.
	# E.g. this example binding would mute the left status bar when pressing <prefix> followed by Ctrl-[
	#export TMUX_POWERLINE_MUTE_LEFT_KEYBINDING="C-["
	#export TMUX_POWERLINE_MUTE_RIGHT_KEYBINDING="C-]"
# }

# air.sh {
	# The data provider to use. Currently only "openweather" is supported.
	export TMUX_POWERLINE_SEG_AIR_DATA_PROVIDER="openweather"
	# How often to update the weather in seconds.
	export TMUX_POWERLINE_SEG_AIR_UPDATE_PERIOD="600"
	# Location of the JSON parser, jq
	export TMUX_POWERLINE_SEG_AIR_JSON="jq"
	# Your location
	# Latitude and Longitude:
	TMUX_POWERLINE_SEG_AIR_LAT=""
	TMUX_POWERLINE_SEG_AIR_LON=""
	# Your Open Weather API Key:
	TMUX_POWERLINE_SEG_AIR_OPEN_WEATHER_API_KEY=""
# }

# battery.sh {
	# How to display battery remaining. Can be {percentage, cute, hearts}.
	export TMUX_POWERLINE_SEG_BATTERY_TYPE="percentage"
	# How may hearts to show if cute indicators are used.
	export TMUX_POWERLINE_SEG_BATTERY_NUM_HEARTS="5"
# }

# cpu_temp.sh {
	# CPU temperature icon
	export TMUX_POWERLINE_SEG_CPU_TEMP_ICON=" "
	# Linux only. Regexp to indicate a line containing CPU temperature in 'sensors' output.
	# Check the output of 'sensors' program, decide which line contains desired CPU temperature
	# and store an unique part of that line in this variable. It will be used by 'grep' program
	# to distinct the 'CPU temperature' line from the rest output lines.
	export TMUX_POWERLINE_SEG_CPU_TEMP_SENSORS_LINE_MARKER="Tctl"
# }

# date.sh {
	# date(1) format for the date. If you don't, for some reason, like ISO 8601 format you might want to have "%D" or "%m/%d/%Y".
	export TMUX_POWERLINE_SEG_DATE_FORMAT="%F"
# }

# date_week.sh {
	# Symbol for calendar week.
	# export TMUX_POWERLINE_SEG_DATE_WEEK_SYMBOL="󰨳"
	# export TMUX_POWERLINE_SEG_DATE_WEEK_SYMBOL_COLOUR="255"
# }

# disk_usage.sh {
	# Filesystem to retrieve disk space information. Any from the filesystems available (run "df | awk '{print }'" to check them).
	export TMUX_POWERLINE_SEG_DISK_USAGE_FILESYSTEM="/"
# }

# gcalcli.sh {
	# gcalcli uses 24hr time format by default - if you want to see 12hr time format, set TMUX_POWERLINE_SEG_GCALCLI_MILITARY_TIME_DEFAULT to 0
	export TMUX_POWERLINE_SEG_GCALCLI_24HR_TIME_FORMAT="1"
# }

# hostname.sh {
	# Use short, long or custom format for the hostname. Can be {"short", "long", "custom"}.
	export TMUX_POWERLINE_SEG_HOSTNAME_FORMAT="short"
	# Custom name to be used when format is "custom"
	export TMUX_POWERLINE_SEG_HOSTNAME_CUSTOM=""
# }

# lan_ip.sh {
	# Symbol for LAN IP.
	# export TMUX_POWERLINE_SEG_LAN_IP_SYMBOL="ⓛ "
	# Symbol colour for LAN IP
	# export TMUX_POWERLINE_SEG_LAN_IP_SYMBOL_COLOUR="255"
# }

# mem_used.sh {
	# Memory icon
	export TMUX_POWERLINE_SEG_MEM_USED_ICON=" "
	# Measure unit of memory: "GB" or "MB".
	# In context of this segment "1 GB" equals "2 ^ 30 bytes" and "1 MB" eqauls "2 ^ 20 bytes".
	export TMUX_POWERLINE_SEG_MEM_USED_UNIT="GB"
# }

# now_playing.sh {
	# Music player to use. Can be any of {audacious, banshee, cmus, apple_music, itunes, lastfm, plexamp, mocp, mpd, mpd_simple, pithos, playerctl, rdio, rhythmbox, spotify, file}.
	export TMUX_POWERLINE_SEG_NOW_PLAYING_MUSIC_PLAYER="mpd"
	# File to be read in case the song is being read from a file
	export TMUX_POWERLINE_SEG_NOW_PLAYING_FILE_NAME=""
	# Maximum output length.
	export TMUX_POWERLINE_SEG_NOW_PLAYING_MAX_LEN="40"
	# How to handle too long strings. Can be {trim, roll}.
	export TMUX_POWERLINE_SEG_NOW_PLAYING_TRIM_METHOD="trim"
	# Characters per second to roll if rolling trim method is used.
	export TMUX_POWERLINE_SEG_NOW_PLAYING_ROLL_SPEED="2"
	# Mode of roll text {"space", "repeat"}. space: fill up with empty space; repeat: repeat text from beginning
	# export TMUX_POWERLINE_SEG_NOW_PLAYING_ROLL_MODE="repeat"
	# Separator for "repeat" roll mode
	# export TMUX_POWERLINE_SEG_NOW_PLAYING_ROLL_SEPARATOR="   "
	# If set to 'true', 'yes', 'on' or '1', played tracks will be logged to a file.
	# export TMUX_POWERLINE_SEG_NOW_PLAYING_TRACK_LOG_ENABLE="false"
	# If enabled, log played tracks to the following file:
	# export TMUX_POWERLINE_SEG_NOW_PLAYING_TRACK_LOG_FILEPATH="/home/jeremiah/.now_playing.log"
	# Maximum number of logged song entries. Set to "unlimited" for unlimited entries.
	# export TMUX_POWERLINE_SEG_NOW_PLAYING_TRACK_LOG_MAX_ENTRIES="100"

	# Hostname for MPD server in the format "[password@]host"
	export TMUX_POWERLINE_SEG_NOW_PLAYING_MPD_HOST="localhost"
	# Port the MPD server is running on.
	export TMUX_POWERLINE_SEG_NOW_PLAYING_MPD_PORT="6600"
	# Song display format for mpd_simple. See mpc(1) for delimiters.
	export TMUX_POWERLINE_SEG_NOW_PLAYING_MPD_SIMPLE_FORMAT="%artist% - %title%"
	# Song display format for playerctl. see "Format Strings" in playerctl(1).
	export TMUX_POWERLINE_SEG_NOW_PLAYING_PLAYERCTL_FORMAT="{{ artist }} - {{ title }}"
	# Song display format for rhythmbox. see "FORMATS" in rhythmbox-client(1).
	export TMUX_POWERLINE_SEG_NOW_PLAYING_RHYTHMBOX_FORMAT="%aa - %tt"
# }

# pwd.sh {
	# Maximum length of output.
	export TMUX_POWERLINE_SEG_PWD_MAX_LEN="40"
# }

# time.sh {
	# date(1) format for the time. Americans might want to have "%I:%M %p".
	export TMUX_POWERLINE_SEG_TIME_FORMAT="%H:%M"
	# Change this to display a different timezone than the system default.
	# Use TZ Identifier like "America/Los_Angeles"
	# export TMUX_POWERLINE_SEG_TIME_TZ=""
# }

# tmux_mem_cpu_load.sh {
	# Arguments passed to tmux-mem-cpu-load.
	# See https://github.com/thewtex/tmux-mem-cpu-load for all available options.
	# export TMUX_POWERLINE_SEG_TMUX_MEM_CPU_LOAD_ARGS="-v"
# }

# tmux_session_info.sh {
	# Session info format to feed into the command: tmux display-message -p
	# For example, if FORMAT is '[ #S ]', the command is: tmux display-message -p '[ #S ]'
	export TMUX_POWERLINE_SEG_TMUX_SESSION_INFO_FORMAT="#S:#I.#P"
# }

# utc_time.sh {
	# date(1) format for the UTC time.
	export TMUX_POWERLINE_SEG_UTC_TIME_FORMAT="%H:%M %Z"
# }

# vcs_branch.sh {
	# Max length of the branch name.
	export TMUX_POWERLINE_SEG_VCS_BRANCH_MAX_LEN=""
	# Symbol when branch length exceeds max length
	# export TMUX_POWERLINE_SEG_VCS_BRANCH_TRUNCATE_SYMBOL="…"
	# Default branch symbol
	export TMUX_POWERLINE_SEG_VCS_BRANCH_DEFAULT_SYMBOL=""
	# Branch symbol for git repositories
	# export TMUX_POWERLINE_SEG_VCS_BRANCH_GIT_SYMBOL="${TMUX_POWERLINE_SEG_VCS_BRANCH_DEFAULT_SYMBOL}"
	# Branch symbol for hg/mercurial repositories
	# export TMUX_POWERLINE_SEG_VCS_BRANCH_HG_SYMBOL="${TMUX_POWERLINE_SEG_VCS_BRANCH_DEFAULT_SYMBOL}"
	# Branch symbol for SVN repositories
	# export TMUX_POWERLINE_SEG_VCS_BRANCH_SVN_SYMBOL="${TMUX_POWERLINE_SEG_VCS_BRANCH_DEFAULT_SYMBOL}"
	# Branch symbol colour for git repositories
	export TMUX_POWERLINE_SEG_VCS_BRANCH_GIT_SYMBOL_COLOUR="15"
	# Branch symbol colour for hg/mercurial repositories
	export TMUX_POWERLINE_SEG_VCS_BRANCH_HG_SYMBOL_COLOUR="45"
	# Branch symbol colour for SVN repositories
	export TMUX_POWERLINE_SEG_VCS_BRANCH_SVN_SYMBOL_COLOUR="220"
# }

# vpn.sh {
	# Mode for VPN segment {"both", "ip", "name"}. both: Show NIC/IP; ip: Show only IP; name: Show only NIC name
	# export TMUX_POWERLINE_SEG_VPN_DISPLAY_MODE="both"
	# Space separated list of tunnel interface names. First match is being used. substring match, regexp can be used.
	# Examples:
	# export TMUX_POWERLINE_SEG_VPN_NICS="tun" # will match 'tun0', 'utun0', 'itun', 'tun08127387'
	# export TMUX_POWERLINE_SEG_VPN_NICS="tun0 tuntun" # will match 'tun0', 'utun0', 'tuntun'
	# export TMUX_POWERLINE_SEG_VPN_NICS="^tun0$ ^tun1$" # exactly 'tun0' and 'tun1'
	# Default:
	# export TMUX_POWERLINE_SEG_VPN_NICS='^u?tun[0-9]+$'
	# Symbol to use for vpn tunnel.
	# export TMUX_POWERLINE_SEG_VPN_SYMBOL="󱠾 "
	# Colour for vpn tunnel symbol
	# export TMUX_POWERLINE_SEG_VPN_SYMBOL_COLOUR="255"
	# Symbol for separator
	# export TMUX_POWERLINE_SEG_VPN_DISPLAY_SEPARATOR="󰿟"
# }

# wan_ip.sh {
	# Symbol for WAN IP
	# export TMUX_POWERLINE_SEG_WAN_IP_SYMBOL="ⓦ "
	# Symbol colour for WAN IP
	# export TMUX_POWERLINE_SEG_WAN_IP_SYMBOL_COLOUR="255"
# }

# weather.sh {
	# The data provider to use. Currently only "yrno" is supported.
	export TMUX_POWERLINE_SEG_WEATHER_DATA_PROVIDER="yrno"
	# What unit to use. Can be any of {c,f,k}.
	export TMUX_POWERLINE_SEG_WEATHER_UNIT="c"
	# How often to update the weather in seconds.
	export TMUX_POWERLINE_SEG_WEATHER_UPDATE_PERIOD="600"
	# How often to update the weather location in seconds (this is only used when latitude and longitude settings are set to "auto")
	export TMUX_POWERLINE_SEG_WEATHER_LOCATION_UPDATE_PERIOD="86400"
	# Your location
	# Latitude and Longtitude for use with yr.no
	# Set both to "auto" to detect automatically based on your IP address, or set them manually
	export TMUX_POWERLINE_SEG_WEATHER_LAT="auto"
	export TMUX_POWERLINE_SEG_WEATHER_LON="auto"
# }

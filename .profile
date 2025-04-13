#!/bin/sh
# shellcheck disable=SC1091 # Not following
# - Executed by the command interpreter for login shells.
# - Sourced by `~/.xsessionrc` during X session startup.
# - Not read by bash if either `~/.bash_profile` or `~/.bash_login` exists.

# Source `$HOME/.bashrc` if run by bash.
if [ -n "$BASH_VERSION" ]; then
    if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
    fi
fi

# Set the `XDG_*` environment variables to the default values suggested by the
# XDG Base Directory Specification. `XDG_RUNTIME_DIR` is set by `pam_systemd`.
# See: https://specifications.freedesktop.org/basedir-spec/latest/
XDG_CACHE_HOME="${XDG_CACHE_HOME:-"$HOME/.cache"}"; export XDG_CACHE_HOME
XDG_CONFIG_DIRS="${XDG_CONFIG_DIRS:-"/etc/xdg"}"; export XDG_CONFIG_DIRS
XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-"$HOME/.config"}"; export XDG_CONFIG_HOME
XDG_DATA_DIRS="${XDG_DATA_DIRS:-"/usr/local/share/:/usr/share/"}"; export XDG_DATA_DIRS
XDG_DATA_HOME="${XDG_DATA_HOME:-"$HOME/.local/share"}"; export XDG_DATA_HOME
XDG_STATE_HOME="${XDG_STATE_HOME:-"$HOME/.local/state"}"; export XDG_STATE_HOME

# Add "$HOME/.local/bin" to PATH.
if [ -d "$HOME/.local/bin" ]; then
    PATH="$HOME/.local/bin:$PATH"
fi

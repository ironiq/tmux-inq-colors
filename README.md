# IroNiQ's tmux themes repository

IroNiQ's themes for Tmux

# Installation

## Install manually

1.  Clone repo to local machine:

        git clone https://github.com/ironiq/tmux-inq-colours.git ~/.tmux/plugins/tmux-inq-colours/

2.  Source desired theme in your `~/.tmux.conf`:

         source-file "${HOME}/.tmux/plugins/tmux-inq-colours/night.tmuxtheme"

    In some linux distributions you might have to remove the quotation marks
    from the `source-file` command to avoid a `no such file or directory` error:

         source-file ${HOME}/.tmux/plugins/tmux-inq-colours/night.tmuxtheme

## Install using [Tmux Plugin Manager](https://github.com/ironiq/tpm-fork) (forked by IroNiQ)

1.  Add plugin to the list of TPM plugins in `.tmux.conf`:

         set -g @plugin 'ironiq/tmux-inq-colours.git#main'

2.  Press `prefix + I` to fetch the plugin and source it. The plugin should now
    be working.

Choose which theme is loaded by setting the `@themepack` option in your `.tmux.conf`:

- `set -g @tmuxtheme 'night'` (default)
- `set -g @tmuxtheme 'orange'`

# License

This code is licensed under [GNU General Public License v3](https://www.gnu.org/licenses/gpl-3.0.html#license-text) or newer.


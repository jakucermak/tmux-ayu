
## Themes

<details>
<summary>Dark</summary>

![Dark](./assets/dark.webp)

</details>

## Installation

In order to have the icons displayed correctly please use/update your favorite
[nerd font](https://www.nerdfonts.com/font-downloads).
If you do not have a patched font installed, you can override or remove any
icon. Check the [documentation](./docs/reference/configuration.md) on the
options available.

### Manual (Recommended)

This method is recommended as TPM has some issues with name conflicts.

<!-- x-release-please-start-version -->

1. Clone this repository to your desired location (e.g.
   `~/.config/tmux/plugins/ayu`).

   ```bash
   mkdir -p ~/.config/tmux/plugins/ayu
   git clone -b v0.1.0 https://github.com/jakucermak/tmux-ayu ~/.config/tmux/plugins/ayu/tmux
   ```

1. Add the following line to your `tmux.conf` file:
   `run ~/.config/tmux/plugins/ayu/tmux/ayu.tmux`.
1. Reload Tmux by either restarting or reloading with `tmux source ~/.tmux.conf`.
<!-- x-release-please-end -->

Check out what to do next in the "[Getting Started Guide](./docs/tutorials/01-getting-started.md)".

### TPM

<!-- x-release-please-start-version -->

1.  Install [TPM](https://github.com/tmux-plugins/tpm)
1.  Add the ayu plugin:

    ```bash
    set -g @plugin 'jakucermak/tmux-ayu#v0.1.0' 
    
    set -g @plugin 'tmux-plugins/tpm'
    ```

1.  (Optional) Set your preferred appearance, it defaults to `"dark"`:

    ```bash
    set -g @ayu_appearance 'dark' # dark, (light, mirage) come soon 
    ```

    <!-- x-release-please-end -->

> [!IMPORTANT]
> You may have to run `~/.config/tmux/plugins/tpm/bin/clean_plugins`
> if upgrading from an earlier version
> (especially from `v0.3.0`).

### For TMUX versions prior to 3.2

This plugin uses features that were only introduced into tmux in version 3.2.
If you are using a version earlier than this, you can still have lovely
ayu colors, the installation method just looks a little different.

```sh
# In your ~/.tmux.conf

# Add the colors from the pallete. Check the themes/ directory for all options.

# Some basic mocha colors.
set -g @ayu_bg "#24273a"
set -g @ayu_surface_1 "#494d64"
set -g @ayu_fg "#cad3f5"
set -g @ayu_accent_on "#c6a0f6"
set -g @ayu_crust "#181926"

# status line
set -gF status-style "bg=#{@ayu_bg},fg=#{@ayu_fg}"

# windows
set -gF window-status-format "#[bg=#{@ayu_surface_1},fg=#{@ayu_fg}] ##I ##T "
set -gF window-status-current-format "#[bg=#{@ayu_accent_on},fg=#{@ayu_crust}] ##I ##T "
```

### Upgrading from v0.3

Breaking changes have been introduced since 0.3, to understand how to migrate
your configuration, see pinned issue [#487](https://github.com/ayu/tmux/issues/487).

## Recommended Default Configuration

This configuration shows some customisation options, that can be further
extended as desired.
This is what is used for the previews above.

![Example configuration](./assets/mocha.webp)

```bash
# ~/.tmux.conf

# Options to make tmux more pleasant
set -g mouse on
set -g default-terminal "tmux-256color"

# Configure the ayu plugin
set -g @ayu_appearance "mocha"
set -g @ayu_window_status_style "rounded"

# Load ayu
run ~/.config/tmux/plugins/ayu/tmux/ayu.tmux
# For TPM, instead use `run ~/.tmux/plugins/tmux/ayu.tmux`

# Make the status line pretty and add some modules
set -g status-right-length 100
set -g status-left-length 100
set -g status-left ""
set -g status-right "#{E:@ayu_status_application}"
set -agF status-right "#{E:@ayu_status_cpu}"
set -ag status-right "#{E:@ayu_status_session}"
set -ag status-right "#{E:@ayu_status_uptime}"
set -agF status-right "#{E:@ayu_status_battery}"

run ~/.config/tmux/plugins/tmux-plugins/tmux-cpu/cpu.tmux
run ~/.config/tmux/plugins/tmux-plugins/tmux-battery/battery.tmux
# Or, if using TPM, just run TPM
```

## Documentation

### Guides

- [Getting Started](./docs/tutorials/01-getting-started.md)
- [Custom Status Line Segments](./docs/tutorials/02-custom-status.md)
- [Troubleshooting](./docs/guides/troubleshooting.md)

### Reference

- [Status Line](./docs/reference/status-line.md)
- [Configuration Options Reference](./docs/reference/configuration.md)
- [Tmux Configuration Showcase](https://github.com/ayu/tmux/discussions/317)

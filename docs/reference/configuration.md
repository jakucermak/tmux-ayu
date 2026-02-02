## Configuration Reference

<img src="../../assets/structure.svg" style="background: #eff1f5" />

This is a diagram of how the theme is split between its components.

### Top Level Options

| Option               | Effect                                                                         |
| -------------------- | ------------------------------------------------------------------------------ |
| `@ayu_appearance` | Sets the catppuccin appearance, one of "latte", "frappe", "macchiato", or "mocha". |

### Status Line

| Option                        | Effect                                        |
| ----------------------------- | --------------------------------------------- |
| @ayu_status_background | Sets the background color of the status line. |

- `default` will use the color from the selected theme
- `none` will make the status bar transparent
- use hex color codes for other colors or a theme color (`#{@thm_<color>}`)

### Window

The plugin comes with three window styles built in, these can be customized by
setting the `@ayu_window_status_style` option. The default is `basic`.

| Option    | Effect                                                                   | Preview                                                |
| --------- | ------------------------------------------------------------------------ | ------------------------------------------------------ |
| `basic`   | Simple styling with blocks.                                              | ![window basic](../../assets/window-basic.webp)           |
| `rounded` | Each window is separated with rounded separators.                        | ![window rounded style](../../assets/window-rounded.webp) |
| `slanted` | Each window is separated with slanted separators.                        | ![window slanted style](../../assets/window-slanted.webp) |
| `custom`  | Custom separators are used. This is required to override the separators! |                                                        |
| `none`    | Styling of the window status is completely disabled.                     | ![window no styling](../../assets/window-none.webp)       |

If you want to change the active color to something else (the default is accent_on),
use the following. For example to use accent_tint:

```bash
set -g @ayu_window_current_number_color "#{@thm_accent_tint}"
```

<details>

<summary>Customising the separators</summary>

Add the following,
setting whatever values you'd like for the separators:

```bash
set -g @ayu_window_status_style "custom"
set -g @ayu_window_left_separator ""
set -g @ayu_window_middle_separator ""
set -g @ayu_window_right_separator ""
```

</details>

### Menu

**Set the menu selected style:**

```sh
# Use a value compatible with the standard tmux `menu-selected-style`
set -g @ayu_menu_selected_style "fg=#{@thm_surface_0},bg=#{@thm_yellow}"
```

### All options and their defaults

```bash
# Menu styling options
set -g @ayu_menu_selected_style "fg=#{@thm_fg},bold,bg=#{@thm_overlay_0}"

# Pane styling options
set -g @ayu_pane_status_enabled "no" # set to "yes" to enable
set -g @ayu_pane_border_status "off" # set to "yes" to enable
set -g @ayu_pane_border_style "fg=#{@thm_overlay_0}"
set -g @ayu_pane_active_border_style "##{?pane_in_mode,fg=#{@thm_accent_tint},##{?pane_synchronized,fg=#{@thm_accent_on},fg=#{@thm_accent_tint}}}"
set -g @ayu_pane_left_separator "█"
set -g @ayu_pane_middle_separator "█"
set -g @ayu_pane_right_separator "█"
set -g @ayu_pane_color "#{@thm_green}"
set -g @ayu_pane_background_color "#{@thm_surface_0}"
set -g @ayu_pane_default_text "##{b:pane_current_path}"
set -g @ayu_pane_default_fill "number"
set -g @ayu_pane_number_position "left" # right, left

set -g @ayu_window_status_style "basic" # basic, rounded, slanted, custom, or none
set -g @ayu_window_text_color "#{@thm_surface_0}"
set -g @ayu_window_number_color "#{@thm_overlay_2}"
set -g @ayu_window_text " #T"
set -g @ayu_window_number "#I"
set -g @ayu_window_current_text_color "#{@thm_surface_1}"
set -g @ayu_window_current_number_color "#{@thm_accent_on}"
set -g @ayu_window_current_text " #T"
set -g @ayu_window_current_number "#I"
set -g @ayu_window_number_position "left"
set -g @ayu_window_flags "none" # none, icon, or text
set -g @ayu_window_flags_icon_last " 󰖰" # -
set -g @ayu_window_flags_icon_current " 󰖯" # *
set -g @ayu_window_flags_icon_zoom " 󰁌" # Z
set -g @ayu_window_flags_icon_mark " 󰃀" # M
set -g @ayu_window_flags_icon_silent " 󰂛" # ~
set -g @ayu_window_flags_icon_activity " 󱅫" # #
set -g @ayu_window_flags_icon_bell " 󰂞" # !
# Matches icon order when using `#F` (`#!~[*-]MZ`)
set -g @ayu_window_flags_icon_format "##{?window_activity_flag,#{E:@ayu_window_flags_icon_activity},}##{?window_bell_flag,#{E:@ayu_window_flags_icon_bell},}##{?window_silence_flag,#{E:@ayu_window_flags_icon_silent},}##{?window_active,#{E:@ayu_window_flags_icon_current},}##{?window_last_flag,#{E:@ayu_window_flags_icon_last},}##{?window_marked_flag,#{E:@ayu_window_flags_icon_mark},}##{?window_zoomed_flag,#{E:@ayu_window_flags_icon_zoom},} "

# Status line options
set -g @ayu_status_left_separator ""
set -g @ayu_status_middle_separator ""
set -g @ayu_status_right_separator "█"
set -g @ayu_status_connect_separator "yes" # yes, no
set -g @ayu_status_fill "icon"
set -g @ayu_status_module_bg_color "#{@thm_surface_0}"
```

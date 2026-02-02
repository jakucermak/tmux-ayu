#!/usr/bin/env bash

# Returns the value of given tmux option.
# First argument is the option name, e.g. @ayu_appearance.
#
# Usage: `get_option @ayu_appearance`
# Would return: `mocha`
#
# The option is given as a format string.
get_option() {
  local option
  option=$1

  tmux display-message -p "#{${option}}"
}

# Prints the given tmux option to stdout.
# First argument is the option name, e.g. @ayu_appearance.
#
# Usage: `print_option @ayu_appearance`
# Would print: `@ayu_appearance mocha`
#
# The option is given as a format string.
print_option() {
  local option
  option=$1

  printf "\n%s " "${option}"
  get_option "$option"
}

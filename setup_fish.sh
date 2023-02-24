#!/bin/bash



echo "set -g fish_prompt_pwd_dir_length 0" | tee ~/.config/fish/config.fish
echo -e "function fish_user_key_bindings\n\tbind --preset ',' forward-char\nend" | tee -a ~/.config/fish/config.fish




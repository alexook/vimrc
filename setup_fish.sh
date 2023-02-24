#!/bin/bash



echo -e "set -g fish_prompt_pwd_dir_length 0\n" | tee ~/.config/fish/config.fish
echo -e "function fish_user_key_bindings\n\tbind --preset ',' forward-char\nend\n" | tee -a ~/.config/fish/config.fish
echo -e ". ls_colors.fish -e" | tee -a ~/.config/fish/config.fish
echo -e "alias ls='ls --color=always'\n" | tee -a ~/.config/fish/config.fish

cat ls_colors.fish | tee ~/.config/fish/ls_colors.fish




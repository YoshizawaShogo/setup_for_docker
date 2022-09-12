function fish_prompt
    printf '%s%s@%s%s%s%s%s' (set_color yellow) $USER (set_color purple) (prompt_hostname) (set_color $fish_color_cwd) (prompt_pwd) (set_color normal) 
    printf '%s' (fish_git_prompt)
    printf ':[%s]\n> ' (date +%X)
end

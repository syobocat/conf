function fish_prompt
    printf "[%s@%s %s%s%s]%% " $USER $hostname $(set_color green) $(prompt_pwd) $(set_color normal)
end

function fish_right_prompt
    set -l display_status $status; printf "%s[%s]%s " $(set_color red) $display_status $(set_color normal)
end

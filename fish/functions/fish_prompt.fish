function fish_prompt
    # This is a simple prompt. It looks like
    # alfa@nobby /path/to/dir $
    # with the path shortened and colored
    # and a "#" instead of a "$" when run as root.
    set -l symbol '$ '
    set -l color $fish_color_cwd
    set -l blue_col blue
    if fish_is_root_user
        set symbol ' # '
        set -q fish_color_cwd_root
        and set color $fish_color_cwd_root
    end

    echo -n [
    set_color blue    
    echo -n "$USER@kyoto "

    set_color $color
    #echo -n (prompt_pwd)
    echo -n (basename $PWD)

    set_color normal
    echo -n ]

    set_color normal
    echo -n $symbol
end

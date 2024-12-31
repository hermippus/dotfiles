function fish_prompt
    # Variables
    set -l symbol ' $ '
    set -l rootsymbol ' # '
    set -l color -o f49550
    set -l rootcolor -o ec665b

    # Condition: if it's root, change the symbol and color
    if fish_is_root_user
	# Examples:
	# - root@x # neofetch
	# - root@x /h/x/Jenkins # nvim
        set symbol $rootsymbol
        and set color $rootcolor
    end

    # Examples:
    # - xx@x ~ $ neofetch
    # - xx@x ~/Jenkins $ nvim
    echo -n $USER@$hostname

    set_color $color
    echo -n '' (prompt_pwd)
    set_color normal

    echo -n $symbol
end

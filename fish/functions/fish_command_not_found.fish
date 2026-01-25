# open file if it's passed as command
function fish_command_not_found
    set -l cmd $argv[1]

    if test -f "$cmd"
        xdg-open "$cmd" 2>/dev/null
        return $status
    end

    __fish_default_command_not_found_handler $argv
end

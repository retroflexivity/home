fish_add_path $HOME/.local/bin /usr/local/texlive/2024/bin/x86_64-linux $HOME/.ghcup/bin $HOME/.cabal/bin $HOME/.roswell/bin $HOME/.cargo/bin

set -x PYTHONWARNINGS ignore
set -g fish_autocomplete_autoshow 1

set EDITOR helix

if status is-interactive
    fzf_configure_bindings --directory=\cf --variables=\e\cv

    set -g pure_separate_prompt_on_error true
    abbr -a dl --position anywhere "~/Downloads"

    abbr -a l "ls -lh"
    abbr -a la "ls -lAh"

    abbr -a fc kitten choose-files
    abbr -a f "open (kitten choose-files)"
    abbr -a d "cd (kitten choose-files --mode=dir)"
    abbr -a op open

    abbr -a fd "find 2>/dev/null . -name"
    abbr -a fdr "sudo find 2>/dev/null / -name"

    abbr -a b browse

    abbr -a c wl-copy
    abbr -a p wl-paste
    abbr -a cf copy-file
    abbr -a ts trash-put

    abbr -a cat bat
    abbr -a icat kitten icat
    abbr -a h helix
    abbr -a se sudoedit

    abbr -a tms transmission-remote
    abbr -a tml "watch -n 1 'transmission-remote -l'"

    abbr -a kc "kdeconnect-cli --name the\ void\ phone"
    abbr -a kcc "kdeconnect-cli --name the\ void\ phone --send-clipboard"
    abbr -a kcs "kdeconnect-cli --name the\ void\ phone --share"

    abbr -a logout "loginctl terminate-user $USER"

    abbr -a lxm "rm *-tags.tex; latexmk; rm *-tags.tex"
    abbr -a lxmc "latexmk -c"

    abbr -a gs "git show"

    abbr -a pa papis
    abbr -a pal "papis list"
    abbr -a palt "papis list toread"
    abbr -a paa "papis add"
    abbr -a paad "papis add --from doi"
    abbr -a paf "papis addto -f"
    abbr -a pat "papis tag -p toread"
    abbr -a patr "papis tag -r toread"
    abbr -a pae "papis edit"

    bind ctrl-y fish_clipboard_copy
    bind ctrl-e edit_command_buffer

    function disown_and_exit
        # Disown all jobs
        for job in (jobs -p)
            bg $job
            disown $job
        end
        kitten @ --password="close" close-window
    end

    bind \cq disown_and_exit

end

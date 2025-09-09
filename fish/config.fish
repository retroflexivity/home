fish_add_path $HOME/.local/bin /usr/local/texlive/2024/bin/x86_64-linux $HOME/.ghcup/bin $HOME/.cabal/bin

set -x PYTHONWARNINGS ignore

set EDITOR helix

if status is-interactive
    fzf_configure_bindings --directory=\cf --variables=\e\cv

    set --universal pure_separate_prompt_on_error true

    abbr -a dl --position anywhere "~/Downloads"

    abbr -a l "ls -lh"
    abbr -a la "ls -lAh"

    abbr -a op xdg-open
    abbr -a icat kitten icat

    abbr -a f "find 2>/dev/null . -name"
    abbr -a fr "sudo find 2>/dev/null / -name"

    abbr -a o open

    abbr -a c wl-copy
    abbr -a p wl-paste
    abbr -a cf copy-file
    abbr -a ts trash-put

    abbr -a cat bat
    abbr -a hx helix
    abbr -a se sudoedit

    abbr -a tms transmission-remote
    abbr -a tml "watch -n 1 'transmission-remote -l'"

    abbr -a kc "kdeconnect-cli --name the\ void\ phone"
    abbr -a kcc "kdeconnect-cli --name the\ void\ phone --send-clipboard"
    abbr -a kcs "kdeconnect-cli --name the\ void\ phone --share"

    abbr -a logout "loginctl terminate-user $USER"

    abbr -a lxm "rm *-tags.tex; latexmk; rm *-tags.tex"
    abbr -a lxmc "latexmk -c"

    abbr -a cex "calibredb export --dont-write-opf --dont-save-cover --dont-asciiize --single-dir --to-dir Books"

    bind ctrl-y fish_clipboard_copy
end

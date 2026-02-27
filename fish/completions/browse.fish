complete -c browse -f

for line in (sqlite3 ~/.local/share/qutebrowser/history.sqlite 'SELECT url, title FROM History WHERE NOT redirect GROUP BY url ORDER BY atime ASC')
    set parts (string split -m 1 "|" $line)
    set url (string replace -r '^https?://(www\.)?' '' $parts[1])
    # set url (string match -rg '(.*?)\?.*' '' $url)
    # if [ -z $url ]
    #     set url $parts[1]
    # end
    complete -c browse -k -a $(string escape -- "$url") -d $(string escape -- "$parts[2]")
end

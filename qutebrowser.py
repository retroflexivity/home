# type: ignore
c = c  # noqa: F821 pylint: disable=E0602,C0103 ruff: disable=E0602,C0103
config = config  # noqa: F821 pylint: disable=E0602,C0103

config.load_autoconfig(False)

# colors
bg = "#f7f7f7"
fg = "#2b2b2b"
darker_bg = "#f2f2f2"
light_fg = bg

red = "#bd4e46"
red_bg = "#944540"

green = "#46bd80"
green_bg = "#409168"

yellow = "#b3a430"
yellow_bg = "#9e9336"

blue = "#4695bd"
blue_bg = "#45748c"

magenta = "#a64eb5"
magenta_bg = "#814c8a"

cyan = "#46b5bd"
cyan_bg = "#428085"

accent = red

# c.aliases = {'w': 'session-save', 'q': 'close', 'qa': 'quit', 'wq': 'quit --save', 'wqa': 'quit --save'}
# c.auto_save.interval = 15000

# c.auto_save.session = True

c.bindings.key_mappings = {'<Ctrl-[>': '<Escape>', '<Ctrl-6>': '<Ctrl-^>', '<Ctrl-M>': '<Return>', '<Ctrl-J>': '<Return>', '<Ctrl-I>': '<Tab>', '<Shift-Return>': '<Return>', '<Enter>': '<Return>', '<Shift-Enter>': '<Return>', '<Ctrl-Enter>': '<Ctrl-Return>'}

# cyrillic keybindings
config.unbind('.')
en_keys = "qwfpbjluy;[]arstgmneio'zxcdvkh,./" + 'QWFPBJLUY:{}ARSTGMNEIO"ZXCDVKH<>?'
ru_keys = 'йцукенгшщзхъфывапролджэячсмитьбю.' + 'ЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ,'
c.bindings.key_mappings.update(dict(zip(ru_keys, en_keys)))


c.completion.scrollbar.padding = 2
c.completion.scrollbar.width = 12
c.completion.shrink = False

c.completion.timestamp_format = '%d.%m.%Y %H:%M'

c.confirm_quit = ['downloads']

c.content.cookies.accept = 'no-3rdparty'

c.content.default_encoding = 'utf-8'

c.content.javascript.can_open_tabs_automatically = True
c.content.notifications.enabled = False

c.downloads.location.prompt = False

c.editor.command = ['kitty', 'helix', '{file}', '+{line}']

# c.fileselect.folder.command = ['sh', '-c', 'rofi-finder ~ -o --type="dir" 2>/dev/null']
# c.fileselect.handler = 'external'
# c.fileselect.multiple_files.command = ['sh', '-c', 'rofi-finder ~ -om 2>/dev/null']
# c.fileselect.single_file.command = ['sh', '-c', 'rofi-finder ~ -o 2>/dev/null']

c.hints.chars = 'tnseriaodhgmplfuwybj'

c.new_instance_open_target = 'window'
c.prompt.filebrowser = False

c.scrolling.smooth = True
c.spellcheck.languages = ['en-US', 'it-IT', 'lv-LV']

c.statusbar.padding = {'top': 5, 'bottom': 5, 'left': 0, 'right': 0}

c.tabs.show = 'multiple'

c.tabs.tabs_are_windows = True

c.url.default_page = 'about:blank'

c.url.searchengines = {'DEFAULT': 'https://duckduckgo.com/?q={}'}

c.url.start_pages = 'about:blank'

config.bind(';', 'cmd-set-text :')
config.unbind(':')

config.bind('d', 'scroll-page 0 0.5')
config.bind('u', 'scroll-page 0 -0.5')

config.bind(':I', 'hint images tab')
config.bind(':O', 'hint links fill :open -t -r {hint-url}')
config.bind(':R', 'hint --rapid links window')
config.bind(':Y', 'hint links yank-primary')
config.bind(':b', 'hint all tab-bg')
config.bind(':d', 'hint links download')
config.bind(':f', 'hint all tab-fg')
config.bind(':h', 'hint all hover')
config.bind(':i', 'hint images')
config.bind(':o', 'hint links fill :open {hint-url}')
config.bind(':r', 'hint --rapid links tab-bg')
config.bind(':t', 'hint inputs')
config.bind(':y', 'hint links yank')

config.bind('<Ctrl-p>', 'print')

config.bind('M', 'back')
config.bind('I', 'forward')

config.bind('j', 'search-next')
config.bind('J', 'search-prev')

config.bind('P', 'open -t -- {clipboard}')

config.bind('q', 'tab-close')

config.bind('gg', 'scroll-to-perc 0')
config.bind('gk', 'scroll-to-perc 100')

config.bind('l', 'mode-enter insert')
config.bind('L', 'mode-enter passthrough')

config.bind('m', 'scroll left')
config.bind('n', 'scroll down')
config.bind('e', 'scroll up')
config.bind('i', 'scroll right')

config.bind('=', 'zoom-in')
config.bind('0', 'zoom')

config.bind('v', 'mode-enter caret')

config.bind('gi', 'move-to-end-of-line', mode='caret')
config.bind('gm', 'move-to-start-of-line', mode='caret')
config.bind('gk', 'move-to-end-of-document', mode='caret')

config.bind('M', 'scroll left', mode='caret')
config.bind('N', 'scroll down', mode='caret')
config.bind('E', 'scroll up', mode='caret')
config.bind('I', 'scroll right', mode='caret')

config.bind('m', 'move-to-prev-char', mode='caret')
config.bind('n', 'move-to-next-line', mode='caret')
config.bind('e', 'move-to-prev-line', mode='caret')
config.bind('i', 'move-to-next-char', mode='caret')

config.bind('k', 'move-to-end-of-word', mode='caret')

config.bind('gg', 'move-to-start-of-document', mode='caret')
config.bind('gk', 'move-to-end-of-document', mode='caret')

config.bind('ys', 'yank selection')
config.bind('p', 'insert-text -- {clipboard} ')
config.bind('<Ctrl-V>', 'insert-text -- {clipboard} ')

config.bind('gd', 'download-open')

# Bindings for insert mode
config.bind('<Ctrl-E>', 'edit-text', mode='insert')
config.bind('<Escape>', 'mode-leave', mode='insert')
config.bind('<Shift-Escape>', 'fake-key <Escape>', mode='insert')


c.colors.completion.category.bg = bg
c.colors.completion.category.border.top = 'transparent'
c.colors.completion.category.border.bottom = 'transparent'
c.colors.completion.category.fg = fg

c.colors.completion.scrollbar.bg = bg
c.colors.completion.scrollbar.fg = fg

c.colors.completion.even.bg = bg
c.colors.completion.odd.bg = bg
c.colors.completion.fg = fg
c.colors.completion.match.fg = accent

c.colors.completion.item.selected.bg = darker_bg
c.colors.completion.item.selected.fg = fg
c.colors.completion.item.selected.border.top = 'transparent'
c.colors.completion.item.selected.border.bottom = 'transparent'
c.colors.completion.item.selected.match.fg = accent

c.colors.statusbar.normal.bg = bg
c.colors.statusbar.normal.fg = fg
c.colors.statusbar.command.bg = bg
c.colors.statusbar.command.fg = fg
c.colors.statusbar.caret.bg = magenta_bg
c.colors.statusbar.caret.fg = light_fg
c.colors.statusbar.caret.selection.bg = magenta_bg
c.colors.statusbar.caret.selection.fg = light_fg
c.colors.statusbar.insert.bg = green_bg
c.colors.statusbar.insert.fg = light_fg
c.colors.statusbar.passthrough.bg = blue_bg
c.colors.statusbar.passthrough.fg = light_fg
c.colors.statusbar.progress.bg = fg
c.colors.statusbar.url.fg = fg
c.colors.statusbar.url.success.https.fg = fg
c.colors.statusbar.url.success.http.fg = yellow
c.colors.statusbar.url.warn.fg = yellow
c.colors.statusbar.url.error.fg = red
c.colors.statusbar.url.hover.fg = cyan
c.colors.statusbar.private.bg = fg
c.colors.statusbar.private.fg = bg

c.colors.downloads.bar.bg = bg
c.colors.downloads.error.bg = red_bg
c.colors.downloads.error.fg = light_fg
c.colors.downloads.start.bg = blue_bg
c.colors.downloads.start.fg = light_fg
c.colors.downloads.stop.bg = green_bg
c.colors.downloads.stop.fg = light_fg

c.colors.hints.bg = bg
c.colors.hints.fg = accent
c.colors.hints.match.fg = light_fg
c.hints.border = f"2px solid {accent}"
c.fonts.hints = "bold 16px default_family"

c.colors.messages.error.bg = red
c.colors.messages.error.border = "transparent"
c.colors.messages.error.fg = light_fg
c.colors.messages.info.bg = bg
c.colors.messages.info.border = "transparent"
c.colors.messages.info.fg = fg
c.colors.messages.warning.bg = yellow_bg
c.colors.messages.warning.border = "transparent"
c.colors.messages.warning.fg = light_fg

c.colors.prompts.bg = bg
c.colors.prompts.border = f'2px solid {fg}'
c.colors.prompts.fg = fg
c.colors.prompts.selected.bg = bg
c.colors.prompts.selected.fg = accent

c.colors.webpage.bg = bg


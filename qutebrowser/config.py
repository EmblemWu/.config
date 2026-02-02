config.load_autoconfig()

config.unbind('d')
config.unbind('u')
config.unbind('<Ctrl-e>', mode='insert')

config.bind('d', 'scroll-page 0 0.5')
config.bind('u', 'scroll-page 0 -0.5')

config.bind('x', 'tab-close')
config.bind('X', 'undo')

config.bind('<Ctrl-p>', 'completion-item-focus --history prev', mode='command')
config.bind('<Ctrl-n>', 'completion-item-focus --history next', mode='command')

config.set('zoom.default', '125%')

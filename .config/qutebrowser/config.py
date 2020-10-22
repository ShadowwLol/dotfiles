# Dark mode
config.set('colors.webpage.prefers_color_scheme_dark', True)
config.set('colors.webpage.bg', 'black')
config.set('colors.webpage.darkmode.enabled', True)

from qutebrowser.api import interceptor

# Youtube adblock
def filter_yt(info: interceptor.Request):
    """Block the given request if necessary."""
    url = info.request_url
    if (url.host() == 'www.youtube.com' and
        url.path() == '/get_video_info' and
            '&adformat=' in url.query()):
        info.block()

interceptor.register(filter_yt)

# block autoplay
config.set('content.autoplay', False)
# Cookies
config.set('content.cookies.accept', 'no-unknown-3rdparty')
# Notifications
config.set('content.notifications', False)
# Tabs
config.set('colors.tabs.even.bg', '#232323')
config.set('colors.tabs.odd.bg', '#232323')

# Zoom default
config.set('zoom.default', 85)

# block javascript
config.set('content.javascript.enabled', True)

# Context Menu
config.set('colors.contextmenu.disabled.bg', '#191F2B')
config.set('colors.contextmenu.disabled.fg', '#989898')
config.set('colors.contextmenu.menu.bg', '#191F2B')
config.set('colors.contextmenu.menu.fg', '#FFFFFF')
config.set('colors.contextmenu.selected.bg', '#191F2B')
config.set('colors.contextmenu.selected.fg', '#989898')

# Download audio and video
config.bind('XY', 'hint links userscript youtube-dl')
config.bind('Xy', 'spawn --userscript youtube-dl')

# Watch videos in mpv
config.bind('XS', 'hint url userscript ytmpv')
config.bind('Xs', 'spawn --userscript ytmpv')


#open video in hints            bind æ hint links spawn tsp mpv {hint-url}
#open currently playing video            bind Æ spawn tsp mpv {url}

#download video in hints
#config.bind('XY','hint links spawn youtube-dl -o "~/Videos/Downloads/%(title)s.%(ext)s" --restrict-filenames {hint-url}')

#download currently playing video
#config.bind('Xy','spawn youtube-dl -o "~/Videos/Downloads/%(title)s.%(ext)s" --restrict-filenames {url}')

#download music in hints
#config.bind('XS','hint links spawn youtube-dl -o "~/Music/Downloads/%(title)s.%(ext)s" -x --audio-quality 0 --audio-format "mp3" --restrict-filenames {hint-url}')

#download currently playing music
#config.bind('Xs','spawn youtube-dl -o "~/Music/Downloads/%(title)s.%(ext)s" -x --audio-quality 0 --audio-format "mp3" --restrict-filenames {url}')

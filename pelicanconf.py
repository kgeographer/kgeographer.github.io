AUTHOR = 'Karl Grossner, PhD'
SITENAME = 'kgeographer'
SITESUBTITLE = 'Karl Grossner, PhD'
SITEURL = "http://localhost"
# SITEURL = ""
# RELATIVE_URLS = False
RELATIVE_URLS = True


THEME = "themes/notmyidea"

PATH = "content"

PAGE_SAVE_AS = '{slug}/index.html'
PAGE_URL = '{slug}/'

DISPLAY_CATEGORIES_ON_MENU = False
MENUITEMS = [
    ("Research", "/category/research/"),
    ("Personal", "/category/personal/"),
    ("CV", "/cv.html"),
]


THEME_STATIC_DIR = 'static'
EXTRA_PATH_METADATA = {'extra/custom.css': {'path': 'static/custom.css'}}

CATEGORY_SAVE_AS = 'category/{slug}/index.html'
CATEGORY_URL = 'category/{slug}/'

# MENUITEMS = [
#     ("Research", "/folklore-vectors/"),
#     ("CV", "/cv/"),
#     ("Personal", "/page-turning/"),
# ]

TIMEZONE = 'Europe/Rome'

DEFAULT_LANG = 'en'

# Feed generation is usually not desired when developing
FEED_ALL_ATOM = None
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None
AUTHOR_FEED_ATOM = None
AUTHOR_FEED_RSS = None

# Blogroll
LINKS = (
    ("Github", "https://github.com/kgeographer"),
    ("World Historical Gazetteer", "https://whgazetteer")
)

# Social widget
SOCIAL = (
    ("@kgeographer on Bluesky", "https://bsky.app/profile/kgeographer.bsky.social"),
    ("@kgeographer on Mastodon", "https://mas.to/@kgeographer"),
)

DEFAULT_PAGINATION = 5

# Uncomment following line if you want document-relative URLs when developing
# RELATIVE_URLS = True

AUTHOR = 'Karl Grossner, PhD'
SITENAME = 'kgeographer'
SITESUBTITLE = 'Karl Grossner, PhD'
SITEURL = ""
RELATIVE_URLS = False
# RELATIVE_URLS = True

# Put the article index under /blog/ instead of at the site root
INDEX_SAVE_AS = 'blog/index.html'

THEME = "themes/notmyidea"
THEME_STATIC_DIR = 'static'

PATH = "content"

PAGE_SAVE_AS = '{slug}/index.html'
PAGE_URL = '{slug}/'

DISPLAY_PAGES_ON_MENU = False
DISPLAY_CATEGORIES_ON_MENU = False

MENUITEMS = [
    ("Home", "/"),
    ("Portfolio", "/portfolio/"),
    ("Computing Place", "/computing-place/"),
    ("Blog", "/category/research/"),
    ("Personal", "/category/personal/"),
    ("CV", "/cv/"),
]

WITH_FUTURE_DATES = True

PAGE_PATHS = ['projects', 'pages']
STATIC_PATHS = ['images', 'extra', 'pubs']
THEME_STATIC_DIR = 'static'
EXTRA_PATH_METADATA = {
    'extra/custom.css': {'path': 'static/custom.css'},
    'extra/Klee-ManHead.png': {'path': 'Klee-ManHead.png'},
}

CATEGORY_SAVE_AS = 'category/{slug}/index.html'
CATEGORY_URL = 'category/{slug}/'

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

MARKDOWN = {
    'extensions': [
        'markdown.extensions.extra',
        'markdown.extensions.codehilite',
        'markdown.extensions.meta',
        'markdown.extensions.attr_list',
    ]
}

# Uncomment following line if you want document-relative URLs when developing
# RELATIVE_URLS = True

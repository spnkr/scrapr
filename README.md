Get HTML web pages via a cache. Don't get banned any more. Get the google cache for a url. Cache saved in redis or mysql.

## Install
~~~
gem 'scrapr'
~~~

## Configure
~~~
Scrapr.content_expires_after = '24h'  #default
Scrapr.cache_store = :redis           #experimental
Scrapr.cache_store = :active_record   #default
~~~


## Get a page
~~~
html = Scrapr.get "www.google.com"
~~~


## Return a mechanize object
~~~
page = Scrapr.get "www.google.com", :mechanize
page = Scrapr.mechanize "www.google.com"

~~~


## Get the google cache
~~~
html = Scrapr.get "www.apple.com", :google_cache
~~~


## Search google
~~~
html = Scrapr.google_search "terms here"
~~~
IronCache Rails Support Client
-------------


Using As Rails Store
====================

You can use IronCache as any other rails store. Put iron.json into your project's config dir, add iron_cache to Gemfile and you are ready to go.

    config.cache_store = :iron_cache_store

Alternatively, you can supply project_id and token in code.

    config.cache_store = :iron_cache_store, :project_id => 'XXX', :token => 'YYY'


Using As Rails Session Store
====================

You can use IronCache as any other rails session store. Put iron.json into your project's config dir, add iron_cache to Gemfile and you are ready to go.

`config/initializers/session_store.rb` :

```ruby
AppName::Application.config.session_store :iron_cache_store
```

Alternatively, you can supply project_id and token in code.

```ruby
AppName::Application.config.session_store :iron_cache,
                                          project_id: 'XXX',
                                          token: 'YYY',
                                          namespace: 'other-cache-name',
                                          expires_in: 7200
```


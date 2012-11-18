# IronCache Rails Support Client

## Getting Started

You'll need an account at [Iron.io](http://www.iron.io) first.

Then add this gem to your Gemfile:

```ruby
gem 'iron_cache_rails'
```

## Using As Rails Store

You can use IronCache as any other rails store. Put iron.json into your project's config dir, add iron_cache_rails to Gemfile and you are ready to go.

```ruby
config.cache_store = :iron_cache
```

Alternatively, you can supply project_id and token in code.

```ruby
config.cache_store = :iron_cache, project_id: 'XXX', token: 'YYY'
```

## Using As Rails Session Store

You can use IronCache as any other rails session store. Put iron.json into your project's config dir, add iron_cache_rails to Gemfile and you are ready to go.

`config/initializers/session_store.rb` :

```ruby
AppName::Application.config.session_store :iron_cache
```

Alternatively, you can supply project_id and token in code.

```ruby
AppName::Application.config.session_store :iron_cache,
                                          project_id: 'XXX',
                                          token: 'YYY',
                                          namespace: 'other-cache-name',
                                          expires_in: 7200
```


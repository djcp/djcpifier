# Heroku Add-on

Sinatra-based Heroku Add-on provisioning service, generated with the
[Pliny](https://github.com/interagent/pliny) gem.

For more information please refer to the Pliny gem docs.

## Getting Started

```sh-session
# fork it!
git clone https://github.com/<your account>/djcpifier
bin/setup
kensa init
#edit addon-manifest.json in your favorite editor
kensa push
```

### addon-manifest.json

**id**

Set the value for `id` to a lowercase, URL-friendly version of your add-on's
name.

_Choose wisely; once your add-on has been created under this name, it cannot be
changed._

**api: config_vars**

If you wish to provide configuration variables to applications that install
your add-on, include every uppercase variable name here. You _must_ list every
variable you will send in response to a provision request, or your response
will be rejected, and installation will fail for the customer.

If your add-on does not rely on providing environment variables, then you do
not need to list config vars here.

### Using Kensa to test your service

Refer to the [Building a Heroku Add-on](https://devcenter.heroku.com/articles/building-a-heroku-add-on) article for instructions and how to use kensa to test your add-on service.

tl;dr version:

        # make sure your .env makes sense, start this app via heroku local
        # run all kensa tests
        kensa test

        # run the kensa acceptance tests
        kensa kensa run ruby spec/test_djcpifier_kensa.rb

### Initializing and using postgres extensions on linux

If you're using postgres on linux (rather than osx), you're probably not using
a superuser account during development.  This means the database init run
during `./bin/setup` will fail due to insufficient privileges.

The easiest fix is to add the relevant procedural languages to `template1` as
the postgres superuser, and then re-run `./bin/setup`.

        sudo -u postgres psql template1
        psql# create extension "plpgsql";
        psql# create extension "uuid-ossp";

## License

MIT License. See [LICENSE](https://github.com/heroku/addon-template/blob/master/LICENSE).

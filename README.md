<!--
SPDX-FileCopyrightText: 2020 Felix Wolfsteller

SPDX-License-Identifier: AGPL-3.0-or-later
-->

# NextcloudShareGraph

Render a graph of <del>shared files</del> something of a nextcloud (18) (mysql) database with graphviz.

## Warning!!!

This piece of software is a total hack. Its not a proper script, because
abstractions are done at the wrong level. Its not a proper app either, because
of partly imperative and script-like programming, neither. It likely violates
most programming desing principles you can find.

There is a specific usecase without budget.

It is also **unlikely that somebody sponsors somebody (me)** into making this
into anything really useful.

I share it because it might inspire someone to do it right (which also means to
integrate it into Nextcloud, or at least have it servable via HTTP).

If it werent Ruby, I'd probably hate every single unicode character of it.

This repo is also in WIP state, so I assume that the API, configuration keys
etc. might change in the future.

## Background

In a somewhat messy setup, I needed some insight into given users, groups,
group-folders, persistent-user-shares and so on. Besides that a visual
representation might help me myself I also thought that it would aid me in
educating the actual users.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'nextcloud_share_graph'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install nextcloud_share_graph

## Usage

### Configuration

Configuration happens in `nextcloud_share_graph.conf.yml` (yep thats weird).
Following keys are supported atm:

```yaml
db:
  host: 127.0.0.1
  name: nextcloud
  port: 3306
  user: nextcloudread
  password: nextcloudreadpassword
```

### Execution

```bash
# magic
```

## Development

### New style

Checkout, run `bundle`, run `bundle console` to interact with the code.

### Old style

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

### Tests

I wish.

## License headers

Using FSFEs [reuse](https://reuse.software) headers for compliance (should be
[AGPLv3+](LICENSES/AGPL-3.0-or-later.txt) mostly).

## Contributing

Bug reports and pull requests are very welcome on GitHub at
https://github.com/ecovillage/nextcloud_share_graph. This project is intended
to be a safe, welcoming space for collaboration, and contributors are expected
to adhere to the [code of conduct](https://github.com/ecovillage/nextcloud_share_graph/blob/master/CODE_OF_CONDUCT.md).

For a pleasant experience, create a github issue or drop us a line before diving
deep.

Code is released under the [AGPLv3+](LICENSES/AGPL-3.0-or-later.txt), Copyright
2020 Felix Wolfsteller. In case of contributions, copyright-transfer is assumed
(for questions, get in touch).


## Code of Conduct

Everyone interacting in the NextcloudShareGraph project's codebases and issue trackers is expected to follow the [code of conduct](https://github.com/ecovillage/nextcloud_share_graph/blob/master/CODE_OF_CONDUCT.md).

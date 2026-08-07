# Dependency Updates

This site is built with Jekyll and Bundler. Use the Ruby version in
`.ruby-version` locally so dependency resolution matches GitHub Actions.

## Local Ruby setup

Install the pinned Ruby with rbenv, then install the bundle:

```bash
brew install rbenv ruby-build
rbenv install 4.0.5
rbenv local 4.0.5
gem install bundler
bundle install
bundle exec jekyll build
```

If your shell does not initialize rbenv, add the command shown by `rbenv init`.

## Dependency maintenance

```bash
bundle install
bundle outdated
bundle update --bundler
bundle update
```

To update selected dependencies, for example:

```bash
bundle update jekyll jekyll-feed
```

Before pushing dependency updates, run:

```bash
gem install bundler
bundle install
bundle exec jekyll build
```

The shared theme is temporarily pinned to its `theme-updates-07-2026` branch.
Keep that branch pin until the coordinated theme and site release is complete.

# aptly-formula
Install and configure [aptly](https://www.aptly.info/)

## Development
Fork the repo, clone that repo, then make a new branch.

Install and setup brew:
```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

```
brew install cask
brew cask install vagrant
```

```
cd <formula dir>
bundle install
```
or
```
sudo gem install test-kitchen
sudo gem install kitchen-vagrant
sudo gem install kitchen-salt
```

Run a converge on the default configuration:
```
kitchen converge default
```

Make sure the tests pass:
```
kitchen test
```

Then commit and push the changes. Finally, open a PR.

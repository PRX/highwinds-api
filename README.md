# Highwinds::Api  [![Gem Version](https://badge.fury.io/rb/highwinds-api.svg)](http://badge.fury.io/rb/highwinds-api)

This is a Ruby implementation of Highwinds REST API.

## Installation

Add this line to your application's Gemfile:

    gem 'highwinds-api'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install highwinds-api

## Usage

In order to use this gem follow the installation instructions and properly set your credentials:

  	username = "<Your username>"
  	password = "<Your password>"
	HighwindsAPI.set_credentials(username, password)

Purge by url:

	HighwindsAPI::Content.purge_url("http://path.to.folder/or_a_file")

Purge by url recursively:

	HighwindsAPI::Content.purge_url("http://path.to.folder/", true)

Purge folder by path (recursively):

	HighwindsAPI::Content.purge_path("a1b2c3d4", "folder/")
	
Purge file by path:

	HighwindsAPI::Content.purge_path("a1b2c3d4", "folder/file")


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

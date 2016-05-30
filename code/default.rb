include_recipe 'apt'
include_recipe 'fail2ban'

package ['ruby', 'ruby-dev', 'build-essential', 'git', 'libsqlite3-dev', 'postgresql-server-dev-9.4', 'nodejs']

ruby_gem 'bundler'
ruby_gem 'execjs'

include_recipe 'raspberry::access_page'

source 'https://rubygems.org'

gemspec

gem 'dry-types', '~> 0.13.2'

gem 'rom', '~> 4.2' do
  gem 'rom-core', '~> 4.2', '>= 4.2.0'
  gem 'rom-mapper', '~> 1.2', '>= 1.2.1'
  gem 'rom-repository', '~> 2.0', '>= 2.0.2', group: :tools
end

group :test do
  gem 'inflecto'
  gem 'codeclimate-test-reporter', require: false, platforms: :mri
  gem 'dry-struct', '~> 0.5'
  gem 'byebug', platforms: :mri
end

group :tools do
  gem 'rubocop'
  gem 'rubocop-rspec'

  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-rubocop'
end

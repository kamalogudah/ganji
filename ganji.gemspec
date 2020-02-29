
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ganji/version"
Gem::Specification.new do |spec|
  spec.name          = "ganji"
  spec.version       = Ganji::VERSION
  spec.authors       = ["kamalogudah", "mboya"]
  spec.email         = ["mcpaul2058@gmail.com", "mboyaberry@gmail.com"]

  spec.summary       = %q{ Kenya Payments in Ruby.}
  spec.description   = %q{ A gem to work with different payment solutions in Ruby.}
  spec.homepage      = "https://github.com/kamalogudah/ganji"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/kamalogudah/ganji"
    spec.metadata["changelog_uri"] = "https://github.com/kamalogudah/ganji/blob/master/CHANGELOG.md"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features|lib)/}) }
  end

  # spec.files = ["lib/ganji.rb"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'httparty', '~> 0.13.7'
  spec.add_dependency 'redis-rack', '~> 2.0', '>= 2.0.6'
  spec.add_dependency 'redis-namespace', '~> 1.6'

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_development_dependency 'pry', '~> 0.12.2'
  spec.add_development_dependency 'pry-nav', '~> 0.3.0'
  spec.add_development_dependency 'webmock', '~> 3.7', '>= 3.7.6'
  spec.add_development_dependency "dotenv", "2.7.5"
end

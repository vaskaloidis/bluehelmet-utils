
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "bluehelmet/version"

Gem::Specification.new do |spec|
  spec.name          = "bluehelmet-utils"
  spec.version       = Bluehelmet::VERSION
  spec.authors       = ["vaskaloidis"]
  spec.email         = ["vas.kaloidis@gmail.com"]

  spec.summary       = %q{Utils and helpers for Blue Helmet Projects}
  spec.description   = %q{HTML Tag View Helpers, and String Core-Extensions.}
  spec.homepage      = "http://www.bluehelmet.software"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "http://www.github.com/vaskaloidis/bluehelmet-utils"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rspec", "~> 3.2"
  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec-nc"
  spec.add_dependency "activesupport"
  spec.add_dependency "actionview"
  spec.add_dependency "os"

end

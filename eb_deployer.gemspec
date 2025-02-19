# -*- encoding: utf-8 -*-
Gem::Specification.new do |gem|
  gem.authors       = ["wpc", "betarelease", "xli"]
  gem.email         = ["alex.hal9000@gmail.com", "sudhindra.r.rao@gmail.com", 'swing1979@gmail.com']
  gem.description   = %q{For automating Blue-Green deployment flows on Elastic Beanstalk.}
  gem.summary       = %q{Low friction deployments should be a breeze. Elastic Beanstalk provides a great foundation for performing Blue-Green deployments, and EbDeployer add a missing top to automate the whole flow out of the box.}
  gem.homepage      = "https://github.com/ThoughtWorksStudios/eb_deployer"
  gem.license       = 'MIT'

  gem.add_runtime_dependency 'aws-sdk-cloudformation', '~> 1.55', '>= 1.55.0'
  gem.add_runtime_dependency 'aws-sdk-elasticbeanstalk', '~> 1.44', '~> 1.44.0'
  gem.add_runtime_dependency 'aws-sdk-s3', '~> 1', '~> 1.99.0'

  gem.files         = `git ls-files`.split($\).reject {|f| f =~ /^samples\// }
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "eb_deployer"
  gem.require_paths = ["lib"]
  gem.version       = "0.7.0"
end

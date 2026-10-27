Pod::Spec.new do |s|
  s.name             = 'APIVerveTestCardGenerator'
  s.version          = '1.2.3'
  s.summary          = 'Test Card Generator creates card numbers that pass format and checksum validation, for testing checkout forms and payment UIs across...'
  s.description      = <<-'DESC'
Test Card Generator creates card numbers that pass format and checksum validation, for testing checkout forms and payment UIs across major networks. They aren't real cards: no bank issued them, and they can't be charged or used to buy anything. Specify a brand to receive card numbers, security codes, expiration dates, issuers, and masked strings.

This iOS/macOS SDK provides a convenient way to access the Test Card Generator from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/cardgenerator?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/cardgenerator-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveTestCardGenerator/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end

Pod::Spec.new do |s|

  s.name         = 'AWSCloudWatch'
  s.version      = '2.1.1'
  s.summary      = 'Amazon Web Services SDK for OSX.'

  s.description  = 'The AWS SDK for OSX provides a library, code samples, and documentation for developers to build connected mobile applications using AWS.'

  s.homepage     = 'http://aws.amazon.com/sdkforios'
  s.license      = 'Apache License, Version 2.0'
  s.author       = { 'Amazon Web Services' => 'amazonwebservices' }
  s.platform     = :osx, '10.9'
  s.source       = { :git => 'https://github.com/jodyhagins/aws-sdk-ios.git',
                     :tag => 'osx'}
  s.requires_arc = true
  s.dependency 'AWSCore', '2.1.1'
  s.dependency 'Bolts', '~> 1.1.0'
  s.dependency 'Mantle', '~> 1.4'
  
  s.source_files = 'AWSCloudWatch/*.{h,m}'
  s.resources = ['AWSCloudWatch/Resources/*.json']
end

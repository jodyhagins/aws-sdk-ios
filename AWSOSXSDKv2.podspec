Pod::Spec.new do |s|

  s.name         = 'AWSOSXSDKv2'
  s.version      = '2.1.1'
  s.summary      = 'Amazon Web Services SDK for OSX.'

  s.description  = 'The AWS SDK for OSX provides a library, code samples, and documentation for developers to build connected mobile applications using AWS.'

  s.homepage     = 'http://aws.amazon.com/sdkforios'
  s.license      = 'Apache License, Version 2.0'
  s.author       = { 'Amazon Web Services' => 'amazonwebservices' }
  s.platform     = :osx, '10.9'
  s.source       = { :git => 'https://github.com/jodyhagins/aws-sdk-ios.git',
                     :tag => 'osx'}
  s.frameworks   = 'Foundation', 'SystemConfiguration', 'CoreServices'
  s.requires_arc = true

  s.subspec 'AWSCore' do |x|
    x.dependency 'Bolts', '~> 1.1.0'
    x.dependency 'Mantle', '~> 1.4'
    x.dependency 'XMLDictionary', '~> 1.4.0'
    x.dependency 'UICKeyChainStore', '~> 2.0'
    x.dependency 'Reachability', '~> 3.1'
    x.dependency 'GZIP', '~> 1.0.3'

    x.source_files = 'AWSCore/*.{h,m}', 'AWSCore/**/*.{h,m}'
    x.resources = ['AWSCore/**/Resources/*.json']
    x.private_header_files = 'AWSCore/MobileAnalytics/Internal/*.h'
  end

  s.subspec 'AutoScaling' do |x|
    x.dependency 'AWSOSXSDKv2/AWSCore'
    x.dependency 'Bolts', '~> 1.1.0'
    x.dependency 'Mantle', '~> 1.4'

    x.source_files = 'AWSAutoScaling/*.{h,m}'
    x.resources = ['AWSAutoScaling/Resources/*.json']
  end

  s.subspec 'CloudWatch' do |x|
    x.dependency 'AWSOSXSDKv2/AWSCore'
    x.dependency 'Bolts', '~> 1.1.0'
    x.dependency 'Mantle', '~> 1.4'

    x.source_files = 'AWSCloudWatch/*.{h,m}'
    x.resources = ['AWSCloudWatch/Resources/*.json']
  end

  s.subspec 'DynamoDB' do |x|
    x.dependency 'AWSOSXSDKv2/AWSCore'
    x.dependency 'Bolts', '~> 1.1.0'
    x.dependency 'Mantle', '~> 1.4'

    x.source_files = 'AWSDynamoDB/*.{h,m}'
    x.resources = ['AWSDynamoDB/Resources/*.json']
  end

  s.subspec 'EC2' do |x|
    x.dependency 'AWSOSXSDKv2/AWSCore'
    x.dependency 'Bolts', '~> 1.1.0'
    x.dependency 'Mantle', '~> 1.4'

    x.source_files = 'AWSEC2/*.{h,m}'
    x.resources = ['AWSEC2/Resources/*.json']
  end

  s.subspec 'ElasticLoadBalancing' do |x|
    x.dependency 'AWSOSXSDKv2/AWSCore'
    x.dependency 'Bolts', '~> 1.1.0'
    x.dependency 'Mantle', '~> 1.4'

    x.source_files = 'AWSElasticLoadBalancing/*.{h,m}'
    x.resources = ['AWSElasticLoadBalancing/Resources/*.json']
  end

  s.subspec 'Kinesis' do |x|
    x.dependency 'AWSOSXSDKv2/AWSCore'
    x.dependency 'Bolts', '~> 1.1.0'
    x.dependency 'Mantle', '~> 1.4'
    x.dependency 'TMCache', '~> 1.2.1'
    x.dependency 'FMDB', '~> 2.4'

    x.source_files = 'AWSKinesis/*.{h,m}'
    x.resources = ['AWSKinesis/Resources/*.json']
  end

  s.subspec 'S3' do |x|
    x.dependency 'AWSOSXSDKv2/AWSCore'
    x.dependency 'Bolts', '~> 1.1.0'
    x.dependency 'Mantle', '~> 1.4'
    x.dependency 'TMCache', '~> 1.2.1'

    x.source_files = 'AWSS3/*.{h,m}'
    x.resources = ['AWSS3/Resources/*.json']
  end

  s.subspec 'SES' do |x|
    x.dependency 'AWSOSXSDKv2/AWSCore'
    x.dependency 'Bolts', '~> 1.1.0'
    x.dependency 'Mantle', '~> 1.4'

    x.source_files = 'AWSSES/*.{h,m}'
    x.resources = ['AWSSES/Resources/*.json']
  end

  s.subspec 'SimpleDB' do |x|
    x.dependency 'AWSOSXSDKv2/AWSCore'
    x.dependency 'Bolts', '~> 1.1.0'
    x.dependency 'Mantle', '~> 1.4'

    x.source_files = 'AWSSimpleDB/*.{h,m}'
    x.resources = ['AWSSimpleDB/Resources/*.json']
  end

  s.subspec 'SNS' do |x|
    x.dependency 'AWSOSXSDKv2/AWSCore'
    x.dependency 'Bolts', '~> 1.1.0'
    x.dependency 'Mantle', '~> 1.4'

    x.source_files = 'AWSSNS/*.{h,m}'
    x.resources = ['AWSSNS/Resources/*.json']
  end

  s.subspec 'SQS' do |x|
    x.dependency 'AWSOSXSDKv2/AWSCore'
    x.dependency 'Bolts', '~> 1.1.0'
    x.dependency 'Mantle', '~> 1.4'

    x.source_files = 'AWSSQS/*.{h,m}'
    x.resources = ['AWSSQS/Resources/*.json']
  end
end

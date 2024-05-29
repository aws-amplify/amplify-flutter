#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint amplify_datastore.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'amplify_datastore'
  s.version          = '0.0.1'
  s.summary          = 'The DataStore module for Amplify Flutter.'
  s.description      = <<-DESC
The DataStore module for Amplify Flutter.
                       DESC
  s.homepage = 'https://github.com/aws-amplify/amplify-flutter'
  s.license = 'Apache License, Version 2.0'
  s.author = { 'Amazon Web Services' => 'amazonwebservices' }
  s.source = { :git => 'https://github.com/aws-amplify/amplify-flutter.git' }
  s.source_files = 'Classes/**/*.{swift}',  'internal/Amplify/**/*.{swift}', 'internal/AWSPluginsCore/**/*.{swift}', 'internal/AWSDataStorePlugin/**/*.{swift}'
  s.platform = :ios, '13.0'
  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
  s.swift_version = '5.9'
  
  s.dependency 'Flutter'
  s.dependency 'Starscream', '4.0.4'

  # Internal Amplify Swift Plugins
  s.subspec 'Amplify' do |amplify|
    amplify.source_files = 'internal/Amplify/**/*' 
  end

  s.subspec 'AWSPluginsCore' do |awsPluginsCore|
    awsPluginsCore.source_files = 'internal/AWSPluginsCore/**/*'  
    awsPluginsCore.dependency 'amplify_datastore/Amplify'
  end

  s.subspec 'AWSDataStorePlugin' do |awsDataStorePlugin|
    awsDataStorePlugin.source_files = 'internal/AWSDataStorePlugin/**/*'  
    awsDataStorePlugin.dependency 'amplify_datastore/AWSPluginsCore'
    awsDataStorePlugin.dependency 'amplify_datastore/Amplify'
    awsDataStorePlugin.dependency 'SQLite.swift', '0.13.2'
  end

end

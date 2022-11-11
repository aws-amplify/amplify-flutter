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
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'Amplify', '1.28.3'
  s.dependency 'AmplifyPlugins/AWSDataStorePlugin', '1.28.3'
  s.dependency 'amplify_flutter_ios'
  s.platform = :ios, '13.0'

  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
  s.swift_version = '5.0'
end

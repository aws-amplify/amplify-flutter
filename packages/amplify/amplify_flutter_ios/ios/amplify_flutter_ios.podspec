#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint amplify_flutter.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'amplify_flutter_ios'
  s.version          = '0.0.1'
  s.summary          = 'The top level module for Amplify Flutter.'
  s.description      = <<-DESC
  The top level module for Amplify Flutter.
                          DESC
  s.homepage = 'https://github.com/aws-amplify/amplify-flutter'
  s.license = 'Apache License, Version 2.0'
  s.author = { 'Amazon Web Services' => 'amazonwebservices' }
  s.source = { :git => 'https://github.com/aws-amplify/amplify-flutter.git' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'Amplify', '1.29.1'
  s.dependency 'AWSPluginsCore', '1.29.1'

  s.platform = :ios, '11.0'
  s.swift_version = '5.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
end

#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint amplify_auth_cognito.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'amplify_auth_cognito'
  s.version          = '0.0.1'
  s.summary          = 'The auth module for Amplify Flutter.'
  s.description      = <<-DESC
  The auth module for Amplify Flutter.
                       DESC
  s.homepage = 'https://github.com/aws-amplify/amplify-flutter'
  s.license = 'Apache License, Version 2.0'
  s.author = { 'Amazon Web Services' => 'amazonwebservices' }
  s.source = { :git => 'https://github.com/aws-amplify/amplify-flutter.git' }
  s.source_files = 'Classes/**/*'

  s.ios.dependency 'Flutter'
  s.osx.dependency 'FlutterMacOS'

  # These are needed to support async/await and ASWebAuthenticationSession
  s.ios.deployment_target = '13.0'
  s.osx.deployment_target = '10.15'
  s.swift_version = '5.5'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
end

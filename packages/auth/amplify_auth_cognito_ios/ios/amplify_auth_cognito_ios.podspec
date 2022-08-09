#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint amplify_auth_cognito.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'amplify_auth_cognito_ios'
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
  s.dependency 'Flutter'
  s.dependency 'Amplify', '1.28.0'
  s.dependency 'AmplifyPlugins/AWSCognitoAuthPlugin', '1.28.0'
  s.dependency 'ObjectMapper'
  s.dependency 'amplify_core'
  s.platform = :ios, '11.0'

  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
  s.swift_version = '5.0'

end

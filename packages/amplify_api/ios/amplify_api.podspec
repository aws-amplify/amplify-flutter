load 'dependencies.rb'

#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint amplify_api.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'amplify_api'
  s.version          = '0.0.1'
  s.summary          = 'The API module for Amplify Flutter.'
  s.description      = <<-DESC
The API module for Amplify Flutter.
                       DESC
  s.homepage         = 'https://github.com/aws-amplify/amplify-flutter'
  s.license          = 'Apache License, Version 2.0'
  s.author           = { 'Amazon Web Services' => 'amazonwebservices' }
  s.source           = { :git => 'https://github.com/aws-amplify/amplify-flutter.git' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'Amplify', '1.23.0'
  s.dependency 'AmplifyPlugins/AWSAPIPlugin', '1.23.0'
  s.dependency 'amplify_core'
  s.dependency 'SwiftLint'
  s.dependency 'SwiftFormat/CLI'
  s.platform = :ios, '11.0'

  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
  s.swift_version = $swift_version
  s.script_phases = $default_script_phases
end

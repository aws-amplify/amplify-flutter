#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint amplify_flutter_poc.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'amplify_flutter_poc'
  s.version          = '0.0.1'
  s.summary          = 'A new flutter plugin project.'
  s.description      = <<-DESC
A new flutter plugin project.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'Amplify', '1.15.6'
  s.dependency 'AWSPluginsCore', '1.15.6'
  s.dependency 'AmplifyPlugins/AWSCognitoAuthPlugin', '1.15.6'
  s.dependency 'amplify_core'
  s.dependency 'SwiftLint'
  s.dependency 'SwiftFormat/CLI'
  s.platform = :ios, '11.0'
  s.platform = :ios, '8.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end

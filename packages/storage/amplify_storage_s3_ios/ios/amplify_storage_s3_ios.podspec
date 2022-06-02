#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint amplify_storage_s3.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'amplify_storage_s3_ios'
  s.version          = '0.0.1'
  s.summary          = 'Amplify Flutter AWS S3 Storage plugin'
  s.description      = <<-DESC
  The Amplify Flutter Storage category plugin using the AWS S3 provider.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'Amplify', '1.23.0'
  s.dependency 'AmplifyPlugins/AWSS3StoragePlugin', '1.23.0'
  s.dependency 'amplify_flutter_ios'
  s.platform = :ios, '11.0'

  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
  s.swift_version = '5.0'
end

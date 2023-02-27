#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint amplify_push_notifications.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'amplify_push_notifications'
  s.version          = '0.0.1'
  s.summary          = 'The iOS native module for amplify_push_notifications.'
  s.description      = <<-DESC
The iOS native module for amplify_push_notifications.
                       DESC
  s.homepage         = 'https://github.com/aws-amplify/amplify-flutter'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Amazon Web Services' => 'amazonwebservices' }
  s.source           = { :git => 'https://github.com/aws-amplify/amplify-flutter.git' }
  s.source_files     = 'Classes/**/*'
  s.platform         = :ios, '13.0'

  s.dependency 'Flutter'
  s.dependency 'amplify_flutter_ios'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end

#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint amplify_analytics_pinpoint.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'amplify_analytics_pinpoint'
  s.version          = '0.0.1'
  s.summary          = 'iOS implementation for Amplify Flutter Pinpoint Analytics Plugin'
  s.description      = <<-DESC
This code is the iOS part of the Amplify Flutter Pinpoint Analytics Plugin.  The Dart code of this plugin uses the method channel to communicate with this iOs code.
                       DESC
  s.homepage         = 'https://docs.amplify.aws/start/q/integration/flutter'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Amazon' => 'test@email.com'}
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'Amplify'
  s.dependency 'AmplifyPlugins/AWSPinpointAnalyticsPlugin'
  s.dependency 'amplify_core'
  s.platform = :ios, '11.0'

  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
  s.swift_version = '5.0'
end

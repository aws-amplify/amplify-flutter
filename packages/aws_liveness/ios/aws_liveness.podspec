#
# FaceLiveness (amplify-ui-swift-liveness) is distributed only via Swift Package
# Manager, so this plugin requires Flutter's Swift Package Manager integration
# on iOS. See aws_liveness/Package.swift. This podspec exists so CocoaPods-based
# tooling can resolve the plugin, but building with CocoaPods is not supported.
#
Pod::Spec.new do |s|
  s.name             = 'aws_liveness'
  s.version          = '0.0.1'
  s.summary          = 'AWS Face Liveness plugin for Flutter'
  s.description      = <<-DESC
A Flutter plugin for Amazon Rekognition Face Liveness using the Amplify UI
Face Liveness components.
                       DESC
  s.homepage         = 'https://github.com/aws-amplify/amplify-flutter'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Amazon Web Services' => 'amazonwebservices' }
  s.source           = { :path => '.' }
  s.source_files = 'aws_liveness/Sources/aws_liveness/**/*.swift'
  s.dependency 'Flutter'
  s.platform = :ios, '15.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.9'
  s.resource_bundles = {'aws_liveness_privacy' => ['aws_liveness/Sources/aws_liveness/PrivacyInfo.xcprivacy']}
end

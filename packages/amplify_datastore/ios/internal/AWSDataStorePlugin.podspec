#
#  Be sure to run `pod spec lint AWSS3StoragePlugin.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

# Version definitions
$AMPLIFY_VERSION = '0.0.1'
$AMPLIFY_RELEASE_TAG = "#{$AMPLIFY_VERSION}"

$AWS_SDK_VERSION = '2.33.0'
$OPTIMISTIC_AWS_SDK_VERSION = "~> #{$AWS_SDK_VERSION}"

Pod::Spec.new do |s|
  s.name         = 'AWSDataStorePlugin'
  s.version      = $AMPLIFY_VERSION
  s.summary      = 'Amazon Web Services Amplify for iOS.'

  s.description  = 'AWS Amplify for iOS provides a declarative library for application development using cloud services'

  s.homepage     = 'https://github.com/aws-amplify/amplify-ios'
  s.license      = 'Apache License, Version 2.0'
  s.author       = { 'Amazon Web Services' => 'amazonwebservices' }
  s.source       = { :git => 'https://github.com/aws-amplify/amplify-swift.git', :tag => $AMPLIFY_RELEASE_TAG }

  s.platform = :ios, '13.0'
  s.swift_version = '5.0'

  s.source_files = 'AWSDataStorePlugin/**/*.swift'
  s.dependency 'Amplify', $AMPLIFY_VERSION
  s.dependency 'AWSPluginsCore', $AMPLIFY_VERSION
  s.dependency 'SQLite.swift', '0.13.2'
end

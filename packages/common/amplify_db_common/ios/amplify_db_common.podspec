#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint amplify_db_common.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'amplify_db_common'
  s.version          = '0.0.1'
  s.summary          = 'Common utilities for working with databases such as SQLite.'
  s.description      = <<-DESC
Common utilities for working with databases such as SQLite.
                       DESC
  s.homepage         = 'https://github.com/aws-amplify/amplify-flutter'
  s.license          = 'Apache License, Version 2.0'
  s.author           = { 'Amazon Web Services' => 'amazonwebservices' }
  s.license          = { :file => '../LICENSE' }

  # TODO: Remove when DataStore iOS is no longer needed
  # Should match DataStore iOS: https://github.com/aws-amplify/amplify-swift/blob/v1/AmplifyPlugins.podspec#L55
  s.dependency 'SQLite.swift', '~> 0.13'

end

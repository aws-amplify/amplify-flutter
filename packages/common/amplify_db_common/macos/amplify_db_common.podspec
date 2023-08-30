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

  # Keep in sync with: https://github.com/simolus3/sqlite3.dart/blob/main/sqlite3_flutter_libs/macos/sqlite3_flutter_libs.podspec
  s.dependency 'sqlite3', '~> 3.43.0'
  s.dependency 'sqlite3/fts5'
  s.dependency 'sqlite3/perf-threadsafe'
  s.dependency 'sqlite3/rtree'

end

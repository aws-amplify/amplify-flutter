#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint aws_liveness.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'aws_liveness'
  s.version          = '0.0.1'
  s.summary          = 'AWS Face Liveness plugin for Flutter'
  s.description      = <<-DESC
A Flutter plugin for AWS Face Liveness detection using Amplify UI components.
Provides cross-platform face liveness verification for Android and iOS.
                       DESC
  s.homepage         = 'https://github.com/bhk97/aws_liveness_package.git
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Bhagirath' => 'bhagirath9778@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '14.0'  # iOS 14.0+ required for FaceLiveness

  # Amplify dependencies
  # IMPORTANT: These MUST be added via Swift Package Manager (SPM) in Xcode
  # The Face Liveness package is NOT available via CocoaPods
  # 
  # Required packages (add via File → Add Package Dependencies in Xcode):
  # 1. https://github.com/aws-amplify/amplify-ui-swift-liveness
  #    - Product: FaceLiveness
  # 2. https://github.com/aws-amplify/amplify-swift
  #    - Products: Amplify, AWSCognitoAuthPlugin
  #
  # See SETUP_GUIDE.md for detailed step-by-step instructions
  
  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 
    'DEFINES_MODULE' => 'YES', 
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386',
    'SWIFT_VERSION' => '5.9',
    # Enable module imports - critical for SPM modules
    'CLANG_ENABLE_MODULES' => 'YES',
    'ALWAYS_SEARCH_USER_PATHS' => 'YES',
    # Note: Framework linking is handled automatically by package_product_dependencies
    # configured in the Pods project. Explicit -framework flags would look for
    # .framework files that don't exist until SPM packages are built.
    'OTHER_LDFLAGS' => '$(inherited)',
    # Framework search paths - will be overridden by Podfile post_install hook
    # but set defaults here for safety
    'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${BUILD_DIR}/${CONFIGURATION}${EFFECTIVE_PLATFORM_NAME}" "${BUILT_PRODUCTS_DIR}" "${BUILT_PRODUCTS_DIR}/PackageFrameworks"',
    # Swift import paths for SPM modules
    'SWIFT_INCLUDE_PATHS' => '$(inherited) "${BUILD_DIR}/${CONFIGURATION}${EFFECTIVE_PLATFORM_NAME}" "${BUILT_PRODUCTS_DIR}" "${BUILT_PRODUCTS_DIR}/PackageFrameworks"'
  }
  s.swift_version = '5.9'
  
  # Note: Amplify and FaceLiveness are provided by the host app via Swift Package Manager.
  # The plugin links against these frameworks at runtime, but they must be added to the
  # host app's Xcode project via SPM (File → Add Package Dependencies).

  # If your plugin requires a privacy manifest, for example if it uses any
  # required reason APIs, update the PrivacyInfo.xcprivacy file to describe your
  # plugin's privacy impact, and then uncomment this line. For more information,
  # see https://developer.apple.com/documentation/bundleresources/privacy_manifest_files
  # s.resource_bundles = {'aws_liveness_privacy' => ['Resources/PrivacyInfo.xcprivacy']}
end

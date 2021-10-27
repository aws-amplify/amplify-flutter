#import "AmplifyTestFlutterPlugin.h"
#if __has_include(<amplify_test_flutter/amplify_test_flutter-Swift.h>)
#import <amplify_test_flutter/amplify_test_flutter-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "amplify_test_flutter-Swift.h"
#endif

@implementation AmplifyTestFlutterPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAmplifyTestFlutterPlugin registerWithRegistrar:registrar];
}
@end

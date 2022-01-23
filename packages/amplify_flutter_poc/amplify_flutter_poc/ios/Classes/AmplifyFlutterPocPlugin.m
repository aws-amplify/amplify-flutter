#import "AmplifyFlutterPocPlugin.h"
#if __has_include(<amplify_flutter_poc/amplify_flutter_poc-Swift.h>)
#import <amplify_flutter_poc/amplify_flutter_poc-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "amplify_flutter_poc-Swift.h"
#endif

@implementation AmplifyFlutterPocPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAmplifyFlutterPocPlugin registerWithRegistrar:registrar];
}
@end

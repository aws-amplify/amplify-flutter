#import "AmplifyApiPlugin.h"
#if __has_include(<amplify_api/amplify_api-Swift.h>)
#import <amplify_api/amplify_api-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "amplify_api-Swift.h"
#endif

@implementation AmplifyApiPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAmplifyApiPlugin registerWithRegistrar:registrar];
}
@end

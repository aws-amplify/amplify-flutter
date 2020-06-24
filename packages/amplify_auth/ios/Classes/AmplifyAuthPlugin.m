#import "AmplifyAuthPlugin.h"
#if __has_include(<amplify_auth/amplify_auth-Swift.h>)
#import <amplify_auth/amplify_auth-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "amplify_auth-Swift.h"
#endif

@implementation AmplifyAuthPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAmplifyAuthPlugin registerWithRegistrar:registrar];
}
@end

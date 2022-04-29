#import "AmplifyApi.h"
#if __has_include(<amplify_api_ios/amplify_api_ios-Swift.h>)
#import <amplify_api_ios/amplify_api_ios-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "amplify_api_ios-Swift.h"
#endif

@implementation AmplifyApi
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAmplifyApiPlugin registerWithRegistrar:registrar];
}
@end

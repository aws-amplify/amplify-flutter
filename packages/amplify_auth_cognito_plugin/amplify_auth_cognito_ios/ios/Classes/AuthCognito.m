#import "AuthCognito.h"
#if __has_include(<amplify_auth_cognito_ios/amplify_auth_cognito_ios-Swift.h>)
#import <amplify_auth_cognito_ios/amplify_auth_cognito_ios-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "amplify_auth_cognito_ios-Swift.h"
#endif

@implementation AuthCognito
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
    [SwiftAuthCognito registerWithRegistrar:registrar];
}
@end

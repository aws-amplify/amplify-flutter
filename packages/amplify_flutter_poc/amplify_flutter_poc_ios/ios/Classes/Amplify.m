#import "Amplify.h"
#if __has_include(<amplify_flutter_poc_ios/amplify_flutter_poc_ios-Swift.h>)
#import <amplify_flutter_poc_ios/amplify_flutter_poc_ios-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "amplify-Swift.h"
#endif

@implementation Amplify
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAmplify registerWithRegistrar:registrar];
}
@end

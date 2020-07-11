#import "AmplifyAnalyticsPinpointPlugin.h"
#if __has_include(<amplify_analytics_pinpoint/amplify_analytics_pinpoint-Swift.h>)
#import <amplify_analytics_pinpoint/amplify_analytics_pinpoint-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "amplify_analytics_pinpoint-Swift.h"
#endif

@implementation AmplifyAnalyticsPinpointPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAmplifyAnalyticsPinpointPlugin registerWithRegistrar:registrar];
}
@end

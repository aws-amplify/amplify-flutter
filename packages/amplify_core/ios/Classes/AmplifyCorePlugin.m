#import "AmplifyCorePlugin.h"
#if __has_include(<amplify_core/amplify_core-Swift.h>)
#import <amplify_core/amplify_core-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "amplify_core-Swift.h"
#endif

@implementation AmplifyCorePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAmplifyCorePlugin registerWithRegistrar:registrar];
}
@end

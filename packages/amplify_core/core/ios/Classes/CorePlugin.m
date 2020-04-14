#import "CorePlugin.h"
#if __has_include(<core/core-Swift.h>)
#import <core/core-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "core-Swift.h"
#endif

@implementation CorePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftCorePlugin registerWithRegistrar:registrar];
}
@end

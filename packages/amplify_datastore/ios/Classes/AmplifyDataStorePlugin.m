#import "AmplifyDataStorePlugin.h"
#if __has_include(<amplify_datastore/amplify_datastore-Swift.h>)
#import <amplify_datastore/amplify_datastore-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "amplify_datastore-Swift.h"
#endif

@implementation AmplifyDataStorePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAmplifyDataStorePlugin registerWithRegistrar:registrar];
}
@end

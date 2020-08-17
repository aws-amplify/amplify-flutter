#import "AmplifyStorageS3Plugin.h"
#if __has_include(<amplify_storage_s3/amplify_storage_s3-Swift.h>)
#import <amplify_storage_s3/amplify_storage_s3-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "amplify_storage_s3-Swift.h"
#endif

@implementation AmplifyStorageS3Plugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAmplifyStorageS3Plugin registerWithRegistrar:registrar];
}
@end

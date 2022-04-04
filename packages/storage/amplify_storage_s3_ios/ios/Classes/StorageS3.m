#import "StorageS3.h"
#if __has_include(<amplify_storage_s3_ios/amplify_storage_s3_ios-Swift.h>)
#import <amplify_storage_s3_ios/amplify_storage_s3_ios-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "amplify_storage_s3_ios-Swift.h"
#endif

@implementation StorageS3
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftStorageS3 registerWithRegistrar:registrar];
}
@end

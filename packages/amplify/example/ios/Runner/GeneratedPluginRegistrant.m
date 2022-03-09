//
//  Generated file. Do not edit.
//

// clang-format off

#import "GeneratedPluginRegistrant.h"

#if __has_include(<amplify_analytics_pinpoint/AmplifyAnalyticsPinpointPlugin.h>)
#import <amplify_analytics_pinpoint/AmplifyAnalyticsPinpointPlugin.h>
#else
@import amplify_analytics_pinpoint;
#endif

#if __has_include(<amplify_api/AmplifyApiPlugin.h>)
#import <amplify_api/AmplifyApiPlugin.h>
#else
@import amplify_api;
#endif

#if __has_include(<amplify_auth_cognito_ios/AuthCognito.h>)
#import <amplify_auth_cognito_ios/AuthCognito.h>
#else
@import amplify_auth_cognito_ios;
#endif

#if __has_include(<amplify_core/AmplifyCorePlugin.h>)
#import <amplify_core/AmplifyCorePlugin.h>
#else
@import amplify_core;
#endif

#if __has_include(<amplify_datastore/AmplifyDataStorePlugin.h>)
#import <amplify_datastore/AmplifyDataStorePlugin.h>
#else
@import amplify_datastore;
#endif

#if __has_include(<amplify_flutter/Amplify.h>)
#import <amplify_flutter/Amplify.h>
#else
@import amplify_flutter;
#endif

#if __has_include(<amplify_storage_s3/AmplifyStorageS3Plugin.h>)
#import <amplify_storage_s3/AmplifyStorageS3Plugin.h>
#else
@import amplify_storage_s3;
#endif

#if __has_include(<integration_test/IntegrationTestPlugin.h>)
#import <integration_test/IntegrationTestPlugin.h>
#else
@import integration_test;
#endif

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [AmplifyAnalyticsPinpointPlugin registerWithRegistrar:[registry registrarForPlugin:@"AmplifyAnalyticsPinpointPlugin"]];
  [AmplifyApiPlugin registerWithRegistrar:[registry registrarForPlugin:@"AmplifyApiPlugin"]];
  [AuthCognito registerWithRegistrar:[registry registrarForPlugin:@"AuthCognito"]];
  [AmplifyCorePlugin registerWithRegistrar:[registry registrarForPlugin:@"AmplifyCorePlugin"]];
  [AmplifyDataStorePlugin registerWithRegistrar:[registry registrarForPlugin:@"AmplifyDataStorePlugin"]];
  [Amplify registerWithRegistrar:[registry registrarForPlugin:@"Amplify"]];
  [AmplifyStorageS3Plugin registerWithRegistrar:[registry registrarForPlugin:@"AmplifyStorageS3Plugin"]];
  [IntegrationTestPlugin registerWithRegistrar:[registry registrarForPlugin:@"IntegrationTestPlugin"]];
}

@end

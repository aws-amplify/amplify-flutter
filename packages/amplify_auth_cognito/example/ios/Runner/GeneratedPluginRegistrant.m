//
//  Generated file. Do not edit.
//

// clang-format off

#import "GeneratedPluginRegistrant.h"

#if __has_include(<amplify_api/AmplifyApiPlugin.h>)
#import <amplify_api/AmplifyApiPlugin.h>
#else
@import amplify_api;
#endif

#if __has_include(<amplify_auth_cognito/AuthCognito.h>)
#import <amplify_auth_cognito/AuthCognito.h>
#else
@import amplify_auth_cognito;
#endif

#if __has_include(<amplify_core/AmplifyCorePlugin.h>)
#import <amplify_core/AmplifyCorePlugin.h>
#else
@import amplify_core;
#endif

#if __has_include(<amplify_flutter/Amplify.h>)
#import <amplify_flutter/Amplify.h>
#else
@import amplify_flutter;
#endif

#if __has_include(<integration_test/IntegrationTestPlugin.h>)
#import <integration_test/IntegrationTestPlugin.h>
#else
@import integration_test;
#endif

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [AmplifyApiPlugin registerWithRegistrar:[registry registrarForPlugin:@"AmplifyApiPlugin"]];
  [AuthCognito registerWithRegistrar:[registry registrarForPlugin:@"AuthCognito"]];
  [AmplifyCorePlugin registerWithRegistrar:[registry registrarForPlugin:@"AmplifyCorePlugin"]];
  [Amplify registerWithRegistrar:[registry registrarForPlugin:@"Amplify"]];
  [IntegrationTestPlugin registerWithRegistrar:[registry registrarForPlugin:@"IntegrationTestPlugin"]];
}

@end

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0
// 
// Autogenerated from Pigeon (v9.2.4), do not edit directly.
// See also: https://pub.dev/packages/pigeon

#import "Messages.h"
#import <Flutter/Flutter.h>

#if !__has_feature(objc_arc)
#error File requires ARC to be enabled.
#endif

static NSArray *wrapResult(id result, FlutterError *error) {
  if (error) {
    return @[
      error.code ?: [NSNull null], error.message ?: [NSNull null], error.details ?: [NSNull null]
    ];
  }
  return @[ result ?: [NSNull null] ];
}
static id GetNullableObjectAtIndex(NSArray *array, NSInteger key) {
  id result = array[key];
  return (result == [NSNull null]) ? nil : result;
}

NSObject<FlutterMessageCodec> *NSUserDefaultsAPIGetCodec(void) {
  static FlutterStandardMessageCodec *sSharedObject = nil;
  sSharedObject = [FlutterStandardMessageCodec sharedInstance];
  return sSharedObject;
}

void NSUserDefaultsAPISetup(id<FlutterBinaryMessenger> binaryMessenger, NSObject<NSUserDefaultsAPI> *api) {
  {
    NSObject<FlutterTaskQueue> *taskQueue = [binaryMessenger makeBackgroundTaskQueue];
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.NSUserDefaultsAPI.setBool"
        binaryMessenger:binaryMessenger
        codec:NSUserDefaultsAPIGetCodec()
taskQueue:taskQueue];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(setBoolKey:value:completion:)], @"NSUserDefaultsAPI api (%@) doesn't respond to @selector(setBoolKey:value:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_key = GetNullableObjectAtIndex(args, 0);
        NSNumber *arg_value = GetNullableObjectAtIndex(args, 1);
        [api setBoolKey:arg_key value:arg_value completion:^(FlutterError *_Nullable error) {
          callback(wrapResult(nil, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    NSObject<FlutterTaskQueue> *taskQueue = [binaryMessenger makeBackgroundTaskQueue];
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.NSUserDefaultsAPI.boolFor"
        binaryMessenger:binaryMessenger
        codec:NSUserDefaultsAPIGetCodec()
taskQueue:taskQueue];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(boolForKey:completion:)], @"NSUserDefaultsAPI api (%@) doesn't respond to @selector(boolForKey:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_key = GetNullableObjectAtIndex(args, 0);
        [api boolForKey:arg_key completion:^(NSNumber *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
}

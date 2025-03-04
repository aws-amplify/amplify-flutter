//
// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0
// Autogenerated from Pigeon (v22.6.2), do not edit directly.
// See also: https://pub.dev/packages/pigeon

#import "PushNotificationsNativePlugin.h"

#if TARGET_OS_OSX
#import <FlutterMacOS/FlutterMacOS.h>
#else
#import <Flutter/Flutter.h>
#endif

#if !__has_feature(objc_arc)
#error File requires ARC to be enabled.
#endif

static NSArray<id> *wrapResult(id result, FlutterError *error) {
  if (error) {
    return @[
      error.code ?: [NSNull null], error.message ?: [NSNull null], error.details ?: [NSNull null]
    ];
  }
  return @[ result ?: [NSNull null] ];
}

static FlutterError *createConnectionError(NSString *channelName) {
  return [FlutterError errorWithCode:@"channel-error" message:[NSString stringWithFormat:@"%@/%@/%@", @"Unable to establish connection on channel: '", channelName, @"'."] details:@""];
}

static id GetNullableObjectAtIndex(NSArray<id> *array, NSInteger key) {
  id result = array[key];
  return (result == [NSNull null]) ? nil : result;
}

@implementation PermissionStatusBox
- (instancetype)initWithValue:(PermissionStatus)value {
  self = [super init];
  if (self) {
    _value = value;
  }
  return self;
}
@end

@interface PermissionsOptions ()
+ (PermissionsOptions *)fromList:(NSArray<id> *)list;
+ (nullable PermissionsOptions *)nullableFromList:(NSArray<id> *)list;
- (NSArray<id> *)toList;
@end

@interface GetPermissionStatusResult ()
+ (GetPermissionStatusResult *)fromList:(NSArray<id> *)list;
+ (nullable GetPermissionStatusResult *)nullableFromList:(NSArray<id> *)list;
- (NSArray<id> *)toList;
@end

@implementation PermissionsOptions
+ (instancetype)makeWithAlert:(BOOL )alert
    sound:(BOOL )sound
    badge:(BOOL )badge {
  PermissionsOptions* pigeonResult = [[PermissionsOptions alloc] init];
  pigeonResult.alert = alert;
  pigeonResult.sound = sound;
  pigeonResult.badge = badge;
  return pigeonResult;
}
+ (PermissionsOptions *)fromList:(NSArray<id> *)list {
  PermissionsOptions *pigeonResult = [[PermissionsOptions alloc] init];
  pigeonResult.alert = [GetNullableObjectAtIndex(list, 0) boolValue];
  pigeonResult.sound = [GetNullableObjectAtIndex(list, 1) boolValue];
  pigeonResult.badge = [GetNullableObjectAtIndex(list, 2) boolValue];
  return pigeonResult;
}
+ (nullable PermissionsOptions *)nullableFromList:(NSArray<id> *)list {
  return (list) ? [PermissionsOptions fromList:list] : nil;
}
- (NSArray<id> *)toList {
  return @[
    @(self.alert),
    @(self.sound),
    @(self.badge),
  ];
}
@end

@implementation GetPermissionStatusResult
+ (instancetype)makeWithStatus:(PermissionStatus)status {
  GetPermissionStatusResult* pigeonResult = [[GetPermissionStatusResult alloc] init];
  pigeonResult.status = status;
  return pigeonResult;
}
+ (GetPermissionStatusResult *)fromList:(NSArray<id> *)list {
  GetPermissionStatusResult *pigeonResult = [[GetPermissionStatusResult alloc] init];
  PermissionStatusBox *boxedPermissionStatus = GetNullableObjectAtIndex(list, 0);
  pigeonResult.status = boxedPermissionStatus.value;
  return pigeonResult;
}
+ (nullable GetPermissionStatusResult *)nullableFromList:(NSArray<id> *)list {
  return (list) ? [GetPermissionStatusResult fromList:list] : nil;
}
- (NSArray<id> *)toList {
  return @[
    [[PermissionStatusBox alloc] initWithValue:self.status],
  ];
}
@end

@interface nullPushNotificationsNativePluginPigeonCodecReader : FlutterStandardReader
@end
@implementation nullPushNotificationsNativePluginPigeonCodecReader
- (nullable id)readValueOfType:(UInt8)type {
  switch (type) {
    case 129: {
      NSNumber *enumAsNumber = [self readValue];
      return enumAsNumber == nil ? nil : [[PermissionStatusBox alloc] initWithValue:[enumAsNumber integerValue]];
    }
    case 130: 
      return [PermissionsOptions fromList:[self readValue]];
    case 131: 
      return [GetPermissionStatusResult fromList:[self readValue]];
    default:
      return [super readValueOfType:type];
  }
}
@end

@interface nullPushNotificationsNativePluginPigeonCodecWriter : FlutterStandardWriter
@end
@implementation nullPushNotificationsNativePluginPigeonCodecWriter
- (void)writeValue:(id)value {
  if ([value isKindOfClass:[PermissionStatusBox class]]) {
    PermissionStatusBox *box = (PermissionStatusBox *)value;
    [self writeByte:129];
    [self writeValue:(value == nil ? [NSNull null] : [NSNumber numberWithInteger:box.value])];
  } else if ([value isKindOfClass:[PermissionsOptions class]]) {
    [self writeByte:130];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[GetPermissionStatusResult class]]) {
    [self writeByte:131];
    [self writeValue:[value toList]];
  } else {
    [super writeValue:value];
  }
}
@end

@interface nullPushNotificationsNativePluginPigeonCodecReaderWriter : FlutterStandardReaderWriter
@end
@implementation nullPushNotificationsNativePluginPigeonCodecReaderWriter
- (FlutterStandardWriter *)writerWithData:(NSMutableData *)data {
  return [[nullPushNotificationsNativePluginPigeonCodecWriter alloc] initWithData:data];
}
- (FlutterStandardReader *)readerWithData:(NSData *)data {
  return [[nullPushNotificationsNativePluginPigeonCodecReader alloc] initWithData:data];
}
@end

NSObject<FlutterMessageCodec> *nullGetPushNotificationsNativePluginCodec(void) {
  static FlutterStandardMessageCodec *sSharedObject = nil;
  static dispatch_once_t sPred = 0;
  dispatch_once(&sPred, ^{
    nullPushNotificationsNativePluginPigeonCodecReaderWriter *readerWriter = [[nullPushNotificationsNativePluginPigeonCodecReaderWriter alloc] init];
    sSharedObject = [FlutterStandardMessageCodec codecWithReaderWriter:readerWriter];
  });
  return sSharedObject;
}
@interface PushNotificationsFlutterApi ()
@property(nonatomic, strong) NSObject<FlutterBinaryMessenger> *binaryMessenger;
@property(nonatomic, strong) NSString *messageChannelSuffix;
@end

@implementation PushNotificationsFlutterApi

- (instancetype)initWithBinaryMessenger:(NSObject<FlutterBinaryMessenger> *)binaryMessenger {
  return [self initWithBinaryMessenger:binaryMessenger messageChannelSuffix:@""];
}
- (instancetype)initWithBinaryMessenger:(NSObject<FlutterBinaryMessenger> *)binaryMessenger messageChannelSuffix:(nullable NSString*)messageChannelSuffix{
  self = [self init];
  if (self) {
    _binaryMessenger = binaryMessenger;
    _messageChannelSuffix = [messageChannelSuffix length] == 0 ? @"" : [NSString stringWithFormat: @".%@", messageChannelSuffix];
  }
  return self;
}
- (void)onNotificationReceivedInBackgroundWithPayload:(NSDictionary<id, id> *)arg_withPayload completion:(void (^)(FlutterError *_Nullable))completion {
  NSString *channelName = [NSString stringWithFormat:@"%@%@", @"dev.flutter.pigeon.amplify_push_notifications.PushNotificationsFlutterApi.onNotificationReceivedInBackground", _messageChannelSuffix];
  FlutterBasicMessageChannel *channel =
    [FlutterBasicMessageChannel
      messageChannelWithName:channelName
      binaryMessenger:self.binaryMessenger
      codec:nullGetPushNotificationsNativePluginCodec()];
  [channel sendMessage:@[arg_withPayload ?: [NSNull null]] reply:^(NSArray<id> *reply) {
    if (reply != nil) {
      if (reply.count > 1) {
        completion([FlutterError errorWithCode:reply[0] message:reply[1] details:reply[2]]);
      } else {
        completion(nil);
      }
    } else {
      completion(createConnectionError(channelName));
    } 
  }];
}
- (void)nullifyLaunchNotificationWithCompletion:(void (^)(FlutterError *_Nullable))completion {
  NSString *channelName = [NSString stringWithFormat:@"%@%@", @"dev.flutter.pigeon.amplify_push_notifications.PushNotificationsFlutterApi.nullifyLaunchNotification", _messageChannelSuffix];
  FlutterBasicMessageChannel *channel =
    [FlutterBasicMessageChannel
      messageChannelWithName:channelName
      binaryMessenger:self.binaryMessenger
      codec:nullGetPushNotificationsNativePluginCodec()];
  [channel sendMessage:nil reply:^(NSArray<id> *reply) {
    if (reply != nil) {
      if (reply.count > 1) {
        completion([FlutterError errorWithCode:reply[0] message:reply[1] details:reply[2]]);
      } else {
        completion(nil);
      }
    } else {
      completion(createConnectionError(channelName));
    } 
  }];
}
@end

void SetUpPushNotificationsHostApi(id<FlutterBinaryMessenger> binaryMessenger, NSObject<PushNotificationsHostApi> *api) {
  SetUpPushNotificationsHostApiWithSuffix(binaryMessenger, api, @"");
}

void SetUpPushNotificationsHostApiWithSuffix(id<FlutterBinaryMessenger> binaryMessenger, NSObject<PushNotificationsHostApi> *api, NSString *messageChannelSuffix) {
  messageChannelSuffix = messageChannelSuffix.length > 0 ? [NSString stringWithFormat: @".%@", messageChannelSuffix] : @"";
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:[NSString stringWithFormat:@"%@%@", @"dev.flutter.pigeon.amplify_push_notifications.PushNotificationsHostApi.requestInitialToken", messageChannelSuffix]
        binaryMessenger:binaryMessenger
        codec:nullGetPushNotificationsNativePluginCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(requestInitialTokenWithError:)], @"PushNotificationsHostApi api (%@) doesn't respond to @selector(requestInitialTokenWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        [api requestInitialTokenWithError:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:[NSString stringWithFormat:@"%@%@", @"dev.flutter.pigeon.amplify_push_notifications.PushNotificationsHostApi.getPermissionStatus", messageChannelSuffix]
        binaryMessenger:binaryMessenger
        codec:nullGetPushNotificationsNativePluginCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getPermissionStatusWithCompletion:)], @"PushNotificationsHostApi api (%@) doesn't respond to @selector(getPermissionStatusWithCompletion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        [api getPermissionStatusWithCompletion:^(GetPermissionStatusResult *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:[NSString stringWithFormat:@"%@%@", @"dev.flutter.pigeon.amplify_push_notifications.PushNotificationsHostApi.requestPermissions", messageChannelSuffix]
        binaryMessenger:binaryMessenger
        codec:nullGetPushNotificationsNativePluginCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(requestPermissionsWithPermissionOptions:completion:)], @"PushNotificationsHostApi api (%@) doesn't respond to @selector(requestPermissionsWithPermissionOptions:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray<id> *args = message;
        PermissionsOptions *arg_withPermissionOptions = GetNullableObjectAtIndex(args, 0);
        [api requestPermissionsWithPermissionOptions:arg_withPermissionOptions completion:^(NSNumber *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:[NSString stringWithFormat:@"%@%@", @"dev.flutter.pigeon.amplify_push_notifications.PushNotificationsHostApi.getLaunchNotification", messageChannelSuffix]
        binaryMessenger:binaryMessenger
        codec:nullGetPushNotificationsNativePluginCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getLaunchNotificationWithError:)], @"PushNotificationsHostApi api (%@) doesn't respond to @selector(getLaunchNotificationWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        NSDictionary<id, id> *output = [api getLaunchNotificationWithError:&error];
        callback(wrapResult(output, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:[NSString stringWithFormat:@"%@%@", @"dev.flutter.pigeon.amplify_push_notifications.PushNotificationsHostApi.getBadgeCount", messageChannelSuffix]
        binaryMessenger:binaryMessenger
        codec:nullGetPushNotificationsNativePluginCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getBadgeCountWithError:)], @"PushNotificationsHostApi api (%@) doesn't respond to @selector(getBadgeCountWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        NSNumber *output = [api getBadgeCountWithError:&error];
        callback(wrapResult(output, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:[NSString stringWithFormat:@"%@%@", @"dev.flutter.pigeon.amplify_push_notifications.PushNotificationsHostApi.setBadgeCount", messageChannelSuffix]
        binaryMessenger:binaryMessenger
        codec:nullGetPushNotificationsNativePluginCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(setBadgeCountWithBadgeCount:error:)], @"PushNotificationsHostApi api (%@) doesn't respond to @selector(setBadgeCountWithBadgeCount:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray<id> *args = message;
        NSInteger arg_withBadgeCount = [GetNullableObjectAtIndex(args, 0) integerValue];
        FlutterError *error;
        [api setBadgeCountWithBadgeCount:arg_withBadgeCount error:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:[NSString stringWithFormat:@"%@%@", @"dev.flutter.pigeon.amplify_push_notifications.PushNotificationsHostApi.registerCallbackFunction", messageChannelSuffix]
        binaryMessenger:binaryMessenger
        codec:nullGetPushNotificationsNativePluginCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(registerCallbackFunctionCallbackHandle:error:)], @"PushNotificationsHostApi api (%@) doesn't respond to @selector(registerCallbackFunctionCallbackHandle:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray<id> *args = message;
        NSInteger arg_callbackHandle = [GetNullableObjectAtIndex(args, 0) integerValue];
        FlutterError *error;
        [api registerCallbackFunctionCallbackHandle:arg_callbackHandle error:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
}

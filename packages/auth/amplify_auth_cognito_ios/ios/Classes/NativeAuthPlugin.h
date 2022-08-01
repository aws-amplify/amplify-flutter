// 
// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
// 
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
// 
//  http://aws.amazon.com/apache2.0
// 
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//  
// Autogenerated from Pigeon (v3.2.3), do not edit directly.
// See also: https://pub.dev/packages/pigeon
#import <Foundation/Foundation.h>
@protocol FlutterBinaryMessenger;
@protocol FlutterMessageCodec;
@class FlutterError;
@class FlutterStandardTypedData;

NS_ASSUME_NONNULL_BEGIN

@class NativeAuthSession;
@class NativeUserPoolTokens;
@class NativeAWSCredentials;
@class LegacyCredentialStoreData;

@interface NativeAuthSession : NSObject
/// `init` unavailable to enforce nonnull fields, see the `make` class method.
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)makeWithIsSignedIn:(NSNumber *)isSignedIn
    userSub:(nullable NSString *)userSub
    userPoolTokens:(nullable NativeUserPoolTokens *)userPoolTokens
    identityId:(nullable NSString *)identityId
    awsCredentials:(nullable NativeAWSCredentials *)awsCredentials;
@property(nonatomic, strong) NSNumber * isSignedIn;
@property(nonatomic, copy, nullable) NSString * userSub;
@property(nonatomic, strong, nullable) NativeUserPoolTokens * userPoolTokens;
@property(nonatomic, copy, nullable) NSString * identityId;
@property(nonatomic, strong, nullable) NativeAWSCredentials * awsCredentials;
@end

@interface NativeUserPoolTokens : NSObject
/// `init` unavailable to enforce nonnull fields, see the `make` class method.
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)makeWithAccessToken:(NSString *)accessToken
    refreshToken:(NSString *)refreshToken
    idToken:(NSString *)idToken;
@property(nonatomic, copy) NSString * accessToken;
@property(nonatomic, copy) NSString * refreshToken;
@property(nonatomic, copy) NSString * idToken;
@end

@interface NativeAWSCredentials : NSObject
/// `init` unavailable to enforce nonnull fields, see the `make` class method.
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)makeWithAccessKeyId:(NSString *)accessKeyId
    secretAccessKey:(NSString *)secretAccessKey
    sessionToken:(nullable NSString *)sessionToken
    expirationIso8601Utc:(nullable NSString *)expirationIso8601Utc;
@property(nonatomic, copy) NSString * accessKeyId;
@property(nonatomic, copy) NSString * secretAccessKey;
@property(nonatomic, copy, nullable) NSString * sessionToken;
@property(nonatomic, copy, nullable) NSString * expirationIso8601Utc;
@end

@interface LegacyCredentialStoreData : NSObject
+ (instancetype)makeWithIdentityId:(nullable NSString *)identityId
    awsCredentials:(nullable NativeAWSCredentials *)awsCredentials
    userPoolTokens:(nullable NativeUserPoolTokens *)userPoolTokens;
@property(nonatomic, copy, nullable) NSString * identityId;
@property(nonatomic, strong, nullable) NativeAWSCredentials * awsCredentials;
@property(nonatomic, strong, nullable) NativeUserPoolTokens * userPoolTokens;
@end

/// The codec used by NativeAuthPlugin.
NSObject<FlutterMessageCodec> *NativeAuthPluginGetCodec(void);

@interface NativeAuthPlugin : NSObject
- (instancetype)initWithBinaryMessenger:(id<FlutterBinaryMessenger>)binaryMessenger;
- (void)exchangeParams:(NSDictionary<NSString *, NSString *> *)params completion:(void(^)(NSError *_Nullable))completion;
- (void)fetchAuthSessionGetAwsCredentials:(NSNumber *)getAwsCredentials completion:(void(^)(NativeAuthSession *_Nullable, NSError *_Nullable))completion;
@end
/// The codec used by NativeAuthBridge.
NSObject<FlutterMessageCodec> *NativeAuthBridgeGetCodec(void);

@protocol NativeAuthBridge
- (void)addPluginWithCompletion:(void(^)(FlutterError *_Nullable))completion;
- (void)signInWithUrlUrl:(NSString *)url callbackUrlScheme:(NSString *)callbackUrlScheme preferPrivateSession:(NSNumber *)preferPrivateSession browserPackageName:(nullable NSString *)browserPackageName completion:(void(^)(NSDictionary<NSString *, NSString *> *_Nullable, FlutterError *_Nullable))completion;
- (void)signOutWithUrlUrl:(NSString *)url callbackUrlScheme:(NSString *)callbackUrlScheme preferPrivateSession:(NSNumber *)preferPrivateSession browserPackageName:(nullable NSString *)browserPackageName completion:(void(^)(FlutterError *_Nullable))completion;
/// @return `nil` only when `error != nil`.
- (nullable NSDictionary<NSString *, NSString *> *)getValidationDataWithError:(FlutterError *_Nullable *_Nonnull)error;
/// @return `nil` only when `error != nil`.
- (nullable NSString *)getBundleIdWithError:(FlutterError *_Nullable *_Nonnull)error;
- (void)getLegacyCredentialsUserPoolId:(NSString *)userPoolId appClientId:(NSString *)appClientId completion:(void(^)(LegacyCredentialStoreData *_Nullable, FlutterError *_Nullable))completion;
- (void)clearLegacyCredentialsAppClientId:(NSString *)appClientId completion:(void(^)(FlutterError *_Nullable))completion;
@end

extern void NativeAuthBridgeSetup(id<FlutterBinaryMessenger> binaryMessenger, NSObject<NativeAuthBridge> *_Nullable api);

NS_ASSUME_NONNULL_END

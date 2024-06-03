// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@ConfigurePigeon(
  PigeonOptions(
    copyrightHeader: '../../tool/license.txt',
    dartOut: 'lib/src/native_plugin.g.dart',
    swiftOut: 'ios/Classes/pigeons/NativePluginBindings.swift',
    kotlinOptions: KotlinOptions(
      package: 'com.amazonaws.amplify.amplify_datastore.pigeons',
    ),
    kotlinOut:
        'android/src/main/kotlin/com/amazonaws/amplify/amplify_datastore/pigeons/NativePluginBindings.kt',
  ),
)
library native_plugin;

import 'package:pigeon/pigeon.dart';

/// Bridge for calling Auth from Native into Flutter
@FlutterApi()
abstract class NativeAuthPlugin {
  @async
  NativeAuthSession fetchAuthSession();
}

/// Bridge for calling API plugin from Native into Flutter
@FlutterApi()
abstract class NativeApiPlugin {
  @async
  String? getLatestAuthToken(String providerName);

  @async
  NativeGraphQLResponse mutate(NativeGraphQLRequest request);

  @async
  NativeGraphQLResponse query(NativeGraphQLRequest request);

  @async
  NativeGraphQLSubscriptionResponse subscribe(NativeGraphQLRequest request);

  @async
  void unsubscribe(String subscriptionId);
}

/// Bridge for calling Amplify from Flutter into Native
@HostApi()
abstract class NativeAmplifyBridge {
  @async
  void configure(String version, String config);
}

/// Bridge for calling Auth plugin from Flutter into Native
@HostApi()
abstract class NativeAuthBridge {
  @async
  void addAuthPlugin();

  void updateCurrentUser(NativeAuthUser? user);
}

/// Bridge for calling API methods from Flutter into Native
@HostApi()
abstract class NativeApiBridge {
  @async
  void addApiPlugin(
      List<String> authProvidersList, Map<String, String> endpoints);

  @async
  void sendSubscriptionEvent(NativeGraphQLSubscriptionResponse event);
}

class NativeAuthSession {
  late bool isSignedIn;

  String? userSub;
  NativeUserPoolTokens? userPoolTokens;

  String? identityId;
  NativeAWSCredentials? awsCredentials;
}

class NativeAuthUser {
  late String userId;
  late String username;
}

class NativeUserPoolTokens {
  late String accessToken;
  late String refreshToken;
  late String idToken;
}

class NativeAWSCredentials {
  late String accessKeyId;
  late String secretAccessKey;
  String? sessionToken;
  String? expirationIso8601Utc;
}

class LegacyCredentialStoreData {
  String? identityId;
  String? accessKeyId;
  String? secretAccessKey;
  String? sessionToken;
  int? expirationMsSinceEpoch;
  String? accessToken;
  String? refreshToken;
  String? idToken;
}

class NativeGraphQLResponse {
  String? payloadJson;
}

class NativeGraphQLSubscriptionResponse {
  late String type;
  late String subscriptionId;
  String? payloadJson;
}

class NativeGraphQLRequest {
  late String document;
  String? apiName;
  String? variablesJson;
  String? responseType;
  String? decodePath;
  String? options;
  String? authMode;
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@ConfigurePigeon(
  PigeonOptions(
    copyrightHeader: '../../tool/license.txt',
    dartOut: 'lib/src/native_plugin.g.dart',
    swiftOut: 'ios/Classes/pigeons/NativePluginBindings.swift',
    kotlinOut:
        'android/src/main/kotlin/com/amazonaws/amplify/amplify_datastore/pigeons/NativePluginBindings.kt',
  ),
)
library native_plugin;

import 'package:pigeon/pigeon.dart';

@FlutterApi()
abstract class NativeAuthPlugin {
  @async
  NativeAuthSession fetchAuthSession();
}

@FlutterApi()
abstract class NativeApiPlugin {
  @async
  String? getLatestAuthToken(String providerName);
}

@HostApi()
abstract class NativeAuthBridge {
  @async
  void addAuthPlugin();

  void updateCurrentUser(NativeAuthUser? user);
}

@HostApi()
abstract class NativeApiBridge {
  @async
  void addApiPlugin(List<String> authProvidersList);
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

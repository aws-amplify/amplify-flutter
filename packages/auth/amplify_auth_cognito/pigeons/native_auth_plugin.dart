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

// ignore_for_file: avoid_positional_boolean_parameters

@ConfigurePigeon(
  PigeonOptions(
    copyrightHeader: '../../../tool/license.txt',
    dartOptions: DartOptions(),
    dartOut: 'lib/src/native_auth_plugin.dart',
    javaOptions: JavaOptions(
      className: 'NativeAuthPluginBindings',
      package: 'com.amazonaws.amplify.amplify_auth_cognito',
    ),
    javaOut:
        '../amplify_auth_cognito_android/android/src/main/kotlin/com/amazonaws/amplify/amplify_auth_cognito/NativeAuthPluginBindings.java',
    objcOptions: ObjcOptions(
      header: 'NativeAuthPlugin.h',
    ),
    objcHeaderOut: '../amplify_auth_cognito_ios/ios/Classes/NativeAuthPlugin.h',
    objcSourceOut: '../amplify_auth_cognito_ios/ios/Classes/NativeAuthPlugin.m',
  ),
)
library native_auth_plugin;

import 'package:pigeon/pigeon.dart';

@FlutterApi()
abstract class NativeAuthPlugin {
  /// Exchanges the route parameters used to launch the app, i.e. if the app
  /// was closed and a redirect happened to the custom URI scheme (iOS) or an
  /// intent was launched with the redirect parameters (Android).
  void exchange(Map<String, String> params);

  @async
  NativeAuthSession fetchAuthSession(bool getAwsCredentials);
}

@HostApi()
abstract class NativeAuthBridge {
  /// Adds the native platform/plugin.
  ///
  /// On iOS/Android, this calls `Amplify.addPlugin` with the [NativeAuthPlugin]
  /// implementation.
  @async
  void addPlugin();

  /// Sign in by presenting [url] and waiting for a response to a URL with
  /// [callbackUrlScheme].
  ///
  /// If [preferPrivateSession] is `true`, do not persist session cookies.
  @async
  Map<String, String> signInWithUrl(
    String url,
    String callbackUrlScheme, // iOS-only
    bool preferPrivateSession, // iOS-only
    String? browserPackageName, // Android-only
  );

  /// Sign out by presenting [url] and waiting for a response to a URL with
  /// [callbackUrlScheme].
  @async
  void signOutWithUrl(
    String url,
    String callbackUrlScheme, // iOS-only
    bool preferPrivateSession, // iOS-only
    String? browserPackageName, // Android-only
  );

  /// Retrieves the validation data for the current iOS/Android device.
  Map<String, String> getValidationData();

  String getBundleId();

  /// Fetch legacy credentials stored by native SDKs.
  @async
  LegacyCredentialStoreData getLegacyCredentials(
    String identityPoolId,
    String appClientId,
  );

  /// Clears the legacy credential store data.
  @async
  void clearLegacyCredentials();
}

class NativeAuthSession {
  late bool isSignedIn;

  String? userSub;
  NativeUserPoolTokens? userPoolTokens;

  String? identityId;
  NativeAWSCredentials? awsCredentials;
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

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: avoid_positional_boolean_parameters

@ConfigurePigeon(
  PigeonOptions(
    copyrightHeader: '../../../tool/license.txt',
    dartOut: 'lib/src/native_auth_plugin.g.dart',
    kotlinOptions: KotlinOptions(
      package: 'com.amazonaws.amplify.amplify_auth_cognito',
    ),
    kotlinOut:
        'android/src/main/kotlin/com/amazonaws/amplify/amplify_auth_cognito/pigeons/NativeAuthPluginBindingsPigeon.kt',
    swiftOut: 'darwin/classes/pigeons/messages.g.swift',
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
}

@HostApi()
abstract class NativeAuthBridge {
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

  /// Retrieves context data as required for advanced security features (ASF).
  NativeUserContextData getContextData();

  String getBundleId();

  /// Fetch legacy credentials stored by native SDKs.
  @async
  LegacyCredentialStoreData getLegacyCredentials(
    String? identityPoolId,
    String? appClientId,
  );

  /// Clears the legacy credential store data.
  @async
  void clearLegacyCredentials();

  /// Fetch legacy device secrets stored by native SDKs.
  @async
  LegacyDeviceDetailsSecret? fetchLegacyDeviceSecrets(
    String username,
    String userPoolId,
  );

  /// Clears the legacy device secrets.
  @async
  void deleteLegacyDeviceSecrets(
    String username,
    String userPoolId,
  );
}

class NativeUserContextData {
  String? deviceName;
  String? thirdPartyDeviceId;
  String? deviceFingerprint;
  String? applicationName;
  String? applicationVersion;
  String? deviceLanguage;
  String? deviceOsReleaseVersion;
  int? screenHeightPixels;
  int? screenWidthPixels;
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

class LegacyDeviceDetailsSecret {
  String? deviceKey;
  String? deviceGroupKey;
  String? devicePassword;
  String? asfDeviceId;
}

//
// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0
// Autogenerated from Pigeon (v11.0.1), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, prefer_null_aware_operators, omit_local_variable_types, unused_shown_name, unnecessary_import

import 'dart:async';
import 'dart:typed_data' show Float64List, Int32List, Int64List, Uint8List;

import 'package:flutter/foundation.dart' show ReadBuffer, WriteBuffer;
import 'package:flutter/services.dart';

class NativeUserContextData {
  NativeUserContextData({
    this.deviceName,
    this.thirdPartyDeviceId,
    this.deviceFingerprint,
    this.applicationName,
    this.applicationVersion,
    this.deviceLanguage,
    this.deviceOsReleaseVersion,
    this.screenHeightPixels,
    this.screenWidthPixels,
  });

  String? deviceName;

  String? thirdPartyDeviceId;

  String? deviceFingerprint;

  String? applicationName;

  String? applicationVersion;

  String? deviceLanguage;

  String? deviceOsReleaseVersion;

  int? screenHeightPixels;

  int? screenWidthPixels;

  Object encode() {
    return <Object?>[
      deviceName,
      thirdPartyDeviceId,
      deviceFingerprint,
      applicationName,
      applicationVersion,
      deviceLanguage,
      deviceOsReleaseVersion,
      screenHeightPixels,
      screenWidthPixels,
    ];
  }

  static NativeUserContextData decode(Object result) {
    result as List<Object?>;
    return NativeUserContextData(
      deviceName: result[0] as String?,
      thirdPartyDeviceId: result[1] as String?,
      deviceFingerprint: result[2] as String?,
      applicationName: result[3] as String?,
      applicationVersion: result[4] as String?,
      deviceLanguage: result[5] as String?,
      deviceOsReleaseVersion: result[6] as String?,
      screenHeightPixels: result[7] as int?,
      screenWidthPixels: result[8] as int?,
    );
  }
}

class LegacyCredentialStoreData {
  LegacyCredentialStoreData({
    this.identityId,
    this.accessKeyId,
    this.secretAccessKey,
    this.sessionToken,
    this.expirationMsSinceEpoch,
    this.accessToken,
    this.refreshToken,
    this.idToken,
  });

  String? identityId;

  String? accessKeyId;

  String? secretAccessKey;

  String? sessionToken;

  int? expirationMsSinceEpoch;

  String? accessToken;

  String? refreshToken;

  String? idToken;

  Object encode() {
    return <Object?>[
      identityId,
      accessKeyId,
      secretAccessKey,
      sessionToken,
      expirationMsSinceEpoch,
      accessToken,
      refreshToken,
      idToken,
    ];
  }

  static LegacyCredentialStoreData decode(Object result) {
    result as List<Object?>;
    return LegacyCredentialStoreData(
      identityId: result[0] as String?,
      accessKeyId: result[1] as String?,
      secretAccessKey: result[2] as String?,
      sessionToken: result[3] as String?,
      expirationMsSinceEpoch: result[4] as int?,
      accessToken: result[5] as String?,
      refreshToken: result[6] as String?,
      idToken: result[7] as String?,
    );
  }
}

class LegacyDeviceDetailsSecret {
  LegacyDeviceDetailsSecret({
    this.deviceKey,
    this.deviceGroupKey,
    this.devicePassword,
    this.asfDeviceId,
  });

  String? deviceKey;

  String? deviceGroupKey;

  String? devicePassword;

  String? asfDeviceId;

  Object encode() {
    return <Object?>[
      deviceKey,
      deviceGroupKey,
      devicePassword,
      asfDeviceId,
    ];
  }

  static LegacyDeviceDetailsSecret decode(Object result) {
    result as List<Object?>;
    return LegacyDeviceDetailsSecret(
      deviceKey: result[0] as String?,
      deviceGroupKey: result[1] as String?,
      devicePassword: result[2] as String?,
      asfDeviceId: result[3] as String?,
    );
  }
}

abstract class NativeAuthPlugin {
  static const MessageCodec<Object?> codec = StandardMessageCodec();

  /// Exchanges the route parameters used to launch the app, i.e. if the app
  /// was closed and a redirect happened to the custom URI scheme (iOS) or an
  /// intent was launched with the redirect parameters (Android).
  void exchange(Map<String?, String?> params);

  static void setup(NativeAuthPlugin? api, {BinaryMessenger? binaryMessenger}) {
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.amplify_auth_cognito.NativeAuthPlugin.exchange',
          codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMessageHandler(null);
      } else {
        channel.setMessageHandler((Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.amplify_auth_cognito.NativeAuthPlugin.exchange was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final Map<String?, String?>? arg_params =
              (args[0] as Map<Object?, Object?>?)?.cast<String?, String?>();
          assert(arg_params != null,
              'Argument for dev.flutter.pigeon.amplify_auth_cognito.NativeAuthPlugin.exchange was null, expected non-null Map<String?, String?>.');
          api.exchange(arg_params!);
          return;
        });
      }
    }
  }
}

class _NativeAuthBridgeCodec extends StandardMessageCodec {
  const _NativeAuthBridgeCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is LegacyCredentialStoreData) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else if (value is LegacyDeviceDetailsSecret) {
      buffer.putUint8(129);
      writeValue(buffer, value.encode());
    } else if (value is NativeUserContextData) {
      buffer.putUint8(130);
      writeValue(buffer, value.encode());
    } else {
      super.writeValue(buffer, value);
    }
  }

  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128:
        return LegacyCredentialStoreData.decode(readValue(buffer)!);
      case 129:
        return LegacyDeviceDetailsSecret.decode(readValue(buffer)!);
      case 130:
        return NativeUserContextData.decode(readValue(buffer)!);
      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

class NativeAuthBridge {
  /// Constructor for [NativeAuthBridge].  The [binaryMessenger] named argument is
  /// available for dependency injection.  If it is left null, the default
  /// BinaryMessenger will be used which routes to the host platform.
  NativeAuthBridge({BinaryMessenger? binaryMessenger})
      : _binaryMessenger = binaryMessenger;
  final BinaryMessenger? _binaryMessenger;

  static const MessageCodec<Object?> codec = _NativeAuthBridgeCodec();

  /// Sign in by presenting [url] and waiting for a response to a URL with
  /// [callbackUrlScheme].
  ///
  /// If [preferPrivateSession] is `true`, do not persist session cookies.
  Future<Map<String?, String?>> signInWithUrl(
      String arg_url,
      String arg_callbackUrlScheme,
      bool arg_preferPrivateSession,
      String? arg_browserPackageName) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.amplify_auth_cognito.NativeAuthBridge.signInWithUrl',
        codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList = await channel.send(<Object?>[
      arg_url,
      arg_callbackUrlScheme,
      arg_preferPrivateSession,
      arg_browserPackageName
    ]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as Map<Object?, Object?>?)!.cast<String?, String?>();
    }
  }

  /// Sign out by presenting [url] and waiting for a response to a URL with
  /// [callbackUrlScheme].
  Future<void> signOutWithUrl(String arg_url, String arg_callbackUrlScheme,
      bool arg_preferPrivateSession, String? arg_browserPackageName) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.amplify_auth_cognito.NativeAuthBridge.signOutWithUrl',
        codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList = await channel.send(<Object?>[
      arg_url,
      arg_callbackUrlScheme,
      arg_preferPrivateSession,
      arg_browserPackageName
    ]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  /// Retrieves the validation data for the current iOS/Android device.
  Future<Map<String?, String?>> getValidationData() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.amplify_auth_cognito.NativeAuthBridge.getValidationData',
        codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList = await channel.send(null) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as Map<Object?, Object?>?)!.cast<String?, String?>();
    }
  }

  /// Retrieves context data as required for advanced security features (ASF).
  Future<NativeUserContextData> getContextData() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.amplify_auth_cognito.NativeAuthBridge.getContextData',
        codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList = await channel.send(null) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as NativeUserContextData?)!;
    }
  }

  Future<String> getBundleId() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.amplify_auth_cognito.NativeAuthBridge.getBundleId',
        codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList = await channel.send(null) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as String?)!;
    }
  }

  /// Fetch legacy credentials stored by native SDKs.
  Future<LegacyCredentialStoreData> getLegacyCredentials(
      String? arg_identityPoolId, String? arg_appClientId) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.amplify_auth_cognito.NativeAuthBridge.getLegacyCredentials',
        codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList = await channel
        .send(<Object?>[arg_identityPoolId, arg_appClientId]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as LegacyCredentialStoreData?)!;
    }
  }

  /// Clears the legacy credential store data.
  Future<void> clearLegacyCredentials() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.amplify_auth_cognito.NativeAuthBridge.clearLegacyCredentials',
        codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList = await channel.send(null) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  /// Fetch legacy device secrets stored by native SDKs.
  Future<LegacyDeviceDetailsSecret?> fetchLegacyDeviceSecrets(
      String? arg_userPoolId, String? arg_appClientId) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.amplify_auth_cognito.NativeAuthBridge.fetchLegacyDeviceSecrets',
        codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList = await channel
        .send(<Object?>[arg_userPoolId, arg_appClientId]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return (replyList[0] as LegacyDeviceDetailsSecret?);
    }
  }

  /// Clears the legacy device secrets.
  Future<void> deleteLegacyDeviceSecrets(
      String? arg_userPoolId, String? arg_appClientId) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.amplify_auth_cognito.NativeAuthBridge.deleteLegacyDeviceSecrets',
        codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList = await channel
        .send(<Object?>[arg_userPoolId, arg_appClientId]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }
}

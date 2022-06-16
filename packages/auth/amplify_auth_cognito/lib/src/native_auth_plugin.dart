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
// Autogenerated from Pigeon (v3.1.5), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, prefer_null_aware_operators, omit_local_variable_types, unused_shown_name
// @dart = 2.12
import 'dart:async';
import 'dart:typed_data' show Uint8List, Int32List, Int64List, Float64List;

import 'package:flutter/foundation.dart' show WriteBuffer, ReadBuffer;
import 'package:flutter/services.dart';

class NativeAuthSession {
  NativeAuthSession({
    required this.isSignedIn,
    this.userSub,
    this.userPoolTokens,
    this.identityId,
    this.awsCredentials,
  });

  bool isSignedIn;
  String? userSub;
  NativeUserPoolTokens? userPoolTokens;
  String? identityId;
  NativeAWSCredentials? awsCredentials;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['isSignedIn'] = isSignedIn;
    pigeonMap['userSub'] = userSub;
    pigeonMap['userPoolTokens'] = userPoolTokens?.encode();
    pigeonMap['identityId'] = identityId;
    pigeonMap['awsCredentials'] = awsCredentials?.encode();
    return pigeonMap;
  }

  static NativeAuthSession decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return NativeAuthSession(
      isSignedIn: pigeonMap['isSignedIn']! as bool,
      userSub: pigeonMap['userSub'] as String?,
      userPoolTokens: pigeonMap['userPoolTokens'] != null
          ? NativeUserPoolTokens.decode(pigeonMap['userPoolTokens']!)
          : null,
      identityId: pigeonMap['identityId'] as String?,
      awsCredentials: pigeonMap['awsCredentials'] != null
          ? NativeAWSCredentials.decode(pigeonMap['awsCredentials']!)
          : null,
    );
  }
}

class NativeUserPoolTokens {
  NativeUserPoolTokens({
    required this.accessToken,
    required this.refreshToken,
    required this.idToken,
  });

  String accessToken;
  String refreshToken;
  String idToken;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['accessToken'] = accessToken;
    pigeonMap['refreshToken'] = refreshToken;
    pigeonMap['idToken'] = idToken;
    return pigeonMap;
  }

  static NativeUserPoolTokens decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return NativeUserPoolTokens(
      accessToken: pigeonMap['accessToken']! as String,
      refreshToken: pigeonMap['refreshToken']! as String,
      idToken: pigeonMap['idToken']! as String,
    );
  }
}

class NativeAWSCredentials {
  NativeAWSCredentials({
    required this.accessKeyId,
    required this.secretAccessKey,
    this.sessionToken,
    this.expirationIso8601Utc,
  });

  String accessKeyId;
  String secretAccessKey;
  String? sessionToken;
  String? expirationIso8601Utc;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['accessKeyId'] = accessKeyId;
    pigeonMap['secretAccessKey'] = secretAccessKey;
    pigeonMap['sessionToken'] = sessionToken;
    pigeonMap['expirationIso8601Utc'] = expirationIso8601Utc;
    return pigeonMap;
  }

  static NativeAWSCredentials decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return NativeAWSCredentials(
      accessKeyId: pigeonMap['accessKeyId']! as String,
      secretAccessKey: pigeonMap['secretAccessKey']! as String,
      sessionToken: pigeonMap['sessionToken'] as String?,
      expirationIso8601Utc: pigeonMap['expirationIso8601Utc'] as String?,
    );
  }
}

class _NativeAuthPluginCodec extends StandardMessageCodec {
  const _NativeAuthPluginCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is NativeAWSCredentials) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else if (value is NativeAuthSession) {
      buffer.putUint8(129);
      writeValue(buffer, value.encode());
    } else if (value is NativeUserPoolTokens) {
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
        return NativeAWSCredentials.decode(readValue(buffer)!);

      case 129:
        return NativeAuthSession.decode(readValue(buffer)!);

      case 130:
        return NativeUserPoolTokens.decode(readValue(buffer)!);

      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

abstract class NativeAuthPlugin {
  static const MessageCodec<Object?> codec = _NativeAuthPluginCodec();

  Future<NativeAuthSession> fetchAuthSession(bool getAwsCredentials);
  static void setup(NativeAuthPlugin? api, {BinaryMessenger? binaryMessenger}) {
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.NativeAuthPlugin.fetchAuthSession', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMessageHandler(null);
      } else {
        channel.setMessageHandler((Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.NativeAuthPlugin.fetchAuthSession was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final bool? arg_getAwsCredentials = (args[0] as bool?);
          assert(arg_getAwsCredentials != null,
              'Argument for dev.flutter.pigeon.NativeAuthPlugin.fetchAuthSession was null, expected non-null bool.');
          final NativeAuthSession output =
              await api.fetchAuthSession(arg_getAwsCredentials!);
          return output;
        });
      }
    }
  }
}

class _NativeAuthBridgeCodec extends StandardMessageCodec {
  const _NativeAuthBridgeCodec();
}

class NativeAuthBridge {
  /// Constructor for [NativeAuthBridge].  The [binaryMessenger] named argument is
  /// available for dependency injection.  If it is left null, the default
  /// BinaryMessenger will be used which routes to the host platform.
  NativeAuthBridge({BinaryMessenger? binaryMessenger})
      : _binaryMessenger = binaryMessenger;

  final BinaryMessenger? _binaryMessenger;

  static const MessageCodec<Object?> codec = _NativeAuthBridgeCodec();

  Future<void> addPlugin() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.NativeAuthBridge.addPlugin', codec,
        binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(null) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error =
          (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return;
    }
  }

  Future<Map<String?, String?>> signInWithUrl(
      String arg_url,
      String arg_callbackUrlScheme,
      bool arg_preferPrivateSession,
      String? arg_browserPackageName) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.NativeAuthBridge.signInWithUrl', codec,
        binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap = await channel.send(<Object?>[
      arg_url,
      arg_callbackUrlScheme,
      arg_preferPrivateSession,
      arg_browserPackageName
    ]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error =
          (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else if (replyMap['result'] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyMap['result'] as Map<Object?, Object?>?)!
          .cast<String?, String?>();
    }
  }

  Future<void> signOutWithUrl(String arg_url, String arg_callbackUrlScheme,
      bool arg_preferPrivateSession, String? arg_browserPackageName) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.NativeAuthBridge.signOutWithUrl', codec,
        binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap = await channel.send(<Object?>[
      arg_url,
      arg_callbackUrlScheme,
      arg_preferPrivateSession,
      arg_browserPackageName
    ]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error =
          (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return;
    }
  }

  Future<Map<String?, String?>> getValidationData() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.NativeAuthBridge.getValidationData', codec,
        binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(null) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error =
          (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else if (replyMap['result'] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyMap['result'] as Map<Object?, Object?>?)!
          .cast<String?, String?>();
    }
  }
}

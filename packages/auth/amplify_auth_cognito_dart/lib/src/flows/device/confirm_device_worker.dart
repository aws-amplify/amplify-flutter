// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:async';
import 'dart:convert';

import 'package:amplify_auth_cognito_dart/src/crypto/crypto.dart';
import 'package:amplify_auth_cognito_dart/src/flows/device/confirm_device_worker.worker.dart';
import 'package:amplify_auth_cognito_dart/src/flows/srp/srp_helper.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:worker_bee/worker_bee.dart';

part 'confirm_device_worker.g.dart';

/// {@template amplify_auth_cognito.confirm_device_message}
/// Required parameters for the [ConfirmDeviceWorker].
/// {@endtemplate}
abstract class ConfirmDeviceMessage
    implements Built<ConfirmDeviceMessage, ConfirmDeviceMessageBuilder> {
  /// {@macro amplify_auth_cognito.confirm_device_message}
  factory ConfirmDeviceMessage([
    void Function(ConfirmDeviceMessageBuilder) updates,
  ]) = _$ConfirmDeviceMessage;
  ConfirmDeviceMessage._();

  /// The logged-in user's access token.
  String get accessToken;

  /// The device metadata issued by Cognito.
  NewDeviceMetadataType get newDeviceMetadata;

  /// The [ConfirmDeviceMessage] serializer.
  static Serializer<ConfirmDeviceMessage> get serializer =>
      _$confirmDeviceMessageSerializer;
}

/// {@template amplify_auth_cognito.confirm_device_response}
/// The response items of the [ConfirmDeviceWorker].
/// {@endtemplate}
abstract class ConfirmDeviceResponse
    implements Built<ConfirmDeviceResponse, ConfirmDeviceResponseBuilder> {
  /// {@macro amplify_auth_cognito.confirm_device_response}
  factory ConfirmDeviceResponse([
    void Function(ConfirmDeviceResponseBuilder) updates,
  ]) = _$ConfirmDeviceResponse;
  ConfirmDeviceResponse._();

  /// The generated device password.
  String get devicePassword;

  /// The `ConfirmDevice` request.
  ConfirmDeviceRequest get request;

  /// The [ConfirmDeviceResponse] serializer.
  static Serializer<ConfirmDeviceResponse> get serializer =>
      _$confirmDeviceResponseSerializer;
}

/// {@template amplify_auth_cognito.confirm_device_worker}
/// Worker bee for handling the device verifier computations needed to call
/// `ConfirmDevice` with Cognito.
/// {@endtemplate}
@WorkerBee('lib/src/workers/workers.dart')
abstract class ConfirmDeviceWorker
    extends WorkerBeeBase<ConfirmDeviceMessage, ConfirmDeviceResponse> {
  /// {@macro amplify_auth_cognito.confirm_device_worker}
  ConfirmDeviceWorker() : super(serializers: _serializers);

  /// {@macro amplify_auth_cognito.confirm_device_worker}
  factory ConfirmDeviceWorker.create() = ConfirmDeviceWorkerImpl;

  @override
  Future<ConfirmDeviceResponse?> run(
    Stream<ConfirmDeviceMessage> listen,
    StreamSink<ConfirmDeviceResponse> respond,
  ) async {
    await for (final message in listen) {
      final deviceGroupKey = message.newDeviceMetadata.deviceGroupKey;
      final deviceKey = message.newDeviceMetadata.deviceKey;
      if (deviceGroupKey == null || deviceKey == null) {
        throw InvalidParameterException(message: 'Missing device metadata');
      }

      // Generate a random password of 40 bytes per
      // https://aws.amazon.com/premiumsupport/knowledge-center/cognito-user-pool-remembered-devices/
      final devicePassword = base64Encode(getRandomBytes(40));
      final deviceKeyHash = SrpHelper.privateKeyIdentifier(
        deviceGroupKey,
        deviceKey,
        devicePassword,
      );

      // Generate a random BigInt
      final salt = encodeBigInt(decodeBigInt(getRandomBytes(16)));
      final verifier = SrpHelper.calculateDeviceVerifier(
        salt,
        deviceKeyHash,
      );
      final request = ConfirmDeviceRequest.build((b) {
        b
          ..accessToken = message.accessToken
          ..deviceKey = deviceKey
          ..deviceSecretVerifierConfig.passwordVerifier =
              base64Encode(encodeBigInt(verifier))
          ..deviceSecretVerifierConfig.salt = base64Encode(salt);
      });
      respond.add(
        ConfirmDeviceResponse(
          (b) => b
            ..request.replace(request)
            ..devicePassword = devicePassword,
        ),
      );
    }

    return null;
  }
}

/// Serializers for the [ConfirmDeviceWorker] worker.
@SerializersFor([
  ConfirmDeviceMessage,
  ConfirmDeviceResponse,
])
final Serializers _serializers = (_$_serializers.toBuilder()
      ..addAll(NewDeviceMetadataType.serializers)
      ..addAll(ConfirmDeviceRequest.serializers)
      ..addAll(DeviceSecretVerifierConfigType.serializers))
    .build();

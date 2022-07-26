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
import 'package:amplify_auth_cognito_dart/src/flows/helpers.dart';
import 'package:amplify_auth_cognito_dart/src/flows/srp/srp_helper.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:worker_bee/worker_bee.dart';

import 'confirm_device_worker.worker.dart';

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

/// {@template amplify_auth_cognito.confirm_device_worker}
/// Worker bee for handling the device verifier computations needed to call
/// `ConfirmDevice` with Cognito.
/// {@endtemplate}
@WorkerBee('lib/src/workers/workers.dart')
abstract class ConfirmDeviceWorker
    extends WorkerBeeBase<ConfirmDeviceMessage, ConfirmDeviceRequest> {
  /// {@macro amplify_auth_cognito.confirm_device_worker}
  ConfirmDeviceWorker() : super(serializers: _serializers);

  /// {@macro amplify_auth_cognito.confirm_device_worker}
  factory ConfirmDeviceWorker.create() = ConfirmDeviceWorkerImpl;

  @override
  Future<ConfirmDeviceRequest?> run(
    Stream<ConfirmDeviceMessage> listen,
    StreamSink<ConfirmDeviceRequest> respond,
  ) async {
    await for (final message in listen) {
      final deviceGroupKey = message.newDeviceMetadata.deviceGroupKey;
      final deviceKey = message.newDeviceMetadata.deviceKey;
      if (deviceGroupKey == null || deviceKey == null) {
        throw InvalidParameterException(message: 'Missing device metadata');
      }

      // Generate a random password of 40 bytes per
      // https://aws.amazon.com/premiumsupport/knowledge-center/cognito-user-pool-remembered-devices/
      final password = base64Encode(getRandomBytes(40));
      final deviceKeyHash = computeSecretHash(
        deviceGroupKey,
        deviceKey,
        password,
      );

      // Generate a random BigInt
      final saltBytes = getRandomBytes(16);
      final salt = decodeBigInt(saltBytes);

      final verifier = SrpHelper.calculateDeviceVerifier(
        saltBytes,
        deviceKeyHash,
      );
      final request = ConfirmDeviceRequest.build((b) {
        b
          ..accessToken = message.accessToken
          ..deviceKey = deviceKey
          ..deviceSecretVerifierConfig.passwordVerifier =
              base64Encode(encodeBigInt(verifier))
          ..deviceSecretVerifierConfig.salt = base64Encode(encodeBigInt(salt));
      });
      respond.add(request);
    }

    return null;
  }
}

/// Serializers for the [ConfirmDeviceWorker] worker.
@SerializersFor([
  ConfirmDeviceMessage,
])
final Serializers _serializers = (_$_serializers.toBuilder()
      ..addAll(NewDeviceMetadataType.serializers)
      ..addAll(ConfirmDeviceRequest.serializers)
      ..addAll(DeviceSecretVerifierConfigType.serializers))
    .build();

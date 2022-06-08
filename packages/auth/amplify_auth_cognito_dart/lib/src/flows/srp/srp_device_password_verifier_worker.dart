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

import 'package:amplify_auth_cognito_dart/src/flows/constants.dart';
import 'package:amplify_auth_cognito_dart/src/flows/helpers.dart';
import 'package:amplify_auth_cognito_dart/src/flows/srp/srp_helper.dart';
import 'package:amplify_auth_cognito_dart/src/flows/srp/srp_init_result.dart';
import 'package:amplify_auth_cognito_dart/src/model/cognito_device_secrets.dart';
import 'package:amplify_auth_cognito_dart/src/model/sign_in_parameters.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:intl/intl.dart';
import 'package:worker_bee/worker_bee.dart';

import 'srp_device_password_verifier_worker.worker.dart';

part 'srp_device_password_verifier_worker.g.dart';

/// {@template amplify_auth_cognito.srp_device_password_verifier_message}
/// Required parameters for the [SrpDevicePasswordVerifierWorker].
/// {@endtemplate}
@BuiltValue(nestedBuilders: false)
abstract class SrpDevicePasswordVerifierMessage
    implements
        Built<SrpDevicePasswordVerifierMessage,
            SrpDevicePasswordVerifierMessageBuilder> {
  /// {@macro amplify_auth_cognito.srp_device_password_verifier_message}
  factory SrpDevicePasswordVerifierMessage([
    void Function(SrpDevicePasswordVerifierMessageBuilder) updates,
  ]) = _$SrpDevicePasswordVerifierMessage;

  SrpDevicePasswordVerifierMessage._();

  /// Result of the SRP initialization step.
  SrpInitResult get initResult;

  /// User pool client ID.
  String get clientId;

  /// User pool client secret, if any.
  String? get clientSecret;

  /// User device secrets.
  CognitoDeviceSecrets get deviceSecrets;

  /// Parameters to the SRP flow.
  SignInParameters get parameters;

  /// Parameters of the current challenge.
  BuiltMap<String, String> get challengeParameters;

  /// The [SrpDevicePasswordVerifierMessage] serializer.
  static Serializer<SrpDevicePasswordVerifierMessage> get serializer =>
      _$srpDevicePasswordVerifierMessageSerializer;
}

/// {@template amplify_auth_cognito.srp_device_password_verifier_worker}
/// Worker bee for handling the SRP device password verifier challenge routine.
/// {@endtemplate}
@WorkerBee('packages/amplify_auth_cognito_dart/workers.dart.js', [
  'packages/amplify_auth_cognito_dart/workers.js',
])
abstract class SrpDevicePasswordVerifierWorker extends WorkerBeeBase<
    SrpDevicePasswordVerifierMessage, RespondToAuthChallengeRequest> {
  /// {@macro amplify_auth_cognito.srp_device_password_verifier_worker}
  SrpDevicePasswordVerifierWorker() : super(serializers: serializers);

  /// {@macro amplify_auth_cognito.srp_device_password_verifier_worker}
  factory SrpDevicePasswordVerifierWorker.create() =
      SrpDevicePasswordVerifierWorkerImpl;

  static final _dateFormat = DateFormat("EEE MMM d HH:mm:ss 'UTC' yyyy");

  @override
  Future<RespondToAuthChallengeRequest?> run(
    Stream<SrpDevicePasswordVerifierMessage> listen,
    StreamSink<RespondToAuthChallengeRequest> respond,
  ) async {
    await for (final message in listen) {
      final username =
          message.challengeParameters[CognitoConstants.challengeParamUsername]!;
      final userId = message
          .challengeParameters[CognitoConstants.challengeParamUserIdForSrp]!;
      final deviceKey = message
          .challengeParameters[CognitoConstants.challengeParamDeviceKey]!;
      final secretBlock = message
          .challengeParameters[CognitoConstants.challengeParamSecretBlock]!;
      final encodedSalt =
          message.challengeParameters[CognitoConstants.challengeParamSalt]!;
      final encodedB =
          message.challengeParameters[CognitoConstants.challengeParamSrpB]!;
      final timestamp = DateTime.now().toUtc();
      final formattedTimestamp = _dateFormat.format(timestamp);

      final encodedClaim = SrpHelper.createDeviceClaim(
        deviceKey,
        message.deviceSecrets,
        userId,
        message.parameters,
        message.initResult,
        encodedSalt,
        encodedB,
        secretBlock,
        formattedTimestamp,
      );
      final response = RespondToAuthChallengeRequest.build((b) {
        b
          ..clientId = message.clientId
          ..challengeName = ChallengeNameType.devicePasswordVerifier
          ..challengeResponses.addAll({
            CognitoConstants.challengeParamPasswordSecretBlock: secretBlock,
            CognitoConstants.challengeParamPasswordSignature: encodedClaim,
            CognitoConstants.challengeParamUsername: username,
            CognitoConstants.challengeParamTimestamp: formattedTimestamp,
            CognitoConstants.challengeParamDeviceKey: deviceKey,
          });

        if (message.clientSecret != null) {
          b.challengeResponses[CognitoConstants.challengeParamSecretHash] =
              computeSecretHash(
            username,
            message.clientId,
            message.clientSecret!,
          );
        }
      });

      respond.add(response);
    }
    return null;
  }
}

/// Serializers for the [SrpDevicePasswordVerifierWorker] worker.
@SerializersFor([
  SrpDevicePasswordVerifierMessage,
])
final Serializers serializers = (_$serializers.toBuilder()
      ..addAll(const [
        ...RespondToAuthChallengeRequest.serializers,
        ...AnalyticsMetadataType.serializers,
        ...ChallengeNameType.serializers,
        ...UserContextDataType.serializers,
      ]))
    .build();

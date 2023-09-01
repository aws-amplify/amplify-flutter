// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_auth_cognito_dart/src/flows/constants.dart';
import 'package:amplify_auth_cognito_dart/src/flows/helpers.dart';
import 'package:amplify_auth_cognito_dart/src/flows/srp/srp_device_password_verifier_worker.worker.dart';
import 'package:amplify_auth_cognito_dart/src/flows/srp/srp_helper.dart';
import 'package:amplify_auth_cognito_dart/src/flows/srp/srp_init_result.dart';
import 'package:amplify_auth_cognito_dart/src/model/cognito_device_secrets.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:intl/intl.dart';
import 'package:worker_bee/worker_bee.dart';

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

  /// Parameters of the current challenge.
  BuiltMap<String, String> get challengeParameters;

  /// The [SrpDevicePasswordVerifierMessage] serializer.
  static Serializer<SrpDevicePasswordVerifierMessage> get serializer =>
      _$srpDevicePasswordVerifierMessageSerializer;
}

/// {@template amplify_auth_cognito.srp_device_password_verifier_worker}
/// Worker bee for handling the SRP device password verifier challenge routine.
/// {@endtemplate}
@WorkerBee('lib/src/workers/workers.dart')
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
      final SrpDevicePasswordVerifierMessage(
        :initResult,
        :clientId,
        :clientSecret,
        :deviceSecrets,
        :challengeParameters,
      ) = message;
      final username = unwrapParameter(
        CognitoConstants.challengeParamUsername,
        challengeParameters[CognitoConstants.challengeParamUsername],
      );
      final deviceKey = unwrapParameter(
        CognitoConstants.challengeParamDeviceKey,
        challengeParameters[CognitoConstants.challengeParamDeviceKey],
      );
      final secretBlock = unwrapParameter(
        CognitoConstants.challengeParamSecretBlock,
        challengeParameters[CognitoConstants.challengeParamSecretBlock],
      );
      final encodedSalt = unwrapParameter(
        CognitoConstants.challengeParamSalt,
        challengeParameters[CognitoConstants.challengeParamSalt],
      );
      final encodedB = unwrapParameter(
        CognitoConstants.challengeParamSrpB,
        challengeParameters[CognitoConstants.challengeParamSrpB],
      );
      final formattedTimestamp = _dateFormat.format(DateTime.timestamp());

      final encodedClaim = SrpHelper.createDeviceClaim(
        deviceKey: deviceKey,
        deviceSecrets: deviceSecrets,
        username: username,
        initResult: initResult,
        encodedSalt: encodedSalt,
        encodedB: encodedB,
        secretBlock: secretBlock,
        formattedTimestamp: formattedTimestamp,
      );
      final response = RespondToAuthChallengeRequest.build((b) {
        b
          ..clientId = clientId
          ..challengeName = ChallengeNameType.devicePasswordVerifier
          ..challengeResponses[
              CognitoConstants.challengeParamPasswordSecretBlock] = secretBlock
          ..challengeResponses[
              CognitoConstants.challengeParamPasswordSignature] = encodedClaim
          ..challengeResponses[CognitoConstants.challengeParamUsername] =
              username
          ..challengeResponses[CognitoConstants.challengeParamTimestamp] =
              formattedTimestamp
          ..challengeResponses[CognitoConstants.challengeParamDeviceKey] =
              deviceKey;

        if (clientSecret != null) {
          b.challengeResponses[CognitoConstants.challengeParamSecretHash] =
              computeSecretHash(username, clientId, clientSecret);
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
        ...DeviceRememberedStatusType.serializers,
      ]))
    .build();

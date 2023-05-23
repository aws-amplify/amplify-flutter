// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:amplify_auth_cognito_dart/src/asf/asf_context_data.dart';
import 'package:amplify_auth_cognito_dart/src/asf/asf_worker.worker.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/user_context_data_type.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:aws_common/aws_common.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:crypto/crypto.dart';
import 'package:worker_bee/worker_bee.dart';

part 'asf_worker.g.dart';

/// {@template amplify_auth_cognito_dart.asf.asf_worker_request}
/// Request to the ASF worker for calculating the [UserContextDataType]
/// for Cognito SDK calls.
/// {@endtemplate}
abstract class ASFWorkerRequest
    implements Built<ASFWorkerRequest, ASFWorkerRequestBuilder> {
  /// {@macro amplify_auth_cognito_dart.asf.asf_worker_request}
  factory ASFWorkerRequest({
    required String userPoolId,
    required String clientId,
    required String username,
    required String deviceId,
    required ASFContextData nativeContextData,
  }) =>
      _$ASFWorkerRequest._(
        requestId: _requestId++,
        userPoolId: userPoolId,
        clientId: clientId,
        username: username,
        deviceId: deviceId,
        nativeContextData: nativeContextData,
      );

  /// {@macro amplify_auth_cognito_dart.asf.asf_worker_request}
  factory ASFWorkerRequest.build([
    void Function(ASFWorkerRequestBuilder) updates,
  ]) = _$ASFWorkerRequest;
  const ASFWorkerRequest._();

  static var _requestId = 0;

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ASFWorkerRequestBuilder b) {
    b.requestId = _requestId++;
  }

  /// The unique ID of the request.
  int get requestId;

  /// The Cognito User Pool ID
  String get userPoolId;

  /// The Cognito User Pool client ID
  String get clientId;

  /// The Cognito user's username.
  String get username;

  /// The ASF device ID.
  String get deviceId;

  /// The native user context data.
  ASFContextData get nativeContextData;

  /// The [ASFWorkerRequest] serializer.
  static Serializer<ASFWorkerRequest> get serializer =>
      _$aSFWorkerRequestSerializer;
}

/// {@template amplify_auth_cognito_dart.asf.asf_worker_response}
/// Response from the ASF worker with the [UserContextDataType] for Cognito SDK calls.
/// {@endtemplate}
abstract class ASFWorkerResponse
    implements Built<ASFWorkerResponse, ASFWorkerResponseBuilder> {
  /// {@macro amplify_auth_cognito_dart.asf.asf_worker_response}
  factory ASFWorkerResponse([void Function(ASFWorkerResponseBuilder) updates]) =
      _$ASFWorkerResponse;
  const ASFWorkerResponse._();

  /// The unique ID of the request.
  int get requestId;

  /// The encoded user context data.
  UserContextDataType get userContextData;

  /// The [ASFWorkerResponse] serializer.
  static Serializer<ASFWorkerResponse> get serializer =>
      _$aSFWorkerResponseSerializer;
}

/// {@template amplify_auth_cognito_dart.asf.asf_worker}
/// Calculates the [UserContextDataType] for Cognito SDK calls.
/// {@endtemplate}
@WorkerBee('lib/src/workers/workers.dart')
abstract class ASFWorker
    extends WorkerBeeBase<ASFWorkerRequest, ASFWorkerResponse> {
  /// {@macro amplify_auth_cognito_dart.asf.asf_worker}
  ASFWorker() : super(serializers: _serializers);

  /// {@macro amplify_auth_cognito_dart.asf.asf_worker}
  factory ASFWorker.create() = ASFWorkerImpl;

  static const _version = 'FLUTTER20230306';

  @override
  Future<ASFWorkerResponse?> run(
    Stream<ASFWorkerRequest> listen,
    StreamSink<ASFWorkerResponse> respond,
  ) async {
    await for (final request in listen) {
      final ASFWorkerRequest(
        :requestId,
        :userPoolId,
        :clientId,
        :username,
        :deviceId,
        :nativeContextData,
      ) = request;

      // Follows the signature algorithm
      final timestamp = DateTime.timestamp().millisecondsSinceEpoch.toString();
      final payload = <String, Object>{
        'contextData': <String, String>{
          'DeviceId': deviceId,
          ...nativeContextData.toJson(),
        },
        'username': username,
        'userPoolId': userPoolId,
        'timestamp': timestamp,
      };
      logger.verbose('Sending payload: ${prettyPrintJson(payload)}');
      final payloadJson = jsonEncode(payload);

      final secret = utf8.encode(clientId);
      final hash = Hmac(sha256, secret);
      final versionBytes = utf8.encode(_version);
      final payloadBytes = utf8.encode(payloadJson);
      final bytes = (BytesBuilder(copy: false)
            ..add(versionBytes)
            ..add(payloadBytes))
          .takeBytes();
      final signature = base64Encode(hash.convert(bytes).bytes);

      final contextData = <String, String>{
        'payload': payloadJson,
        'signature': signature,
        'version': _version,
      };
      final encodedContextData = base64Encode(
        utf8.encode(jsonEncode(contextData)),
      );

      respond.add(
        ASFWorkerResponse(
          (b) => b
            ..requestId = requestId
            ..userContextData.encodedData = encodedContextData,
        ),
      );
    }
    return null;
  }
}

@SerializersFor([
  ASFContextData,
  ASFWorkerRequest,
  ASFWorkerResponse,
])
final Serializers _serializers = (_$_serializers.toBuilder()
      ..addAll(UserContextDataType.serializers))
    .build();

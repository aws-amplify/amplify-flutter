// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:aws_liveness/src/face_liveness_exception.dart';
import 'package:aws_liveness/src/pigeons/aws_liveness_pigeon.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

/// {@template aws_liveness.aws_liveness}
/// Runs Amazon Rekognition Face Liveness checks using the native Amplify UI
/// Face Liveness components on Android and iOS.
///
/// Create a Face Liveness session on your backend with
/// `CreateFaceLivenessSession`, pass its ID to [start], and once [start]
/// completes, call `GetFaceLivenessSessionResults` on your backend to get the
/// liveness verdict. The client never learns whether the user is live.
///
/// ```dart
/// final liveness = AwsLiveness(credentialsProvider: myCredentialsProvider);
/// try {
///   await liveness.start(sessionId: sessionId, region: 'us-east-1');
///   // Fetch the result on your backend.
/// } on FaceLivenessException catch (e) {
///   if (e.code != FaceLivenessErrorCode.userCancelled) rethrow;
/// }
/// ```
/// {@endtemplate}
class AwsLiveness {
  /// {@macro aws_liveness.aws_liveness}
  ///
  /// [credentialsProvider] is called whenever the native SDK needs AWS
  /// credentials to stream video to Rekognition. The credentials must allow
  /// `rekognition:StartFaceLivenessSession`.
  AwsLiveness({required AWSCredentialsProvider credentialsProvider})
    : this.withHostApi(
        credentialsProvider: credentialsProvider,
        hostApi: AwsLivenessHostApi(),
      );

  /// Injects platform-channel dependencies for tests.
  @visibleForTesting
  AwsLiveness.withHostApi({
    required AWSCredentialsProvider credentialsProvider,
    required AwsLivenessHostApi hostApi,
    BinaryMessenger? binaryMessenger,
  }) : _credentialsProvider = credentialsProvider,
       _hostApi = hostApi,
       _binaryMessenger = binaryMessenger;

  final AWSCredentialsProvider _credentialsProvider;
  final AwsLivenessHostApi _hostApi;
  final BinaryMessenger? _binaryMessenger;

  /// Whether any instance has a check running. The credentials handler is
  /// global to the engine, so a second check must not replace it.
  static bool _inProgress = false;

  /// Presents the Face Liveness check for [sessionId] and completes once the
  /// video has been streamed to Rekognition.
  ///
  /// [region] is the AWS region the session was created in.
  /// Set [disableStartView] to skip the SDK's introduction screen, which
  /// includes a photosensitivity warning.
  ///
  /// Throws a [FaceLivenessException] if the check does not complete,
  /// including when the user cancels it
  /// ([FaceLivenessErrorCode.userCancelled]). Only one check can run at a
  /// time.
  Future<void> start({
    required String sessionId,
    required String region,
    bool disableStartView = false,
  }) async {
    if (sessionId.isEmpty || region.isEmpty) {
      throw ArgumentError('sessionId and region must not be empty.');
    }
    if (_inProgress) {
      throw const FaceLivenessException(
        code: FaceLivenessErrorCode.alreadyInProgress,
        message: 'A Face Liveness check is already in progress.',
        recoverySuggestion: 'Wait for the current check to finish.',
      );
    }
    _inProgress = true;
    AwsLivenessFlutterApi.setUp(
      _CredentialsHandler(_credentialsProvider),
      binaryMessenger: _binaryMessenger,
    );
    try {
      await _hostApi.start(
        LivenessStartRequest(
          sessionId: sessionId,
          region: region,
          disableStartView: disableStartView,
        ),
      );
    } on PlatformException catch (e) {
      throw FaceLivenessException(
        code: FaceLivenessErrorCode.fromPlatformCode(e.code),
        message: e.message ?? 'The Face Liveness check failed.',
        recoverySuggestion: switch (e.details) {
          final String suggestion when suggestion.isNotEmpty => suggestion,
          _ => 'Create a new Face Liveness session and retry.',
        },
        cause: e,
      );
    } finally {
      AwsLivenessFlutterApi.setUp(null, binaryMessenger: _binaryMessenger);
      _inProgress = false;
    }
  }
}

final class _CredentialsHandler implements AwsLivenessFlutterApi {
  const _CredentialsHandler(this._provider);

  final AWSCredentialsProvider _provider;

  @override
  Future<LivenessCredentials> fetchCredentials() async {
    final credentials = await _provider.resolve();
    return switch (credentials) {
      TemporaryCredentials(:final sessionToken, :final expiration) =>
        LivenessCredentials(
          accessKeyId: credentials.accessKeyId,
          secretAccessKey: credentials.secretAccessKey,
          sessionToken: sessionToken,
          expirationEpochSeconds: expiration.millisecondsSinceEpoch ~/ 1000,
        ),
      StaticCredentials() => LivenessCredentials(
        accessKeyId: credentials.accessKeyId,
        secretAccessKey: credentials.secretAccessKey,
      ),
    };
  }
}

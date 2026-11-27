// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_face_liveness/src/face_liveness_camera.dart';
import 'package:amplify_face_liveness/src/face_liveness_exception.dart';
import 'package:amplify_face_liveness/src/pigeons/amplify_face_liveness_pigeon.g.dart';
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

/// {@template amplify_face_liveness.amplify_face_liveness}
/// Runs Amazon Rekognition Face Liveness checks using the native Amplify UI
/// Face Liveness components on Android and iOS.
///
/// Create a Face Liveness session on your backend with
/// `CreateFaceLivenessSession`, pass its ID to [start], and once [start]
/// completes, call `GetFaceLivenessSessionResults` on your backend to get the
/// liveness verdict. The client never learns whether the user is live.
///
/// ```dart
/// final liveness = AmplifyFaceLiveness(credentialsProvider: myCredentialsProvider);
/// try {
///   await liveness.start(sessionId: sessionId, region: 'us-east-1');
///   // Fetch the result on your backend.
/// } on FaceLivenessException catch (e) {
///   if (e.code != FaceLivenessErrorCode.userCancelled) rethrow;
/// }
/// ```
/// {@endtemplate}
class AmplifyFaceLiveness {
  /// {@macro amplify_face_liveness.amplify_face_liveness}
  ///
  /// [credentialsProvider] is called whenever the native SDK needs AWS
  /// credentials to stream video to Rekognition. The credentials must allow
  /// `rekognition:StartFaceLivenessSession`.
  AmplifyFaceLiveness({required AWSCredentialsProvider credentialsProvider})
    : this.withHostApi(
        credentialsProvider: credentialsProvider,
        hostApi: AmplifyFaceLivenessHostApi(),
      );

  /// Injects platform-channel dependencies for tests.
  @visibleForTesting
  AmplifyFaceLiveness.withHostApi({
    required AWSCredentialsProvider credentialsProvider,
    required AmplifyFaceLivenessHostApi hostApi,
    BinaryMessenger? binaryMessenger,
  }) : _credentialsProvider = credentialsProvider,
       _hostApi = hostApi,
       _binaryMessenger = binaryMessenger;

  final AWSCredentialsProvider _credentialsProvider;
  final AmplifyFaceLivenessHostApi _hostApi;
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
  /// [faceMovementCamera] selects the camera for the FaceMovement challenge;
  /// FaceMovementAndLight always uses the front camera.
  ///
  /// Throws a [FaceLivenessException] if the check does not complete,
  /// including when the user cancels it
  /// ([FaceLivenessErrorCode.userCancelled]). Only one check can run at a
  /// time.
  Future<void> start({
    required String sessionId,
    required String region,
    bool disableStartView = false,
    FaceLivenessCamera faceMovementCamera = FaceLivenessCamera.front,
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
    AmplifyFaceLivenessFlutterApi.setUp(
      _CredentialsHandler(_credentialsProvider),
      binaryMessenger: _binaryMessenger,
    );
    try {
      await _hostApi.start(
        LivenessStartRequest(
          sessionId: sessionId,
          region: region,
          disableStartView: disableStartView,
          faceMovementCamera: switch (faceMovementCamera) {
            FaceLivenessCamera.front => LivenessCameraPosition.front,
            FaceLivenessCamera.back => LivenessCameraPosition.back,
          },
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
      AmplifyFaceLivenessFlutterApi.setUp(
        null,
        binaryMessenger: _binaryMessenger,
      );
      _inProgress = false;
    }
  }
}

final class _CredentialsHandler implements AmplifyFaceLivenessFlutterApi {
  const _CredentialsHandler(this._provider);

  final AWSCredentialsProvider _provider;

  /// How long native code waits for credentials. The native UI has no way
  /// out while it waits, so a provider that never completes must fail the
  /// check (as a `credentials` error) instead of blocking it.
  static const timeout = Duration(seconds: 30);

  @override
  Future<LivenessCredentials> fetchCredentials() async {
    final credentials = await _provider.resolve().timeout(timeout);
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

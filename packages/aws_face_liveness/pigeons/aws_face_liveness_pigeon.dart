// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// To regenerate, run `make pigeons`.

import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(
  PigeonOptions(
    dartOut: 'lib/src/pigeons/aws_face_liveness_pigeon.g.dart',
    kotlinOptions: KotlinOptions(
      package: 'com.amazonaws.amplify.aws_face_liveness.pigeons',
    ),
    kotlinOut:
        'android/src/main/kotlin/com/amazonaws/amplify/aws_face_liveness/pigeons/AwsFaceLivenessPigeon.kt',
    swiftOut:
        'ios/aws_face_liveness/Sources/aws_face_liveness/pigeons/AwsFaceLivenessPigeon.swift',
    copyrightHeader: 'pigeons/copyright.txt',
  ),
)
/// The camera used for the FaceMovement challenge.
enum LivenessCameraPosition { front, back }

/// Options for a single Face Liveness check.
class LivenessStartRequest {
  LivenessStartRequest({
    required this.sessionId,
    required this.region,
    required this.disableStartView,
    required this.faceMovementCamera,
  });

  final String sessionId;
  final String region;
  final bool disableStartView;
  final LivenessCameraPosition faceMovementCamera;
}

/// AWS credentials handed from Dart to the native Face Liveness SDK.
class LivenessCredentials {
  LivenessCredentials({
    required this.accessKeyId,
    required this.secretAccessKey,
    this.sessionToken,
    this.expirationEpochSeconds,
  });

  final String accessKeyId;
  final String secretAccessKey;
  final String? sessionToken;
  final int? expirationEpochSeconds;
}

/// Native API used by Dart to run a Face Liveness check.
///
/// `start` completes when the check finishes successfully, or fails with a
/// platform error whose code is one of the `FaceLivenessErrorCode` names.
@HostApi()
abstract class AwsFaceLivenessHostApi {
  @async
  void start(LivenessStartRequest request);
}

/// Dart API used by native code to obtain credentials for the check.
@FlutterApi()
abstract class AwsFaceLivenessFlutterApi {
  @async
  LivenessCredentials fetchCredentials();
}

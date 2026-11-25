// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// To regenerate, run `make pigeons`.

import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(
  PigeonOptions(
    dartOut: 'lib/src/pigeons/aws_liveness_pigeon.g.dart',
    kotlinOptions: KotlinOptions(
      package: 'com.amazonaws.amplify.aws_liveness.pigeons',
    ),
    kotlinOut:
        'android/src/main/kotlin/com/amazonaws/amplify/aws_liveness/pigeons/AwsLivenessPigeon.kt',
    swiftOut:
        'ios/aws_liveness/Sources/aws_liveness/pigeons/AwsLivenessPigeon.swift',
    copyrightHeader: 'pigeons/copyright.txt',
  ),
)
/// Options for a single Face Liveness check.
class LivenessStartRequest {
  LivenessStartRequest({
    required this.sessionId,
    required this.region,
    required this.disableStartView,
  });

  final String sessionId;
  final String region;
  final bool disableStartView;
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
abstract class AwsLivenessHostApi {
  @async
  void start(LivenessStartRequest request);
}

/// Dart API used by native code to obtain credentials for the check.
@FlutterApi()
abstract class AwsLivenessFlutterApi {
  @async
  LivenessCredentials fetchCredentials();
}

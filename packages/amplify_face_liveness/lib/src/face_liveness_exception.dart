// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';

/// The reason a Face Liveness check did not complete.
///
/// The native Face Liveness SDKs on Android and iOS report errors in
/// different shapes. They are normalized to these codes; codes that only one
/// platform can produce are noted.
///
/// New codes may be added in minor releases as the native SDKs report new
/// errors, so keep a `default` (or `_`) branch when switching over this enum.
enum FaceLivenessErrorCode {
  /// The user closed the check before it finished.
  userCancelled,

  /// The user did not grant camera permission.
  cameraPermissionDenied,

  /// No usable front camera was found. iOS only.
  cameraNotAvailable,

  /// The session ID does not exist or has already been used.
  sessionNotFound,

  /// The session expired before the check completed.
  sessionTimedOut,

  /// The check was interrupted, for example because the app was
  /// backgrounded. A new session is required to retry.
  sessionInterrupted,

  /// The user did not fit their face into the oval in time.
  faceInOvalMatchExceededTimeLimit,

  /// The credentials are not authorized to start a Face Liveness stream.
  accessDenied,

  /// The request signature was rejected, usually because of invalid
  /// credentials or device clock skew. iOS only.
  invalidSignature,

  /// The region is not supported by Face Liveness. iOS only.
  invalidRegion,

  /// The service rejected the request as invalid. iOS only.
  validation,

  /// The service is throttling requests. iOS only.
  throttling,

  /// A service quota was exceeded. iOS only.
  serviceQuotaExceeded,

  /// The service is temporarily unavailable or failed internally. iOS only.
  serviceUnavailable,

  /// The streaming connection closed unexpectedly. iOS only.
  socketClosed,

  /// The user's face was too close to the camera during the countdown.
  /// iOS only.
  faceTooClose,

  /// More than one face was detected. iOS only.
  multipleFaces,

  /// No face was detected. iOS only.
  noFace,

  /// The backend requested a challenge this SDK does not support.
  /// Android only.
  unsupportedChallengeType,

  /// The device could not encode the video. Android only.
  videoEncoding,

  /// The credentials provider passed to `AmplifyFaceLiveness` failed.
  credentials,

  /// Another check is already in progress.
  alreadyInProgress,

  /// The plugin is not attached to a foreground Activity or view controller.
  noForegroundUi,

  /// An error that does not match any other code.
  unknown;

  /// Parses a platform error code, falling back to [unknown].
  static FaceLivenessErrorCode fromPlatformCode(String code) =>
      FaceLivenessErrorCode.values.asNameMap()[code] ?? unknown;
}

/// {@template amplify_face_liveness.face_liveness_exception}
/// Thrown when a Face Liveness check does not complete successfully.
/// {@endtemplate}
final class FaceLivenessException extends AmplifyException {
  /// {@macro amplify_face_liveness.face_liveness_exception}
  const FaceLivenessException({
    required this.code,
    required super.message,
    super.recoverySuggestion = 'Create a new Face Liveness session and retry.',
    super.cause,
  });

  /// Why the check did not complete.
  final FaceLivenessErrorCode code;

  @override
  String toString() =>
      'FaceLivenessException(${code.name}): $message\n'
      'Recovery suggestion: $recoverySuggestion';
}

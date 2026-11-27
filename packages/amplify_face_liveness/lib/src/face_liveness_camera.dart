// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// The camera used for the FaceMovement challenge.
///
/// The FaceMovementAndLight challenge always uses the front camera, so this
/// only applies when the session uses the FaceMovement challenge.
enum FaceLivenessCamera {
  /// The front (selfie) camera.
  front,

  /// The back camera, for example when an operator checks another person.
  back,
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import FaceLiveness

/// Error codes reported to Dart. Must match the names of `FaceLivenessErrorCode`.
enum ErrorCodes {
    static let alreadyInProgress = "alreadyInProgress"
    static let noForegroundUi = "noForegroundUi"
    static let cameraPermissionDenied = "cameraPermissionDenied"

    /// Maps a Face Liveness SDK error to an error code.
    ///
    /// - Parameters:
    ///   - credentialsFailed: Whether a credentials fetch failed during the
    ///     check. That surfaces as a generic SDK error, so it only overrides
    ///     generic errors (as on Android).
    ///   - cameraAuthorized: Whether camera access is granted. The SDK reports
    ///     most unexpected failures as `cameraPermissionDenied`.
    static func code(
        for error: FaceLivenessDetectionError,
        credentialsFailed: Bool,
        cameraAuthorized: Bool
    ) -> String {
        let generic = credentialsFailed ? "credentials" : "unknown"
        switch error {
        case .userCancelled: return "userCancelled"
        case .cameraPermissionDenied: return cameraAuthorized ? generic : cameraPermissionDenied
        case .cameraNotAvailable: return "cameraNotAvailable"
        case .sessionNotFound: return "sessionNotFound"
        case .sessionTimedOut: return "sessionTimedOut"
        case .sessionInterrupted: return "sessionInterrupted"
        case .faceInOvalMatchExceededTimeLimitError: return "faceInOvalMatchExceededTimeLimit"
        case .accessDenied: return credentialsFailed ? "credentials" : "accessDenied"
        case .invalidSignature: return "invalidSignature"
        case .invalidRegion: return "invalidRegion"
        case .validation: return "validation"
        case .throttling: return "throttling"
        case .serviceQuotaExceeded: return "serviceQuotaExceeded"
        case .serviceUnavailable, .internalServer: return "serviceUnavailable"
        case .socketClosed: return credentialsFailed ? "credentials" : "socketClosed"
        case .countdownFaceTooClose: return "faceTooClose"
        case .countdownMultipleFaces: return "multipleFaces"
        case .countdownNoFace: return "noFace"
        default: return generic
        }
    }
}

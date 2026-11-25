// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import FaceLiveness

/// Error codes reported to Dart. Must match the names of `FaceLivenessErrorCode`.
enum ErrorCodes {
    static let alreadyInProgress = "alreadyInProgress"
    static let noForegroundUi = "noForegroundUi"

    static func code(for error: FaceLivenessDetectionError, credentialsFailed: Bool) -> String {
        // A failed credentials fetch surfaces as a generic SDK error.
        if credentialsFailed { return "credentials" }
        switch error {
        case .userCancelled: return "userCancelled"
        case .cameraPermissionDenied: return "cameraPermissionDenied"
        case .cameraNotAvailable: return "cameraNotAvailable"
        case .sessionNotFound: return "sessionNotFound"
        case .sessionTimedOut: return "sessionTimedOut"
        case .sessionInterrupted: return "sessionInterrupted"
        case .faceInOvalMatchExceededTimeLimitError: return "faceInOvalMatchExceededTimeLimit"
        case .accessDenied: return "accessDenied"
        case .invalidSignature: return "invalidSignature"
        case .invalidRegion: return "invalidRegion"
        case .validation: return "validation"
        case .throttling: return "throttling"
        case .serviceQuotaExceeded: return "serviceQuotaExceeded"
        case .serviceUnavailable, .internalServer: return "serviceUnavailable"
        case .socketClosed: return "socketClosed"
        case .countdownFaceTooClose: return "faceTooClose"
        case .countdownMultipleFaces: return "multipleFaces"
        case .countdownNoFace: return "noFace"
        default: return "unknown"
        }
    }
}

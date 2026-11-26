// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import FaceLiveness
import XCTest
@testable import amplify_face_liveness

final class ErrorCodesTests: XCTestCase {
    private func code(
        _ error: FaceLivenessDetectionError,
        credentialsFailed: Bool = false,
        cameraAuthorized: Bool = true
    ) -> String {
        ErrorCodes.code(for: error, credentialsFailed: credentialsFailed, cameraAuthorized: cameraAuthorized)
    }

    func testMapsEveryPublicError() {
        let cases: [(FaceLivenessDetectionError, String)] = [
            (.unknown, "unknown"),
            (.sessionNotFound, "sessionNotFound"),
            (.sessionTimedOut, "sessionTimedOut"),
            (.faceInOvalMatchExceededTimeLimitError, "faceInOvalMatchExceededTimeLimit"),
            (.accessDenied, "accessDenied"),
            (.cameraPermissionDenied, "unknown"),
            (.userCancelled, "userCancelled"),
            (.socketClosed, "socketClosed"),
            (.countdownFaceTooClose, "faceTooClose"),
            (.countdownMultipleFaces, "multipleFaces"),
            (.countdownNoFace, "noFace"),
            (.invalidRegion, "invalidRegion"),
            (.validation, "validation"),
            (.internalServer, "serviceUnavailable"),
            (.throttling, "throttling"),
            (.serviceQuotaExceeded, "serviceQuotaExceeded"),
            (.serviceUnavailable, "serviceUnavailable"),
            (.invalidSignature, "invalidSignature"),
            (.cameraNotAvailable, "cameraNotAvailable"),
            (.sessionInterrupted, "sessionInterrupted"),
        ]
        for (error, expected) in cases {
            XCTAssertEqual(code(error), expected, error.message)
        }
    }

    func testCameraPermissionDeniedOnlyWithoutCameraAccess() {
        // The SDK reports unrelated failures as cameraPermissionDenied too.
        XCTAssertEqual(code(.cameraPermissionDenied, cameraAuthorized: false), "cameraPermissionDenied")
        XCTAssertEqual(code(.cameraPermissionDenied, cameraAuthorized: true), "unknown")
    }

    func testFailedCredentialsOverrideOnlyGenericErrors() {
        for error in [FaceLivenessDetectionError.unknown, .socketClosed, .accessDenied, .cameraPermissionDenied] {
            XCTAssertEqual(code(error, credentialsFailed: true), "credentials", error.message)
        }
        XCTAssertEqual(code(.userCancelled, credentialsFailed: true), "userCancelled")
        XCTAssertEqual(code(.sessionNotFound, credentialsFailed: true), "sessionNotFound")
    }
}

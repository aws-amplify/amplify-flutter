// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import FaceLiveness
import Foundation

/// Resolves credentials by calling the `AWSCredentialsProvider` passed to
/// `AwsLiveness` in Dart.
///
/// `@unchecked Sendable`: `flutterApi` is only used on the main thread and
/// `failed` is guarded by `lock`.
final class DartCredentialsProvider: AWSCredentialsProvider, @unchecked Sendable {
    private let flutterApi: AwsLivenessFlutterApi
    private let lock = NSLock()
    private var failed = false

    /// Whether a fetch has failed, so the resulting liveness error can be
    /// reported as a credentials error.
    var didFail: Bool {
        lock.withLock { failed }
    }

    init(flutterApi: AwsLivenessFlutterApi) {
        self.flutterApi = flutterApi
    }

    func fetchAWSCredentials() async throws -> AWSCredentials {
        let credentials: LivenessCredentials
        do {
            credentials = try await withCheckedThrowingContinuation { continuation in
                // Platform channel messages must be sent from the main thread.
                DispatchQueue.main.async {
                    self.flutterApi.fetchCredentials { result in
                        continuation.resume(with: result)
                    }
                }
            }
        } catch {
            lock.withLock { failed = true }
            throw error
        }
        if let sessionToken = credentials.sessionToken, let expiration = credentials.expirationEpochSeconds {
            return TemporaryCredentials(
                accessKeyId: credentials.accessKeyId,
                secretAccessKey: credentials.secretAccessKey,
                sessionToken: sessionToken,
                expiration: Date(timeIntervalSince1970: TimeInterval(expiration))
            )
        }
        return StaticCredentials(
            accessKeyId: credentials.accessKeyId,
            secretAccessKey: credentials.secretAccessKey
        )
    }
}

private struct StaticCredentials: AWSCredentials {
    let accessKeyId: String
    let secretAccessKey: String
}

private struct TemporaryCredentials: AWSTemporaryCredentials {
    let accessKeyId: String
    let secretAccessKey: String
    let sessionToken: String
    let expiration: Date
}

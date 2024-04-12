//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Foundation

public protocol AuthAWSCredentialsProvider {
    /// Return the most recent Result of fetching the AWS Credentials
    func getAWSCredentials() -> Result<AWSCredentials, AuthError>
}

public extension AuthAWSCredentialsProvider where Self: AWSAuthSessionBehavior {
    /// Return the most recent Result of fetching the AWS Credentials. If the temporary credentials are expired, returns
    /// a `AuthError.sessionExpired` failure.
    func getAWSCredentials() -> Result<AWSCredentials, AuthError> {
        let result: Result<AWSCredentials, AuthError>
        switch awsCredentialsResult {
        case .failure(let error): result = .failure(error)
        case .success(let tempCreds):
            if tempCreds.expiration > Date() {
                result = .success(tempCreds)
            } else {
                result = .failure(AuthError.sessionExpired("AWS Credentials are expired", ""))
            }
        }
        return result
    }
}

public protocol AWSCredentialsProvider {
    func fetchAWSCredentials() async throws -> AWSCredentials
}

public protocol AWSTemporaryCredentials: AWSCredentials {

    var sessionToken: String { get }

    var expiration: Date { get }
}

public protocol AWSCredentials {

    var accessKeyId: String { get }

    var secretAccessKey: String { get }
}

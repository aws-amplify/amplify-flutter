// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import Foundation
import AWSPluginsCore

struct NativeAWSPermanentCredentials: AuthAWSCredentials {
    let accessKey: String
    let secretKey: String
}

struct NativeAWSTemporaryCredentials: AuthAWSCredentials, AuthAWSTemporaryCredentials {
    let accessKey: String
    let secretKey: String
    let sessionKey: String
    let expiration: Date
    
    init(
        accessKeyId: String,
        secretAccessKey: String,
        sessionToken: String,
        expiration: Date?
    ) {
        self.accessKey = accessKeyId
        self.secretKey = secretAccessKey
        self.sessionKey = sessionToken
        self.expiration = expiration ?? Date.distantFuture
    }
}

extension NativeAWSCredentials {
    static private let dateFormatter = ISO8601DateFormatter()
    
    var asAuthAWSCredentials: AuthAWSCredentials {
        if let sessionKey = sessionToken {
            let expirationStr = expirationIso8601Utc
            let expiration = expirationStr == nil ? nil :
                NativeAWSCredentials.dateFormatter.date(from: expirationStr!)
            return NativeAWSTemporaryCredentials(
                accessKeyId: accessKeyId,
                secretAccessKey: secretAccessKey,
                sessionToken: sessionKey,
                expiration: expiration
            )
        }
        return NativeAWSPermanentCredentials(
            accessKey: accessKeyId,
            secretKey: secretAccessKey
        )
    }
}

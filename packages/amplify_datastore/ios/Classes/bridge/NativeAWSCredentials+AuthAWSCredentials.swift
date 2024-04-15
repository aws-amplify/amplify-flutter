// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import Foundation
import AWSPluginsCore

struct NativeAWSPermanentCredentials: AWSCredentials {
    let accessKeyId: String
    let secretAccessKey: String
}

struct NativeAWSTemporaryCredentials: AWSCredentials, AWSTemporaryCredentials {
    let accessKeyId: String
    let secretAccessKey: String
    let sessionToken: String
    let expiration: Date
    
    init(
        accessKeyId: String,
        secretAccessKey: String,
        sessionToken: String,
        expiration: Date?
    ) {
        self.accessKeyId = accessKeyId
        self.secretAccessKey = secretAccessKey
        self.sessionToken = sessionToken
        self.expiration = expiration ?? Date.distantFuture
    }
}

extension NativeAWSCredentials {
    static private let dateFormatter = ISO8601DateFormatter()
    
    var asAWSCredentials: AWSCredentials {
        if let sessionToken = sessionToken {
            let expirationStr = expirationIso8601Utc
            let expiration = expirationStr == nil ? nil :
                NativeAWSCredentials.dateFormatter.date(from: expirationStr!)
            return NativeAWSTemporaryCredentials(
                accessKeyId: accessKeyId,
                secretAccessKey: secretAccessKey,
                sessionToken: sessionToken,
                expiration: expiration
            )
        }
        return NativeAWSPermanentCredentials(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey
        )
    }
}

// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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

/*
 * Copyright 2019 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import Foundation
import Amplify


public struct FlutterSerializedRestResponse {
    
    private var statusCode: Int
    private var headers: [AnyHashable: Any]?
    private var data: Data?
    
    init(statusCode: Int = 200, headers: [AnyHashable: Any]?, data: Data?) {
        self.statusCode = statusCode
        self.headers = headers
        self.data = data
    }
    
    func toValueMap() -> [String: Any?] {
        return [
            "statusCode": statusCode,
            "headers": headers,
            "data" : data
        ]
    }

    
}

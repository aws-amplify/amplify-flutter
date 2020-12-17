/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
import AmplifyPlugins

class FlutterApiRequestUtils {
    static func getGraphQLDocument(methodChannelRequest: [String: Any]) throws -> String {
        guard let document = methodChannelRequest["document"] as? String else {
            throw APIError.invalidConfiguration("The graphQL document request argument was not passed as a String",
                                                "The request should include the graphQL document as a String")
        }
        return document
    }
    
    static func getVariables(methodChannelRequest: [String: Any]) throws ->  [String:Any] {
        guard let variables = methodChannelRequest["variables"] as? [String: Any] else {
            throw APIError.invalidConfiguration("The variables request arugument was not passed as a dictionary",
                                                "The request should include the variables argument as a [String: Any] dictionary")
        }
        return variables
    }
}

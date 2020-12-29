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
enum FlutterApiErrorMessage: String {
    case CASTING = "ERROR_CASTING_INPUT_IN_PLATFORM_CODE"
    case MALFORMED = "AMPLIFY_REQUEST_MALFORMED"
    case QUERY_FAILED = "AMPLIFY_API_QUERY_FAILED"
    case MUTATE_FAILED = "AMPLIFY_API_MUTATE_FAILED"
    case GET_FAILED = "AMPLIFY_API_GET_FAILED"
    case PUT_FAILED = "AMPLIFY_API_PUT_FAILED"
    case POST_FAILED = "AMPLIFY_API_POST_FAILED"
    case DELETE_FAILED = "AMPLIFY_API_DELETE_FAILED"
    
    public static func stringToAPIRestError(methodName: String) -> FlutterApiErrorMessage{
        switch methodName {
            case "get": return .GET_FAILED
            case "post": return .POST_FAILED
            case "put": return .PUT_FAILED
            case "delete": return .DELETE_FAILED
            default: return .MALFORMED
        }
    }
}


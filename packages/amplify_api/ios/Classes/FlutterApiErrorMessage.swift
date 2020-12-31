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
    case HEAD_FAILED = "AMPLIFY_API_HEAD_FAILED"
    case PATCH_FAILED = "AMPLIFY_API_PATCH_FAILED"

    
    public static func getErrorForApi(methodName: String) -> String{
        switch methodName {
            case "get": return FlutterApiErrorMessage.GET_FAILED.rawValue
            case "post": return FlutterApiErrorMessage.POST_FAILED.rawValue
            case "put": return FlutterApiErrorMessage.PUT_FAILED.rawValue
            case "delete": return FlutterApiErrorMessage.DELETE_FAILED.rawValue
            case "head": return FlutterApiErrorMessage.HEAD_FAILED.rawValue
            case "patch": return FlutterApiErrorMessage.PATCH_FAILED.rawValue
            default: return FlutterApiErrorMessage.MALFORMED.rawValue
        }
    }
}


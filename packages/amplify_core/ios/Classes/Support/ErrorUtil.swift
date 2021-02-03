/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import Flutter

public class ErrorUtil {
    public static func postErrorToFlutterChannel(result: FlutterResult,
                                          errorCode: String,
                                          details: Dictionary<String, String>)  {
        result(FlutterError(code: errorCode,
                            message: ErrorMessages.defaultFallbackErrorMessage,
                            details: details))
    }
    
    public static func createSerializedError(message: String,
                                       recoverySuggestion: String?,
                                       underlyingError: String?) -> Dictionary<String, String> {
        var serializedException: Dictionary<String, String> = [:]
        serializedException["message"] = message
        serializedException["recoverySuggestion"] = recoverySuggestion
        serializedException["underlyingException"] = underlyingError
        return serializedException
    }
}

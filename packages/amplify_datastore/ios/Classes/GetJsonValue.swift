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

import Amplify

func getJSONValue(_ jsonDict: [String: Any]) throws -> [String: JSONValue] {
    guard let jsonData = try? JSONSerialization.data(withJSONObject: jsonDict) else {
        throw DataStoreError.decodingError("Unable to deserialize json data", "Check the model structure.")
    }
    guard let jsonValue = try? JSONDecoder().decode([String: JSONValue].self,
                                                    from: jsonData)
    else {
        throw DataStoreError.decodingError("Unable to decode json value", "Check the model structure.")
    }
    return jsonValue
}

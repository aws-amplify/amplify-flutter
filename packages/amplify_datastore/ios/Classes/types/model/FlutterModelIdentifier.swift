/*
 * Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

public struct FlutterModelIdentifier {
    private var identifierFields = ModelIdentifierProtocol.Fields()

    init(identifierFields: [[String: Any]]) throws {
        self.identifierFields = try identifierFields.map { value in
            try convertKeyValueToTuple(pair: value)
        }
    }
    
    public func convertToNativeModelIdentifier() -> ModelIdentifier<FlutterSerializedModel, ModelIdentifierFormat.Custom> {
        return ModelIdentifier<FlutterSerializedModel, ModelIdentifierFormat.Custom>.make(fields: identifierFields)
    }

    private func convertKeyValueToTuple(pair: [String: Any]) throws -> (name: String, value: Persistable) {
        guard let name: String = pair.keys.first else {
            throw DataStoreError.decodingError(
                "Model identifier field key-value must have a key",
                "Check the values that are being passed from Dart."
            )
        }

        guard let value: Persistable = convertToAmplifyPersistable(value: pair.values.first) else {
            throw DataStoreError.decodingError(
                "Model identifier field key-value must have a value",
                "Check the values that are being passed from Dart."
            )
        }

        return (name, value)
    }
}

//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// A type that holds internal data in json format
///
/// Internally  a `JSONValueHolder` will have the data stored as a json map. Properties of the type can be retrieved
/// using the function `jsonValue(for:)` passing in the key of the property.
///
/// Example:
/// ==============================================
///         struct DynamicModel: JSONValueHolder {
///             let values: [String: Any]
///
///             public func jsonValue(for key: String) -> Any??  {
///                 return values[key]
///             }
///          }
public protocol JSONValueHolder {

    /// Return the value for the given key.
    ///
    /// If a particular key has nil as it value, this method should return .some(nil) as the value.
    func jsonValue(for key: String) -> Any??

    /// Return the value for the given key.
    ///
    /// If a particular key has nil as it value, this method should return .some(nil) as the value.
    func jsonValue(for key: String, modelSchema: ModelSchema) -> Any??
}

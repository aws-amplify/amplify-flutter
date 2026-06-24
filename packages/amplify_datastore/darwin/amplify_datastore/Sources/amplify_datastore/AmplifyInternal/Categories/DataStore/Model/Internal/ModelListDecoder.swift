//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Registry of `ModelListDecoder`'s used to retrieve decoders that can create `ModelListProvider`s to perform
/// List functionality.
///
/// - Warning: Although this has `public` access, it is intended for internal & codegen use and should not be used
/// directly by host applications. The behavior of this may change without warning. Though it is not used by host
/// application making any change to these `public` types should be backward compatible, otherwise it will be a breaking
/// change.
public struct ModelListDecoderRegistry {
    public static var listDecoders = AtomicValue(initialValue: [ModelListDecoder.Type]())

    /// Register a decoder during plugin configuration time, to allow runtime retrievals of list providers.
    public static func registerDecoder(_ listDecoder: ModelListDecoder.Type) {
        listDecoders.append(listDecoder)
    }
}

extension ModelListDecoderRegistry {
    static func reset() {
        listDecoders.set([ModelListDecoder.Type]())
    }
}

/// `ModelListDecoder` provides decoding and list functionality.
///
/// - Warning: Although this has `public` access, it is intended for internal & codegen use and should not be used
/// directly by host applications. The behavior of this may change without warning. Though it is not used by host
/// application making any change to these `public` types should be backward compatible, otherwise it will be a breaking
/// change.
public protocol ModelListDecoder {
    static func decode<ModelType: Model>(modelType: ModelType.Type, decoder: Decoder) -> AnyModelListProvider<ModelType>?
}

//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// - Warning: Although this has `public` access, it is intended for internal & codegen use and should not be used
///   directly by host applications. The behavior of this may change without warning. Though it is not used by host
///   application making any change to these `public` types should be backward compatible, otherwise it will be a
///   breaking change.
public struct ModelDateFormatting {

    public static let decodingStrategy: JSONDecoder.DateDecodingStrategy = {
        let strategy = JSONDecoder.DateDecodingStrategy.custom { decoder -> Date in
            let container = try decoder.singleValueContainer()
            let dateString = try container.decode(String.self)
            let dateTime = try Temporal.DateTime(iso8601String: dateString)
            return dateTime.foundationDate
        }

        return strategy
    }()

    public static let encodingStrategy: JSONEncoder.DateEncodingStrategy = {
        let strategy = JSONEncoder.DateEncodingStrategy.custom { date, encoder in
            var container = encoder.singleValueContainer()
            try container.encode(Temporal.DateTime(date, timeZone: .utc).iso8601String)
        }
        return strategy
    }()

}

public extension JSONDecoder {

    /// - Warning: Although this has `public` access, it is intended for internal & codegen use and should not be used
    ///   directly by host applications. The behavior of this may change without warning. Though it is not used by host
    ///   application making any change to these `public` types should be backward compatible, otherwise it will be a
    ///   breaking change.
    convenience init(dateDecodingStrategy: JSONDecoder.DateDecodingStrategy) {
        self.init()
        self.dateDecodingStrategy = dateDecodingStrategy
    }
}

public extension JSONEncoder {

    /// - Warning: Although this has `public` access, it is intended for internal & codegen use and should not be used
    ///   directly by host applications. The behavior of this may change without warning. Though it is not used by host
    ///   application making any change to these `public` types should be backward compatible, otherwise it will be a
    ///   breaking change.
    convenience init(dateEncodingStrategy: JSONEncoder.DateEncodingStrategy) {
        self.init()
        self.dateEncodingStrategy = dateEncodingStrategy
    }
}

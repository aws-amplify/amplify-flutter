//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension DataStoreError {

    public static func invalidDateFormat(_ value: String) -> DataStoreError {
        return DataStoreError.decodingError(
            """
            Could not parse \(value) as a Date using the ISO8601 format.
            """,
            """
            Check if the format used to parse the date is the correct one. Check
            `TemporalFormat` for all the options.
            """)
    }

}

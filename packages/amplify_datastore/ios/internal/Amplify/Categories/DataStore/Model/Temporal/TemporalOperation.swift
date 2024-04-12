//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension TemporalSpec {

    /// Add a certain amount of `Calendar.Component`s to a `TemporalSpec`
    /// - Parameters:
    ///   - value: The amount to add, or subtract in case of negative values
    ///   - component: The component that will get the value added
    /// - Returns: An instance of the current DateScalar type
    func add(value: Int, to component: Calendar.Component) -> Self {
        let calendar = Temporal.iso8601Calendar
        let result = calendar.date(
            byAdding: component,
            value: value,
            to: foundationDate
        )
        guard let date = result else {
            fatalError(
                """
                The Date operation of the component \(component) and value \(value)
                could not be completed. The operation is done on a ISO-8601 Calendar
                and the values passed are not valid in an ISO-8601 context.

                This is likely caused by an invalid value in the operation. If you
                use user input as values in the operation, make sure you validate them first.
                """
            )
        }
        return Self.init(date, timeZone: timeZone)
    }
}

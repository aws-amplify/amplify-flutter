//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension TimeInterval {

    public static func milliseconds(_ value: Double) -> TimeInterval {
        return value / 1_000
    }

    public static func seconds(_ value: Double) -> TimeInterval {
        return value
    }

    public static func minutes(_ value: Double) -> TimeInterval {
        return value * 60
    }

    public static func hours(_ value: Double) -> TimeInterval {
        return value * 60 * 60
    }

    public static func days(_ value: Double) -> TimeInterval {
        return value * 60 * 60 * 24
    }

}

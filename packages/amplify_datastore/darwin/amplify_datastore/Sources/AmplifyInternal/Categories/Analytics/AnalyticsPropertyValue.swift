//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Analytics properties can store values of common types
public protocol AnalyticsPropertyValue {}

extension String: AnalyticsPropertyValue {}
extension Int: AnalyticsPropertyValue {}
extension Double: AnalyticsPropertyValue {}
extension Bool: AnalyticsPropertyValue {}

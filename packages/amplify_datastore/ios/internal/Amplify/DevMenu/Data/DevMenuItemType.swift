//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

#if os(iOS)
import Foundation

/// Item types for each row in the Developer Menu
enum DevMenuItemType {
    case environmentInformation
    case deviceInformation
    case logViewer
    case reportIssue

    var stringValue: String {
        switch self {
        case .environmentInformation:
            return "Environment Information"
        case  .deviceInformation:
            return "Device Information"
        case .logViewer:
            return "Log Viewer"
        case .reportIssue:
            return "Report Issue"
        }
    }

    // systemName parameter for SFSymbols used in `UIImage(systemName:)` initializer
    var iconName: String {
        switch self {
        case .environmentInformation:
            return "globe"
        case  .deviceInformation:
            return "desktopcomputer"
        case .logViewer:
            return "eyeglasses"
        case .reportIssue:
            return "exclamationmark.circle"
        }
    }
}
#endif

//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

#if os(iOS)
import SwiftUI

/// A factory to create detail views based on `DevMenuItemType`
class DetailViewFactory {

    static func getDetailView(type: DevMenuItemType) -> AnyView {
        switch type {
        case .deviceInformation:
            return AnyView(DeviceInfoDetailView())
        case .environmentInformation:
            return AnyView(EnvironmentInfoDetailView())
        case .logViewer:
            return AnyView(LogViewer())
        case .reportIssue:
            return AnyView(IssueReporter())
        }
    }

}
#endif

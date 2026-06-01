//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

#if os(iOS)
import Foundation

/// Struct consisting of information required to report an issue
struct IssueInfo {

    private var includeEnvironmentInfo: Bool
    private var includeDeviceInfo: Bool

    private var issueDescription: String
    private var environmentInfoItems: [EnvironmentInfoItem] = []
    private var pluginInfoItems: [PluginInfoItem] = []
    private var deviceInfoItems: [DeviceInfoItem] = []

    private let infoNotAvailable = "Information not available"

    init(issueDescription: String, includeEnvInfo: Bool, includeDeviceInfo: Bool) {
        self.issueDescription = issueDescription.isEmpty ? infoNotAvailable : issueDescription
        self.includeEnvironmentInfo = includeEnvInfo
        self.includeDeviceInfo = includeDeviceInfo
        initializeEnvironmentInfo()
        initializePluginInfo()
        initializeDeviceInfo()
    }

    private mutating func initializeEnvironmentInfo() {
        if includeEnvironmentInfo {
            environmentInfoItems = EnvironmentInfoHelper.fetchDeveloperInformationFromJson(
                filename: EnvironmentInfoHelper.environmentInfoSourceFileName)
        }
    }

    private mutating func initializePluginInfo() {
        if includeEnvironmentInfo {
            pluginInfoItems = PluginInfoHelper.getPluginInformation()
        }
    }

    private mutating func initializeDeviceInfo() {
        if includeDeviceInfo {
            deviceInfoItems = DeviceInfoHelper.getDeviceInformation()
        }
    }

    /// Returns issue description entered by customer if any
    func getIssueDescription() -> String {
        return issueDescription
    }

    /// Returns environment information of customer in the form of text
    func getEnvironmentInfoDescription() -> String {
        return getItemsDescription(items: environmentInfoItems)
    }

    /// Returns plugin information in the form of text
    func getPluginInfoDescription() -> String {
        return getItemsDescription(items: pluginInfoItems)
    }

    /// Returns device information in the form of text
    func getDeviceInfoDescription() -> String {
        return getItemsDescription(items: deviceInfoItems)
    }

    private func getItemsDescription(items: [InfoItemProvider]) -> String {

        guard !items.isEmpty else {
           return infoNotAvailable
        }

        return items.reduce("") {(description, item) -> String in
            return ("\(description)\(item.displayName) - \(item.information) \n")
        }
    }
}
#endif

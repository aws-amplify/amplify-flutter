//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
// Note: It's important to check for WatchKit first because a stripped-down version of UIKit is also
// available on watchOS
#if canImport(WatchKit)
import WatchKit
#elseif canImport(UIKit)
import UIKit
#elseif canImport(IOKit)
import IOKit
#endif
#if canImport(AppKit)
import AppKit
#endif

/// Convenience type that may be used to access device info across different platforms.
///
/// Usage Example:
///
/// ```
/// print(DeviceInfo.current.architecture) /* prints "x86_64", "arm64", or "unknown" */
/// ```
///
/// - Tag: DeviceInfo
public struct DeviceInfo {

    private init() {}

    /// - Tag: DeviceInfo.current
    public static var current: DeviceInfo = DeviceInfo()

    /// Returns the name of the host or device
    ///
    /// - Tag: DeviceInfo.name
    public var name: String {
    #if canImport(WatchKit)
        WKInterfaceDevice.current().name
    #elseif canImport(UIKit)
        UIDevice.current.name
    #else
        ProcessInfo.processInfo.hostName
    #endif
    }

    /// Returns the name of the host
    ///
    /// - Tag: DeviceInfo.hostName
    public var hostName: String {
        ProcessInfo.processInfo.hostName
    }

    /// Returns "x86_64", "arm64", or "unknown" depending on the architecture of the device.
    ///
    /// - Tag: DeviceInfo.architecture
    public var architecture: String {
    #if arch(x86_64)
        "x86_64"
    #elseif arch(arm64)
        "arm64"
    #else
        "unknown"
    #endif
    }

    /// Returns the name of the model of the device
    ///
    /// - Tag: DeviceInfo.model
    public var model: String {
    #if canImport(WatchKit)
        WKInterfaceDevice.current().model
    #elseif canImport(UIKit)
        UIDevice.current.model
    #elseif canImport(IOKit)
        value(forKey: "model") ?? "Mac"
    #else
        "Mac"
    #endif
    }

    /// Returns a tuple with the name of the operating system, e.g. "watchOS", "iOS", or "macOS" and its
    /// semantic version number
    ///
    /// - Tag: DeviceInfo.operatingSystem
    public var operatingSystem: (name: String, version: String) {
    #if canImport(WatchKit)
        let device = WKInterfaceDevice.current()
        return (name: device.systemName, version: device.systemVersion)
    #elseif canImport(UIKit)
        let device = UIDevice.current
        return (name: device.systemName, version: device.systemVersion)
    #else
        return (name: "macOS",
                version: ProcessInfo.processInfo.operatingSystemVersionString)
    #endif
    }

    /// If available, returns the unique identifier for the device
    ///
    /// - Tag: DeviceInfo.identifierForVendor
    public var identifierForVendor: UUID? {
    #if canImport(WatchKit)
        WKInterfaceDevice.current().identifierForVendor
    #elseif canImport(UIKit)
        UIDevice.current.identifierForVendor
    #else
        nil
    #endif
    }

    /// Returns the bounding rect of the main screen of the device
    ///
    /// - Tag: DeviceInfo.screenBounds
    public var screenBounds: CGRect {
    #if canImport(WatchKit)
        .zero
    #elseif canImport(UIKit)
        UIScreen.main.nativeBounds
    #elseif canImport(AppKit)
        NSScreen.main?.visibleFrame ?? .zero
    #endif
    }

#if canImport(IOKit)
    private func value(forKey key: String) -> String? {
        let service = IOServiceGetMatchingService(kIOMasterPortDefault,
                                                  IOServiceMatching("IOPlatformExpertDevice"))
        var modelIdentifier: String?
        if let modelData = IORegistryEntryCreateCFProperty(service, key as CFString, kCFAllocatorDefault, 0).takeRetainedValue() as? Data {
            modelIdentifier = String(data: modelData, encoding: .utf8)?.trimmingCharacters(in: .controlCharacters)
        }

        IOObjectRelease(service)
        return modelIdentifier
    }
#endif
}

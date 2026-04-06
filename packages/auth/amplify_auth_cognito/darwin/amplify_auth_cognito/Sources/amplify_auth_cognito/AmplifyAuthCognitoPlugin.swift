// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

#if os(iOS)
import Flutter
import UIKit
#elseif os(macOS)
import FlutterMacOS
#endif

extension FlutterError: Error { }

public class AmplifyAuthCognitoPlugin: NSObject, FlutterPlugin, NativeAuthBridge {
    
    private let nativeAuthPlugin: NativeAuthPlugin
    private let hostedUIFlow = HostedUIFlow()
    
    init(nativeAuthPlugin: NativeAuthPlugin) {
        self.nativeAuthPlugin = nativeAuthPlugin
        super.init()
    }
    
    public static func register(with registrar: FlutterPluginRegistrar) {
// Workaround for https://github.com/flutter/flutter/issues/118103.
#if os(iOS)
        let messenger = registrar.messenger()
#else
        let messenger = registrar.messenger
#endif
        let nativeAuthPlugin = NativeAuthPlugin(binaryMessenger: messenger)
        let instance = AmplifyAuthCognitoPlugin(nativeAuthPlugin: nativeAuthPlugin)
        NativeAuthBridgeSetup.setUp(binaryMessenger: messenger, api: instance)
    }
    
    func signInWithUrl(
        url: String,
        callbackUrlScheme: String,
        preferPrivateSession: Bool,
        browserPackageName: String?,
        completion: @escaping (Result<[String : String], Error>) -> Void
    ) {
        Task {
            do {
                let queryParameters = try await hostedUIFlow.launchUrl(
                    url,
                    callbackURLScheme: callbackUrlScheme,
                    preferPrivateSession: preferPrivateSession
                )
                completion(.success(queryParameters))
            } catch {
                completion(.failure(error.flutterError))
            }
        }
    }
    
    func signOutWithUrl(
        url: String,
        callbackUrlScheme: String,
        preferPrivateSession: Bool,
        browserPackageName: String?,
        completion: @escaping (Result<Void, Error>) -> Void
    ) {
        Task {
            do {
                _ = try await hostedUIFlow.launchUrl(
                    url,
                    callbackURLScheme: callbackUrlScheme,
                    preferPrivateSession: preferPrivateSession
                )
                completion(.success(()))
            } catch {
                completion(.failure(error.flutterError))
            }
        }
    }
    
    func getValidationData() throws -> [String : String] {
#if os(iOS)
        let device = UIDevice.current
        let bundle = Bundle.main
        let bundleVersion = bundle.object(forInfoDictionaryKey: String(kCFBundleVersionKey)) as? String
        let bundleShortVersion = bundle.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String
        
        return [
            "cognito:iOSVersion": device.systemVersion,
            "cognito:systemName": device.systemName,
            "cognito:deviceName": device.name,
            "cognito:model": device.model,
            "cognito:idForVendor": device.identifierForVendor?.uuidString ?? "",
            "cognito:bundleId": bundle.bundleIdentifier ?? "",
            "cognito:bundleVersion": bundleVersion ?? "",
            "cognito:bundleShortV": bundleShortVersion ?? ""
        ]
#else
        return [:]
#endif
    }
    
    func getBundleId() throws -> String {
        guard let bundleId = Bundle.main.bundleIdentifier else {
            throw FlutterError(code: "", message: "Could not retrieve bundle ID", details: nil)
        }
        return bundleId
    }
    
    func getContextData() throws -> NativeUserContextData {
#if os(macOS)
        preconditionFailure("fetching context data via method channel is not supported in macOS")
#else
        // Adapted from amplify-swift: https://github.com/aws-amplify/amplify-swift/blob/6b8946fd527f94d6ccbd419e180295ebf64a9c89/AmplifyPlugins/Auth/Sources/AWSCognitoAuthPlugin/ASF/ASFDeviceInfo.swift
        var contextData = NativeUserContextData()

        // DeviceName
        contextData.deviceName = UIDevice.current.name
        
        // ThirdPartyDeviceId
        contextData.thirdPartyDeviceId = UIDevice.current.identifierForVendor?.uuidString
        
        // DeviceFingerprint
        let model = UIDevice.current.model
        let osVersion = UIDevice.current.systemVersion
        var systemInfo = utsname()
        if uname(&systemInfo) == 0 {
            let systemName = systemInfo.sysname
            let machineMirror = Mirror(reflecting: systemInfo.machine)
            let identifier = machineMirror.children.reduce("") { identifier, element in
                guard let value = element.value as? Int8, value != 0 else { return identifier }
                return identifier + String(UnicodeScalar(UInt8(value)))
            }
#if DEBUG
            let build = "debug"
#else
            let build = "release"
#endif
            contextData.deviceFingerprint = "Apple/\(model)/\(identifier)/-:\(osVersion)/-/-:-/\(build)"
        }
        
        // ApplicationName
        contextData.applicationName = Bundle.main.bundleIdentifier
        
        // ApplicationVersion
        let appVersion = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString")
        if let appVersion = appVersion as? String {
            let buildNumber = Bundle.main.object(forInfoDictionaryKey: kCFBundleVersionKey as String)
            if let buildNumber = buildNumber as? String {
                contextData.applicationVersion = "\(appVersion)(\(buildNumber))"
            } else {
                contextData.applicationVersion = appVersion
            }
        }
        
        // DeviceLanguage
        contextData.deviceLanguage = Locale.preferredLanguages[0]
        
        // DeviceOsReleaseVersion
        contextData.deviceOsReleaseVersion = osVersion
        
        // ScreenWidthPixels / ScreenHeightPixels
        let bounds = UIScreen.main.nativeBounds.size
        contextData.screenWidthPixels = Int64(bounds.width)
        contextData.screenHeightPixels = Int64(bounds.height)
    
        return contextData
#endif
    }
    
    func getLegacyCredentials(identityPoolId: String?, appClientId: String?, completion: @escaping (Result<LegacyCredentialStoreData, Error>) -> Void) {
        preconditionFailure("fetching legacy credentials via method channel is not supported in iOS/macOS")
    }
    
    func clearLegacyCredentials(completion: @escaping (Result<Void, Error>) -> Void) {
        preconditionFailure("clearing legacy credentials via method channel is not supported in iOS/macOS")
    }

    func fetchLegacyDeviceSecrets(username:  String, userPoolId: String, completion: @escaping (Result<LegacyDeviceDetailsSecret?, Error>) -> Void) {
        preconditionFailure("fetching legacy credentials via method channel is not supported in iOS/macOS")
    }
    
    func deleteLegacyDeviceSecrets(username: String, userPoolId: String, completion: @escaping (Result<Void, Error>) -> Void) {
        preconditionFailure("clearing legacy credentials via method channel is not supported in iOS/macOS")
    }
    
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import Flutter
import UIKit

extension FlutterError: Error { }

public class SwiftAuthCognito: NSObject, FlutterPlugin, NativeAuthBridge {
    
    private let nativeAuthPlugin: NativeAuthPlugin
    private let hostedUIFlow = HostedUIFlow()
    
    init(nativeAuthPlugin: NativeAuthPlugin) {
        self.nativeAuthPlugin = nativeAuthPlugin
        super.init()
    }
    
    public static func register(with registrar: FlutterPluginRegistrar) {
        let nativeAuthPlugin = NativeAuthPlugin(binaryMessenger: registrar.messenger())
        let instance = SwiftAuthCognito(nativeAuthPlugin: nativeAuthPlugin)
        NativeAuthBridgeSetup(registrar.messenger(), instance)
    }

    public func signIn(
        withUrlUrl url: String,
        callbackUrlScheme: String,
        preferPrivateSession: NSNumber,
        browserPackageName: String?
    ) async -> ([String : String]?, FlutterError?) {
        do {
            let queryParameters = try await hostedUIFlow.launchUrl(
                url,
                callbackURLScheme: callbackUrlScheme,
                preferPrivateSession: preferPrivateSession.boolValue
            )
            return (queryParameters, nil)
        } catch {
            return (nil, error.flutterError)
        }
    }
    
    public func signOut(
        withUrlUrl url: String,
        callbackUrlScheme: String,
        preferPrivateSession: NSNumber,
        browserPackageName: String?
    ) async -> FlutterError? {
        do {
            _ = try await hostedUIFlow.launchUrl(
                url,
                callbackURLScheme: callbackUrlScheme,
                preferPrivateSession: preferPrivateSession.boolValue
            )
            return nil
        } catch {
            return error.flutterError
        }
    }
    
    public func getValidationDataWithError(_ error: AutoreleasingUnsafeMutablePointer<FlutterError?>) -> [String : String]? {
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
    }
    
    public func getBundleIdWithError(_ error: AutoreleasingUnsafeMutablePointer<FlutterError?>) -> String? {
        return Bundle.main.bundleIdentifier;
    }
    
    public func legacyCredentialsIdentityPoolId(_ identityPoolId: String?, appClientId: String?) async -> (LegacyCredentialStoreData?, FlutterError?) {
        preconditionFailure("fetching legacy credentials via method channel is not supported in iOS")
    }
    
    public func clearLegacyCredentials(completion: @escaping (FlutterError?) -> Void) {
        preconditionFailure("clearing legacy credentials via method channel is not supported in iOS")
    }
    
}

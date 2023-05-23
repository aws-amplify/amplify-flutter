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
    
    func getLegacyCredentials(identityPoolId: String?, appClientId: String?, completion: @escaping (Result<LegacyCredentialStoreData, Error>) -> Void) {
        preconditionFailure("fetching legacy credentials via method channel is not supported in iOS")
    }
    
    func clearLegacyCredentials(completion: @escaping (Result<Void, Error>) -> Void) {
        preconditionFailure("clearing legacy credentials via method channel is not supported in iOS")
    }
    
}

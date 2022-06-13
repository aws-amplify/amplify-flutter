/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import Foundation
import Flutter
import Amplify
import AmplifyPlugins
import amplify_core

/// Handles calls to the Devices API.
struct DeviceHandler {
    /// Queue for handling asynchronous work.
    private static let queue = DispatchQueue(
        label: "com.awsamplify.flutter.auth.DeviceHandler",
        qos: .utility,
        attributes: [.concurrent])
    
    /// Encoder used for proper [Date] handling.
    internal static let encoder = JSONEncoder(dateEncodingStrategy: .millisecondsSince1970)
    
    /// Decoder used for proper [Date] handling.
    internal static let decoder = JSONDecoder(dateDecodingStrategy: .millisecondsSince1970)
    
    /// Methods handled by [DeviceHandler].
    private static let methods: Set<String> = ["rememberDevice", "forgetDevice", "fetchDevices"]
    
    /// Whether [DeviceHandler] can handle the given [method].
    static func canHandle(_ method: String) -> Bool { methods.contains(method) }
    
    let errorHandler: AuthErrorHandler
    
    func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        guard DeviceHandler.canHandle(call.method) else { return }
        
        do {
            switch call.method {
            case "rememberDevice":
                rememberDevice(result)
            case "forgetDevice":
                var awsDevice: AWSAuthDevice? = nil
                if let deviceMap = call.arguments as? [String: Any] {
                    guard let deviceJSON = try? JSONSerialization.data(withJSONObject: deviceMap, options: []),
                          let device = try? DeviceHandler.decoder.decode(AWSAuthDevice.self, from: deviceJSON) else {
                        throw AuthError.validation(
                            "device",
                            "Invalid device JSON: \(deviceMap)",
                            "Please check that the device you're passing is a valid AuthDevice.",
                            nil)
                    }
                    awsDevice = device
                }
                forgetDevice(result, device: awsDevice)
            case "fetchDevices":
                fetchDevices(result)
            default:
                break
            }
        } catch let error as AuthError {
            errorHandler.handleAuthError(authError: error, flutterResult: result)
        } catch {
            errorHandler.prepareGenericException(flutterResult: result, error: error)
        }
    }
    
    private func rememberDevice(_ flutterResult: @escaping FlutterResult) {
        DeviceHandler.queue.async {
            Amplify.Auth.rememberDevice { result in
                switch result {
                case .success(_):
                    flutterResult(nil)
                case .failure(let authError):
                    errorHandler.handleAuthError(authError: authError, flutterResult: flutterResult)
                }
            }
        }
    }
    
    private func forgetDevice(_ flutterResult: @escaping FlutterResult, device: AWSAuthDevice? = nil) {
        DeviceHandler.queue.async {
            Amplify.Auth.forgetDevice(device) { result in
                switch result {
                case .success(_):
                    flutterResult(nil)
                case .failure(let authError):
                    errorHandler.handleAuthError(authError: authError, flutterResult: flutterResult)
                }
            }
        }
    }
    
    private func fetchDevices(_ flutterResult: @escaping FlutterResult) {
        DeviceHandler.queue.async {
            Amplify.Auth.fetchDevices { result in
                switch result {
                case .success(let devices):
                    guard let awsAuthDevices = devices as? [AWSAuthDevice],
                          let devicesJSON = try? DeviceHandler.encoder.encode(awsAuthDevices),
                          let devicesMap = try? JSONSerialization.jsonObject(with: devicesJSON, options: []) else {
                        let error = AuthError.unknown("Error encoding devices: \(devices)", nil)
                        errorHandler.handleAuthError(authError: error, flutterResult: flutterResult)
                        return
                    }
                    flutterResult(devicesMap)
                case .failure(let authError):
                    errorHandler.handleAuthError(authError: authError, flutterResult: flutterResult)
                }
            }
        }
    }
}

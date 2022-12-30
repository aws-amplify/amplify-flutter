// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import Flutter
import UIKit
import Amplify
import AWSPluginsCore

public class SwiftAmplify: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "com.amazonaws.amplify/amplify",
                                           binaryMessenger: registrar.messenger())
        let instance = SwiftAmplify()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        let result = AtomicResult(result, call.method)

        switch call.method {
        case "configure":
            guard let arguments = call.arguments as? [String: Any],
                  let version = arguments["version"] as? String,
                  let configuration = arguments["configuration"] as? String
            else {
                      let error = createSerializedError(message: "No configuration provided",
                                                        recoverySuggestion: "Provide a valid Amplify configuration",
                                                        underlyingError: nil)
                      ErrorUtil.postErrorToFlutterChannel(result: result,
                                                          errorCode: "AmplifyException",
                                                          details: error)
                      return
                  }
            onConfigure(result: result, version: version, configuration: configuration)
        default:
            result(FlutterMethodNotImplemented)
        }
    }

    private func onConfigure(result: FlutterResult, version: String, configuration: String) {
        do {
            guard let data = configuration.data(using: .utf8) else {
                throw ConfigurationError.unableToDecode("Invalid UTF-8",
                                                        "Please check the encoding of your configuration",
                                                        nil)
            }
            let amplifyConfiguration = try JSONDecoder().decode(AmplifyConfiguration.self,
                                                                from: data)
            AmplifyAWSServiceConfiguration.addUserAgentPlatform(.flutter, version: version)
            try Amplify.configure(amplifyConfiguration)
            result(true)
        } catch let error as AnalyticsError {
            ErrorUtil.postErrorToFlutterChannel(
                result: result,
                errorCode: "AnalyticsException",
                details: createSerializedError(error: error)
            )
        } catch let error as ConfigurationError {
            switch error {
            case .amplifyAlreadyConfigured:
                ErrorUtil.postErrorToFlutterChannel(
                    result: result,
                    errorCode: "AmplifyAlreadyConfiguredException",
                    details: createSerializedError(error: error))
            default:
                ErrorUtil.postErrorToFlutterChannel(
                    result: result,
                    errorCode: "AmplifyException",
                    details: createSerializedError(error: error))
            }
        } catch let error as PluginError {
            switch error {
            case .pluginConfigurationError(let errorDescription, _, let error):
                let serializedError = createSerializedError(
                    message: """
                    Please check your pubspec.yaml if you are depending on \
                    an amplify plugin and not using in your app. \
                    Underlying error message: \(errorDescription)
                    """,
                    recoverySuggestion: """
                    Remove amplify plugins from your pubspec.yaml that you are not using in your app.
                    """,
                    underlyingError: error?.localizedDescription)
                ErrorUtil.postErrorToFlutterChannel(result: result,
                                                    errorCode: "AmplifyException",
                                                    details: serializedError)
            default:
                ErrorUtil.postErrorToFlutterChannel(
                    result: result,
                    errorCode: "AmplifyException",
                    details: createSerializedError(error: error))
            }
        } catch {
            ErrorUtil.postErrorToFlutterChannel(
                result: result,
                errorCode: "AmplifyException",
                details: createSerializedError(
                    message: "Failed to parse the configuration.",
                    recoverySuggestion: """
                    Please check your amplifyconfiguration.dart if you are \
                    manually updating it, else please create an issue.
                    """,
                    underlyingError: error.localizedDescription))
        }
    }

    private func createSerializedError(error: AmplifyError) -> [String: String] {
        return createSerializedError(message: error.errorDescription,
                                     recoverySuggestion: error.recoverySuggestion,
                                     underlyingError: error.underlyingError.debugDescription)
    }

    private func createSerializedError(
        message: String,
        recoverySuggestion: String?,
        underlyingError: String?
    ) -> [String: String] {
        var serializedException: [String: String] = [:]
        serializedException["message"] = message
        serializedException["recoverySuggestion"] = recoverySuggestion
        serializedException["underlyingException"] = underlyingError
        return serializedException
    }
}

// 
// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0
// Autogenerated from Pigeon (v11.0.1), do not edit directly.
// See also: https://pub.dev/packages/pigeon

import Foundation
#if os(iOS)
import Flutter
#elseif os(macOS)
import FlutterMacOS
#else
#error("Unsupported platform.")
#endif

private func isNullish(_ value: Any?) -> Bool {
  return value is NSNull || value == nil
}

private func wrapResult(_ result: Any?) -> [Any?] {
  return [result]
}

private func wrapError(_ error: Any) -> [Any?] {
  if let flutterError = error as? FlutterError {
    return [
      flutterError.code,
      flutterError.message,
      flutterError.details
    ]
  }
  return [
    "\(error)",
    "\(type(of: error))",
    "Stacktrace: \(Thread.callStackSymbols)"
  ]
}

private func nilOrValue<T>(_ value: Any?) -> T? {
  if value is NSNull { return nil }
  return value as! T?
}

/// Generated class from Pigeon that represents data sent in messages.
struct NativeUserContextData {
  var deviceName: String? = nil
  var thirdPartyDeviceId: String? = nil
  var deviceFingerprint: String? = nil
  var applicationName: String? = nil
  var applicationVersion: String? = nil
  var deviceLanguage: String? = nil
  var deviceOsReleaseVersion: String? = nil
  var screenHeightPixels: Int64? = nil
  var screenWidthPixels: Int64? = nil

  static func fromList(_ list: [Any?]) -> NativeUserContextData? {
    let deviceName: String? = nilOrValue(list[0])
    let thirdPartyDeviceId: String? = nilOrValue(list[1])
    let deviceFingerprint: String? = nilOrValue(list[2])
    let applicationName: String? = nilOrValue(list[3])
    let applicationVersion: String? = nilOrValue(list[4])
    let deviceLanguage: String? = nilOrValue(list[5])
    let deviceOsReleaseVersion: String? = nilOrValue(list[6])
    let screenHeightPixels: Int64? = isNullish(list[7]) ? nil : (list[7] is Int64? ? list[7] as! Int64? : Int64(list[7] as! Int32))
    let screenWidthPixels: Int64? = isNullish(list[8]) ? nil : (list[8] is Int64? ? list[8] as! Int64? : Int64(list[8] as! Int32))

    return NativeUserContextData(
      deviceName: deviceName,
      thirdPartyDeviceId: thirdPartyDeviceId,
      deviceFingerprint: deviceFingerprint,
      applicationName: applicationName,
      applicationVersion: applicationVersion,
      deviceLanguage: deviceLanguage,
      deviceOsReleaseVersion: deviceOsReleaseVersion,
      screenHeightPixels: screenHeightPixels,
      screenWidthPixels: screenWidthPixels
    )
  }
  func toList() -> [Any?] {
    return [
      deviceName,
      thirdPartyDeviceId,
      deviceFingerprint,
      applicationName,
      applicationVersion,
      deviceLanguage,
      deviceOsReleaseVersion,
      screenHeightPixels,
      screenWidthPixels,
    ]
  }
}

/// Generated class from Pigeon that represents data sent in messages.
struct LegacyCredentialStoreData {
  var identityId: String? = nil
  var accessKeyId: String? = nil
  var secretAccessKey: String? = nil
  var sessionToken: String? = nil
  var expirationMsSinceEpoch: Int64? = nil
  var accessToken: String? = nil
  var refreshToken: String? = nil
  var idToken: String? = nil

  static func fromList(_ list: [Any?]) -> LegacyCredentialStoreData? {
    let identityId: String? = nilOrValue(list[0])
    let accessKeyId: String? = nilOrValue(list[1])
    let secretAccessKey: String? = nilOrValue(list[2])
    let sessionToken: String? = nilOrValue(list[3])
    let expirationMsSinceEpoch: Int64? = isNullish(list[4]) ? nil : (list[4] is Int64? ? list[4] as! Int64? : Int64(list[4] as! Int32))
    let accessToken: String? = nilOrValue(list[5])
    let refreshToken: String? = nilOrValue(list[6])
    let idToken: String? = nilOrValue(list[7])

    return LegacyCredentialStoreData(
      identityId: identityId,
      accessKeyId: accessKeyId,
      secretAccessKey: secretAccessKey,
      sessionToken: sessionToken,
      expirationMsSinceEpoch: expirationMsSinceEpoch,
      accessToken: accessToken,
      refreshToken: refreshToken,
      idToken: idToken
    )
  }
  func toList() -> [Any?] {
    return [
      identityId,
      accessKeyId,
      secretAccessKey,
      sessionToken,
      expirationMsSinceEpoch,
      accessToken,
      refreshToken,
      idToken,
    ]
  }
}

/// Generated class from Pigeon that represents data sent in messages.
struct LegacyDeviceDetailsSecret {
  var deviceKey: String? = nil
  var deviceGroupKey: String? = nil
  var devicePassword: String? = nil
  var asfDeviceId: String? = nil

  static func fromList(_ list: [Any?]) -> LegacyDeviceDetailsSecret? {
    let deviceKey: String? = nilOrValue(list[0])
    let deviceGroupKey: String? = nilOrValue(list[1])
    let devicePassword: String? = nilOrValue(list[2])
    let asfDeviceId: String? = nilOrValue(list[3])

    return LegacyDeviceDetailsSecret(
      deviceKey: deviceKey,
      deviceGroupKey: deviceGroupKey,
      devicePassword: devicePassword,
      asfDeviceId: asfDeviceId
    )
  }
  func toList() -> [Any?] {
    return [
      deviceKey,
      deviceGroupKey,
      devicePassword,
      asfDeviceId,
    ]
  }
}

/// Generated class from Pigeon that represents Flutter messages that can be called from Swift.
class NativeAuthPlugin {
  private let binaryMessenger: FlutterBinaryMessenger
  init(binaryMessenger: FlutterBinaryMessenger){
    self.binaryMessenger = binaryMessenger
  }
  /// Exchanges the route parameters used to launch the app, i.e. if the app
  /// was closed and a redirect happened to the custom URI scheme (iOS) or an
  /// intent was launched with the redirect parameters (Android).
  func exchange(params paramsArg: [String: String], completion: @escaping () -> Void) {
    let channel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.amplify_auth_cognito.NativeAuthPlugin.exchange", binaryMessenger: binaryMessenger)
    channel.sendMessage([paramsArg] as [Any?]) { _ in
      completion()
    }
  }
}
private class NativeAuthBridgeCodecReader: FlutterStandardReader {
  override func readValue(ofType type: UInt8) -> Any? {
    switch type {
      case 128:
        return LegacyCredentialStoreData.fromList(self.readValue() as! [Any?])
      case 129:
        return LegacyDeviceDetailsSecret.fromList(self.readValue() as! [Any?])
      case 130:
        return NativeUserContextData.fromList(self.readValue() as! [Any?])
      default:
        return super.readValue(ofType: type)
    }
  }
}

private class NativeAuthBridgeCodecWriter: FlutterStandardWriter {
  override func writeValue(_ value: Any) {
    if let value = value as? LegacyCredentialStoreData {
      super.writeByte(128)
      super.writeValue(value.toList())
    } else if let value = value as? LegacyDeviceDetailsSecret {
      super.writeByte(129)
      super.writeValue(value.toList())
    } else if let value = value as? NativeUserContextData {
      super.writeByte(130)
      super.writeValue(value.toList())
    } else {
      super.writeValue(value)
    }
  }
}

private class NativeAuthBridgeCodecReaderWriter: FlutterStandardReaderWriter {
  override func reader(with data: Data) -> FlutterStandardReader {
    return NativeAuthBridgeCodecReader(data: data)
  }

  override func writer(with data: NSMutableData) -> FlutterStandardWriter {
    return NativeAuthBridgeCodecWriter(data: data)
  }
}

class NativeAuthBridgeCodec: FlutterStandardMessageCodec {
  static let shared = NativeAuthBridgeCodec(readerWriter: NativeAuthBridgeCodecReaderWriter())
}

/// Generated protocol from Pigeon that represents a handler of messages from Flutter.
protocol NativeAuthBridge {
  /// Sign in by presenting [url] and waiting for a response to a URL with
  /// [callbackUrlScheme].
  ///
  /// If [preferPrivateSession] is `true`, do not persist session cookies.
  func signInWithUrl(url: String, callbackUrlScheme: String, preferPrivateSession: Bool, browserPackageName: String?, completion: @escaping (Result<[String: String], Error>) -> Void)
  /// Sign out by presenting [url] and waiting for a response to a URL with
  /// [callbackUrlScheme].
  func signOutWithUrl(url: String, callbackUrlScheme: String, preferPrivateSession: Bool, browserPackageName: String?, completion: @escaping (Result<Void, Error>) -> Void)
  /// Retrieves the validation data for the current iOS/Android device.
  func getValidationData() throws -> [String: String]
  /// Retrieves context data as required for advanced security features (ASF).
  func getContextData() throws -> NativeUserContextData
  func getBundleId() throws -> String
  /// Fetch legacy credentials stored by native SDKs.
  func getLegacyCredentials(identityPoolId: String?, appClientId: String?, completion: @escaping (Result<LegacyCredentialStoreData, Error>) -> Void)
  /// Clears the legacy credential store data.
  func clearLegacyCredentials(completion: @escaping (Result<Void, Error>) -> Void)
  /// Fetch legacy device secrets stored by native SDKs.
  func fetchLegacyDeviceSecrets(userPoolId: String?, appClientId: String?, completion: @escaping (Result<LegacyDeviceDetailsSecret?, Error>) -> Void)
  /// Clears the legacy device secrets.
  func deleteLegacyDeviceSecrets(userPoolId: String?, appClientId: String?, completion: @escaping (Result<Void, Error>) -> Void)
}

/// Generated setup class from Pigeon to handle messages through the `binaryMessenger`.
class NativeAuthBridgeSetup {
  /// The codec used by NativeAuthBridge.
  static var codec: FlutterStandardMessageCodec { NativeAuthBridgeCodec.shared }
  /// Sets up an instance of `NativeAuthBridge` to handle messages through the `binaryMessenger`.
  static func setUp(binaryMessenger: FlutterBinaryMessenger, api: NativeAuthBridge?) {
    /// Sign in by presenting [url] and waiting for a response to a URL with
    /// [callbackUrlScheme].
    ///
    /// If [preferPrivateSession] is `true`, do not persist session cookies.
    let signInWithUrlChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.amplify_auth_cognito.NativeAuthBridge.signInWithUrl", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      signInWithUrlChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let urlArg = args[0] as! String
        let callbackUrlSchemeArg = args[1] as! String
        let preferPrivateSessionArg = args[2] as! Bool
        let browserPackageNameArg: String? = nilOrValue(args[3])
        api.signInWithUrl(url: urlArg, callbackUrlScheme: callbackUrlSchemeArg, preferPrivateSession: preferPrivateSessionArg, browserPackageName: browserPackageNameArg) { result in
          switch result {
            case .success(let res):
              reply(wrapResult(res))
            case .failure(let error):
              reply(wrapError(error))
          }
        }
      }
    } else {
      signInWithUrlChannel.setMessageHandler(nil)
    }
    /// Sign out by presenting [url] and waiting for a response to a URL with
    /// [callbackUrlScheme].
    let signOutWithUrlChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.amplify_auth_cognito.NativeAuthBridge.signOutWithUrl", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      signOutWithUrlChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let urlArg = args[0] as! String
        let callbackUrlSchemeArg = args[1] as! String
        let preferPrivateSessionArg = args[2] as! Bool
        let browserPackageNameArg: String? = nilOrValue(args[3])
        api.signOutWithUrl(url: urlArg, callbackUrlScheme: callbackUrlSchemeArg, preferPrivateSession: preferPrivateSessionArg, browserPackageName: browserPackageNameArg) { result in
          switch result {
            case .success:
              reply(wrapResult(nil))
            case .failure(let error):
              reply(wrapError(error))
          }
        }
      }
    } else {
      signOutWithUrlChannel.setMessageHandler(nil)
    }
    /// Retrieves the validation data for the current iOS/Android device.
    let getValidationDataChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.amplify_auth_cognito.NativeAuthBridge.getValidationData", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      getValidationDataChannel.setMessageHandler { _, reply in
        do {
          let result = try api.getValidationData()
          reply(wrapResult(result))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      getValidationDataChannel.setMessageHandler(nil)
    }
    /// Retrieves context data as required for advanced security features (ASF).
    let getContextDataChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.amplify_auth_cognito.NativeAuthBridge.getContextData", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      getContextDataChannel.setMessageHandler { _, reply in
        do {
          let result = try api.getContextData()
          reply(wrapResult(result))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      getContextDataChannel.setMessageHandler(nil)
    }
    let getBundleIdChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.amplify_auth_cognito.NativeAuthBridge.getBundleId", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      getBundleIdChannel.setMessageHandler { _, reply in
        do {
          let result = try api.getBundleId()
          reply(wrapResult(result))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      getBundleIdChannel.setMessageHandler(nil)
    }
    /// Fetch legacy credentials stored by native SDKs.
    let getLegacyCredentialsChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.amplify_auth_cognito.NativeAuthBridge.getLegacyCredentials", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      getLegacyCredentialsChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let identityPoolIdArg: String? = nilOrValue(args[0])
        let appClientIdArg: String? = nilOrValue(args[1])
        api.getLegacyCredentials(identityPoolId: identityPoolIdArg, appClientId: appClientIdArg) { result in
          switch result {
            case .success(let res):
              reply(wrapResult(res))
            case .failure(let error):
              reply(wrapError(error))
          }
        }
      }
    } else {
      getLegacyCredentialsChannel.setMessageHandler(nil)
    }
    /// Clears the legacy credential store data.
    let clearLegacyCredentialsChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.amplify_auth_cognito.NativeAuthBridge.clearLegacyCredentials", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      clearLegacyCredentialsChannel.setMessageHandler { _, reply in
        api.clearLegacyCredentials() { result in
          switch result {
            case .success:
              reply(wrapResult(nil))
            case .failure(let error):
              reply(wrapError(error))
          }
        }
      }
    } else {
      clearLegacyCredentialsChannel.setMessageHandler(nil)
    }
    /// Fetch legacy device secrets stored by native SDKs.
    let fetchLegacyDeviceSecretsChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.amplify_auth_cognito.NativeAuthBridge.fetchLegacyDeviceSecrets", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      fetchLegacyDeviceSecretsChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let userPoolIdArg: String? = nilOrValue(args[0])
        let appClientIdArg: String? = nilOrValue(args[1])
        api.fetchLegacyDeviceSecrets(userPoolId: userPoolIdArg, appClientId: appClientIdArg) { result in
          switch result {
            case .success(let res):
              reply(wrapResult(res))
            case .failure(let error):
              reply(wrapError(error))
          }
        }
      }
    } else {
      fetchLegacyDeviceSecretsChannel.setMessageHandler(nil)
    }
    /// Clears the legacy device secrets.
    let deleteLegacyDeviceSecretsChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.amplify_auth_cognito.NativeAuthBridge.deleteLegacyDeviceSecrets", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      deleteLegacyDeviceSecretsChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let userPoolIdArg: String? = nilOrValue(args[0])
        let appClientIdArg: String? = nilOrValue(args[1])
        api.deleteLegacyDeviceSecrets(userPoolId: userPoolIdArg, appClientId: appClientIdArg) { result in
          switch result {
            case .success:
              reply(wrapResult(nil))
            case .failure(let error):
              reply(wrapError(error))
          }
        }
      }
    } else {
      deleteLegacyDeviceSecretsChannel.setMessageHandler(nil)
    }
  }
}

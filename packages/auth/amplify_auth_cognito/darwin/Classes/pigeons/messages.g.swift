//
// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0
// Autogenerated from Pigeon (v25.5.0), do not edit directly.
// See also: https://pub.dev/packages/pigeon

import Foundation

#if os(iOS)
  import Flutter
#elseif os(macOS)
  import FlutterMacOS
#else
  #error("Unsupported platform.")
#endif

/// Error class for passing custom error details to Dart side.
final class PigeonError: Error {
  let code: String
  let message: String?
  let details: Sendable?

  init(code: String, message: String?, details: Sendable?) {
    self.code = code
    self.message = message
    self.details = details
  }

  var localizedDescription: String {
    return
      "PigeonError(code: \(code), message: \(message ?? "<nil>"), details: \(details ?? "<nil>")"
  }
}

private func wrapResult(_ result: Any?) -> [Any?] {
  return [result]
}

private func wrapError(_ error: Any) -> [Any?] {
  if let pigeonError = error as? PigeonError {
    return [
      pigeonError.code,
      pigeonError.message,
      pigeonError.details,
    ]
  }
  if let flutterError = error as? FlutterError {
    return [
      flutterError.code,
      flutterError.message,
      flutterError.details,
    ]
  }
  return [
    "\(error)",
    "\(type(of: error))",
    "Stacktrace: \(Thread.callStackSymbols)",
  ]
}

private func createConnectionError(withChannelName channelName: String) -> PigeonError {
  return PigeonError(code: "channel-error", message: "Unable to establish connection on channel: '\(channelName)'.", details: "")
}

private func isNullish(_ value: Any?) -> Bool {
  return value is NSNull || value == nil
}

private func nilOrValue<T>(_ value: Any?) -> T? {
  if value is NSNull { return nil }
  return value as! T?
}

func deepEqualsmessages(_ lhs: Any?, _ rhs: Any?) -> Bool {
  let cleanLhs = nilOrValue(lhs) as Any?
  let cleanRhs = nilOrValue(rhs) as Any?
  switch (cleanLhs, cleanRhs) {
  case (nil, nil):
    return true

  case (nil, _), (_, nil):
    return false

  case is (Void, Void):
    return true

  case let (cleanLhsHashable, cleanRhsHashable) as (AnyHashable, AnyHashable):
    return cleanLhsHashable == cleanRhsHashable

  case let (cleanLhsArray, cleanRhsArray) as ([Any?], [Any?]):
    guard cleanLhsArray.count == cleanRhsArray.count else { return false }
    for (index, element) in cleanLhsArray.enumerated() {
      if !deepEqualsmessages(element, cleanRhsArray[index]) {
        return false
      }
    }
    return true

  case let (cleanLhsDictionary, cleanRhsDictionary) as ([AnyHashable: Any?], [AnyHashable: Any?]):
    guard cleanLhsDictionary.count == cleanRhsDictionary.count else { return false }
    for (key, cleanLhsValue) in cleanLhsDictionary {
      guard cleanRhsDictionary.index(forKey: key) != nil else { return false }
      if !deepEqualsmessages(cleanLhsValue, cleanRhsDictionary[key]!) {
        return false
      }
    }
    return true

  default:
    // Any other type shouldn't be able to be used with pigeon. File an issue if you find this to be untrue.
    return false
  }
}

func deepHashmessages(value: Any?, hasher: inout Hasher) {
  if let valueList = value as? [AnyHashable] {
     for item in valueList { deepHashmessages(value: item, hasher: &hasher) }
     return
  }

  if let valueDict = value as? [AnyHashable: AnyHashable] {
    for key in valueDict.keys { 
      hasher.combine(key)
      deepHashmessages(value: valueDict[key]!, hasher: &hasher)
    }
    return
  }

  if let hashableValue = value as? AnyHashable {
    hasher.combine(hashableValue.hashValue)
  }

  return hasher.combine(String(describing: value))
}

    

/// Generated class from Pigeon that represents data sent in messages.
struct NativeUserContextData: Hashable {
  var deviceName: String? = nil
  var thirdPartyDeviceId: String? = nil
  var deviceFingerprint: String? = nil
  var applicationName: String? = nil
  var applicationVersion: String? = nil
  var deviceLanguage: String? = nil
  var deviceOsReleaseVersion: String? = nil
  var screenHeightPixels: Int64? = nil
  var screenWidthPixels: Int64? = nil


  // swift-format-ignore: AlwaysUseLowerCamelCase
  static func fromList(_ pigeonVar_list: [Any?]) -> NativeUserContextData? {
    let deviceName: String? = nilOrValue(pigeonVar_list[0])
    let thirdPartyDeviceId: String? = nilOrValue(pigeonVar_list[1])
    let deviceFingerprint: String? = nilOrValue(pigeonVar_list[2])
    let applicationName: String? = nilOrValue(pigeonVar_list[3])
    let applicationVersion: String? = nilOrValue(pigeonVar_list[4])
    let deviceLanguage: String? = nilOrValue(pigeonVar_list[5])
    let deviceOsReleaseVersion: String? = nilOrValue(pigeonVar_list[6])
    let screenHeightPixels: Int64? = nilOrValue(pigeonVar_list[7])
    let screenWidthPixels: Int64? = nilOrValue(pigeonVar_list[8])

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
  static func == (lhs: NativeUserContextData, rhs: NativeUserContextData) -> Bool {
    return deepEqualsmessages(lhs.toList(), rhs.toList())  }
  func hash(into hasher: inout Hasher) {
    deepHashmessages(value: toList(), hasher: &hasher)
  }
}

/// Generated class from Pigeon that represents data sent in messages.
struct LegacyCredentialStoreData: Hashable {
  var identityId: String? = nil
  var accessKeyId: String? = nil
  var secretAccessKey: String? = nil
  var sessionToken: String? = nil
  var expirationMsSinceEpoch: Int64? = nil
  var accessToken: String? = nil
  var refreshToken: String? = nil
  var idToken: String? = nil


  // swift-format-ignore: AlwaysUseLowerCamelCase
  static func fromList(_ pigeonVar_list: [Any?]) -> LegacyCredentialStoreData? {
    let identityId: String? = nilOrValue(pigeonVar_list[0])
    let accessKeyId: String? = nilOrValue(pigeonVar_list[1])
    let secretAccessKey: String? = nilOrValue(pigeonVar_list[2])
    let sessionToken: String? = nilOrValue(pigeonVar_list[3])
    let expirationMsSinceEpoch: Int64? = nilOrValue(pigeonVar_list[4])
    let accessToken: String? = nilOrValue(pigeonVar_list[5])
    let refreshToken: String? = nilOrValue(pigeonVar_list[6])
    let idToken: String? = nilOrValue(pigeonVar_list[7])

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
  static func == (lhs: LegacyCredentialStoreData, rhs: LegacyCredentialStoreData) -> Bool {
    return deepEqualsmessages(lhs.toList(), rhs.toList())  }
  func hash(into hasher: inout Hasher) {
    deepHashmessages(value: toList(), hasher: &hasher)
  }
}

/// Generated class from Pigeon that represents data sent in messages.
struct LegacyDeviceDetailsSecret: Hashable {
  var deviceKey: String? = nil
  var deviceGroupKey: String? = nil
  var devicePassword: String? = nil
  var asfDeviceId: String? = nil


  // swift-format-ignore: AlwaysUseLowerCamelCase
  static func fromList(_ pigeonVar_list: [Any?]) -> LegacyDeviceDetailsSecret? {
    let deviceKey: String? = nilOrValue(pigeonVar_list[0])
    let deviceGroupKey: String? = nilOrValue(pigeonVar_list[1])
    let devicePassword: String? = nilOrValue(pigeonVar_list[2])
    let asfDeviceId: String? = nilOrValue(pigeonVar_list[3])

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
  static func == (lhs: LegacyDeviceDetailsSecret, rhs: LegacyDeviceDetailsSecret) -> Bool {
    return deepEqualsmessages(lhs.toList(), rhs.toList())  }
  func hash(into hasher: inout Hasher) {
    deepHashmessages(value: toList(), hasher: &hasher)
  }
}

private class MessagesPigeonCodecReader: FlutterStandardReader {
  override func readValue(ofType type: UInt8) -> Any? {
    switch type {
    case 129:
      return NativeUserContextData.fromList(self.readValue() as! [Any?])
    case 130:
      return LegacyCredentialStoreData.fromList(self.readValue() as! [Any?])
    case 131:
      return LegacyDeviceDetailsSecret.fromList(self.readValue() as! [Any?])
    default:
      return super.readValue(ofType: type)
    }
  }
}

private class MessagesPigeonCodecWriter: FlutterStandardWriter {
  override func writeValue(_ value: Any) {
    if let value = value as? NativeUserContextData {
      super.writeByte(129)
      super.writeValue(value.toList())
    } else if let value = value as? LegacyCredentialStoreData {
      super.writeByte(130)
      super.writeValue(value.toList())
    } else if let value = value as? LegacyDeviceDetailsSecret {
      super.writeByte(131)
      super.writeValue(value.toList())
    } else {
      super.writeValue(value)
    }
  }
}

private class MessagesPigeonCodecReaderWriter: FlutterStandardReaderWriter {
  override func reader(with data: Data) -> FlutterStandardReader {
    return MessagesPigeonCodecReader(data: data)
  }

  override func writer(with data: NSMutableData) -> FlutterStandardWriter {
    return MessagesPigeonCodecWriter(data: data)
  }
}

class MessagesPigeonCodec: FlutterStandardMessageCodec, @unchecked Sendable {
  static let shared = MessagesPigeonCodec(readerWriter: MessagesPigeonCodecReaderWriter())
}


/// Generated protocol from Pigeon that represents Flutter messages that can be called from Swift.
protocol NativeAuthPluginProtocol {
  /// Exchanges the route parameters used to launch the app, i.e. if the app
  /// was closed and a redirect happened to the custom URI scheme (iOS) or an
  /// intent was launched with the redirect parameters (Android).
  func exchange(params paramsArg: [String: String], completion: @escaping (Result<Void, PigeonError>) -> Void)
}
class NativeAuthPlugin: NativeAuthPluginProtocol {
  private let binaryMessenger: FlutterBinaryMessenger
  private let messageChannelSuffix: String
  init(binaryMessenger: FlutterBinaryMessenger, messageChannelSuffix: String = "") {
    self.binaryMessenger = binaryMessenger
    self.messageChannelSuffix = messageChannelSuffix.count > 0 ? ".\(messageChannelSuffix)" : ""
  }
  var codec: MessagesPigeonCodec {
    return MessagesPigeonCodec.shared
  }
  /// Exchanges the route parameters used to launch the app, i.e. if the app
  /// was closed and a redirect happened to the custom URI scheme (iOS) or an
  /// intent was launched with the redirect parameters (Android).
  func exchange(params paramsArg: [String: String], completion: @escaping (Result<Void, PigeonError>) -> Void) {
    let channelName: String = "dev.flutter.pigeon.amplify_auth_cognito.NativeAuthPlugin.exchange\(messageChannelSuffix)"
    let channel = FlutterBasicMessageChannel(name: channelName, binaryMessenger: binaryMessenger, codec: codec)
    channel.sendMessage([paramsArg] as [Any?]) { response in
      guard let listResponse = response as? [Any?] else {
        completion(.failure(createConnectionError(withChannelName: channelName)))
        return
      }
      if listResponse.count > 1 {
        let code: String = listResponse[0] as! String
        let message: String? = nilOrValue(listResponse[1])
        let details: String? = nilOrValue(listResponse[2])
        completion(.failure(PigeonError(code: code, message: message, details: details)))
      } else {
        completion(.success(()))
      }
    }
  }
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
  func fetchLegacyDeviceSecrets(username: String, userPoolId: String, completion: @escaping (Result<LegacyDeviceDetailsSecret?, Error>) -> Void)
  /// Clears the legacy device secrets.
  func deleteLegacyDeviceSecrets(username: String, userPoolId: String, completion: @escaping (Result<Void, Error>) -> Void)
}

/// Generated setup class from Pigeon to handle messages through the `binaryMessenger`.
class NativeAuthBridgeSetup {
  static var codec: FlutterStandardMessageCodec { MessagesPigeonCodec.shared }
  /// Sets up an instance of `NativeAuthBridge` to handle messages through the `binaryMessenger`.
  static func setUp(binaryMessenger: FlutterBinaryMessenger, api: NativeAuthBridge?, messageChannelSuffix: String = "") {
    let channelSuffix = messageChannelSuffix.count > 0 ? ".\(messageChannelSuffix)" : ""
    /// Sign in by presenting [url] and waiting for a response to a URL with
    /// [callbackUrlScheme].
    ///
    /// If [preferPrivateSession] is `true`, do not persist session cookies.
    let signInWithUrlChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.amplify_auth_cognito.NativeAuthBridge.signInWithUrl\(channelSuffix)", binaryMessenger: binaryMessenger, codec: codec)
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
    let signOutWithUrlChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.amplify_auth_cognito.NativeAuthBridge.signOutWithUrl\(channelSuffix)", binaryMessenger: binaryMessenger, codec: codec)
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
    let getValidationDataChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.amplify_auth_cognito.NativeAuthBridge.getValidationData\(channelSuffix)", binaryMessenger: binaryMessenger, codec: codec)
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
    let getContextDataChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.amplify_auth_cognito.NativeAuthBridge.getContextData\(channelSuffix)", binaryMessenger: binaryMessenger, codec: codec)
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
    let getBundleIdChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.amplify_auth_cognito.NativeAuthBridge.getBundleId\(channelSuffix)", binaryMessenger: binaryMessenger, codec: codec)
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
    let getLegacyCredentialsChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.amplify_auth_cognito.NativeAuthBridge.getLegacyCredentials\(channelSuffix)", binaryMessenger: binaryMessenger, codec: codec)
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
    let clearLegacyCredentialsChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.amplify_auth_cognito.NativeAuthBridge.clearLegacyCredentials\(channelSuffix)", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      clearLegacyCredentialsChannel.setMessageHandler { _, reply in
        api.clearLegacyCredentials { result in
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
    let fetchLegacyDeviceSecretsChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.amplify_auth_cognito.NativeAuthBridge.fetchLegacyDeviceSecrets\(channelSuffix)", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      fetchLegacyDeviceSecretsChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let usernameArg = args[0] as! String
        let userPoolIdArg = args[1] as! String
        api.fetchLegacyDeviceSecrets(username: usernameArg, userPoolId: userPoolIdArg) { result in
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
    let deleteLegacyDeviceSecretsChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.amplify_auth_cognito.NativeAuthBridge.deleteLegacyDeviceSecrets\(channelSuffix)", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      deleteLegacyDeviceSecretsChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let usernameArg = args[0] as! String
        let userPoolIdArg = args[1] as! String
        api.deleteLegacyDeviceSecrets(username: usernameArg, userPoolId: userPoolIdArg) { result in
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

import Flutter
import UIKit
@testable import Amplify

public class SwiftAmplifyTestFlutterPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "amplify_test_flutter", binaryMessenger: registrar.messenger())
    let instance = SwiftAmplifyTestFlutterPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
      switch call.method {
      case "reset":
          Amplify.reset()
          result(nil)
      default:
          result(FlutterMethodNotImplemented)
      }
  }
}

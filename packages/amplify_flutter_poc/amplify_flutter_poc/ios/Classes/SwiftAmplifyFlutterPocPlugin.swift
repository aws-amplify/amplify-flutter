import Flutter
import UIKit

public class SwiftAmplifyFlutterPocPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "amplify_flutter_poc", binaryMessenger: registrar.messenger())
    let instance = SwiftAmplifyFlutterPocPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}

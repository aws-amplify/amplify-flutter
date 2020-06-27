import Flutter
import UIKit
import Amplify
import AmplifyPlugins
import AWSPluginsCore

public class SwiftAmplifyCorePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "com.amazonaws.amplify/core", binaryMessenger: registrar.messenger())
    let instance = SwiftAmplifyCorePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }


  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
      case "configure":
        do {
          let arguments = call.arguments as! Dictionary<String, AnyObject>
          let configuration = arguments["configuration"] as! String
          let amplifyConfiguration = try JSONDecoder().decode(AmplifyConfiguration.self, from: configuration.data(using: .utf8)!)
          try onConfigure(result: result, amplifyConfiguration: amplifyConfiguration)
            
        } catch {
            print("Failed to configure Amplify \(error)")
            result(FlutterError(code: "AmplifyException",
                                message: "Failed to Configure Amplify",
                                details: error.localizedDescription));
        }
      default:
        result(FlutterMethodNotImplemented)
    }
  }

  private func onConfigure(result: FlutterResult, amplifyConfiguration: AmplifyConfiguration) {
    do {
      try Amplify.configure(amplifyConfiguration)
      result(true)
    } catch {
      result(FlutterError(code: "AmplifyException",
                          message: "Failed to Configure Amplify",
                          details: error.localizedDescription));
    }
  }
}

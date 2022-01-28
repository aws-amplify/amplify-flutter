import Cocoa
import FlutterMacOS

public class AmplifyFlutterMacosPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "amplify_flutter_macos", binaryMessenger: registrar.messenger)
    let instance = AmplifyFlutterMacosPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }
}

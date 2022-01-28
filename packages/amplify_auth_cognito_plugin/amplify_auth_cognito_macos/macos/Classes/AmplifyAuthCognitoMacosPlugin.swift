import Cocoa
import FlutterMacOS

public class AmplifyAuthCognitoMacOSPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "amplify_auth_cognito_macos", binaryMessenger: registrar.messenger)
    let instance = AmplifyAuthCognitoMacOSPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }
}

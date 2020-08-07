import Flutter
import UIKit
import Amplify
import AmplifyPlugins
import AWSMobileClient

public class SwiftAmplifyStorageS3Plugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "amplify.aws/storage", binaryMessenger: registrar.messenger())
    let instance = SwiftAmplifyStorageS3Plugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
    let storagePlugin = AWSS3StoragePlugin()
    do {
        //TODO: Remove the line below as we will take a dependency
        // on the flutter auth plugin once it is complete
        try Amplify.add(plugin: AWSCognitoAuthPlugin())
        try Amplify.add(plugin: storagePlugin)
    } catch {
        print ("Failed to add Amplify AWSS3StoragePlugin \(error)")
    }
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    print("In handle for method \(call.method)")
    let arguments = call.arguments as! Dictionary<String,AnyObject>
    switch call.method {
    case "uploadFile":
        AmplifyStorageOperations.uploadFile(flutterResult: result, request: arguments)
    case "getUrl":
        AmplifyStorageOperations.getURL(flutterResult: result, request: arguments)
    default:
        result(FlutterMethodNotImplemented)
     }
  }
    
}

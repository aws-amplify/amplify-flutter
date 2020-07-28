import Flutter
import UIKit
import Amplify
import AmplifyPlugins

public class SwiftAmplifyAnalyticsPinpointPlugin: NSObject, FlutterPlugin {

    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "com.amazonaws.amplify/analytics_pinpoint", binaryMessenger: registrar.messenger())
        let instance = SwiftAmplifyAnalyticsPinpointPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)

        do {
            try Amplify.add(plugin: AWSCognitoAuthPlugin() )
            try Amplify.add(plugin: AWSPinpointAnalyticsPlugin() )
        } catch {
            print("Failed to add Amplify AWS Plugin \(error)")
        }
    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {

        switch call.method{
            case "recordEvent":
                AmplifyAnalyticsBridge.recordEvent(arguments: call.arguments, result: result)
            case "flushEvents":
                AmplifyAnalyticsBridge.flushEvents(result: result)
            case "registerGlobalProperties":
                AmplifyAnalyticsBridge.registerGlobalProperties(arguments: call.arguments, result: result)
            case "unregisterGlobalProperties":
                AmplifyAnalyticsBridge.unregisterGlobalProperties(arguments: call.arguments, result: result)
            case "unregisterAllGlobalProperties":
                AmplifyAnalyticsBridge.unregisterAllGlobalProperties(result: result)
            case "enable":
                AmplifyAnalyticsBridge.enable(result: result)
            case "disable":
                AmplifyAnalyticsBridge.disable(result: result)
            case "identifyUser":
                AmplifyAnalyticsBridge.identifyUser(arguments: call.arguments, result: result)
            default :
                print("unknown event")
        }
    }

  
}

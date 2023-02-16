import Flutter
import UIKit
import Amplify
import amplify_flutter_ios

public class AmplifyPushNotificationsIosPlugin: NSObject, FlutterPlugin {
    
    var _result:FlutterResult!
    
    
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "com.amazonaws.amplify/push_notifications_plugin", binaryMessenger: registrar.messenger())
        let instance = AmplifyPushNotificationsIosPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        let atomicResult = AtomicResult(result, call.method)
        innerHandle(method: call.method, callArgs: call.arguments as Any?, result: atomicResult)
        
    }
    public func innerHandle(method: String, callArgs: Any?, result: @escaping FlutterResult) {
        self._result = result
        let this = AmplifyPushNotificationsIosPlugin.self
        switch method {
        case "registerForRemoteNotifications": do {
            print("registerForRemoteNotifications")

            UIApplication.shared.registerForRemoteNotifications()
            UNUserNotificationCenter.current().delegate = self
            
        }
        case "getToken": do {
            UIApplication.shared.registerForRemoteNotifications()
        }
        default:
            result(FlutterMethodNotImplemented)
        }
    }
    
    // TODO: Debug why this is not being called
    public func application(_ application: UIApplication,
                            didRegisterForRemoteNotificationsWithDeviceToken
                            deviceToken: Data) {
        let deviceTokenString = deviceToken.hexString
        print("deviceToken : \(deviceTokenString)")
        
        if(_result != nil ){
            _result(deviceTokenString);
        }
    }
    
    public func application(_ application: UIApplication,
                            didFailToRegisterForRemoteNotificationsWithError
                            error: Error) {
        print("error getting token : \(error)")
    }
    
}
extension Data {
    var hexString: String {
        let hexString = map { String(format: "%02.2hhx", $0) }.joined()
        return hexString
    }
}

import Flutter
import UIKit
import Amplify
import amplify_flutter_ios

public class AmplifyPushNotificationsIosPlugin: NSObject, FlutterPlugin {
    
    var _result:FlutterResult!
    let channel:FlutterMethodChannel?;

    public init(channel:FlutterMethodChannel) {
        self.channel = channel
    }
    
    public static func register(with registrar: FlutterPluginRegistrar) {
        let _channel = FlutterMethodChannel(name: "com.amazonaws.amplify/push_notifications_plugin", binaryMessenger: registrar.messenger())
        let instance = AmplifyPushNotificationsIosPlugin(channel: _channel)
        registrar.addMethodCallDelegate(instance, channel: _channel)
        registrar.addApplicationDelegate(instance)

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
    
    public func application(
        _ application: UIApplication,
        didReceiveRemoteNotification userInfo: [AnyHashable : Any],
        fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) -> Bool {
            let remoteMessage:String
            do {
                let jsonData = try JSONSerialization.data(withJSONObject: userInfo)
                remoteMessage = String(data: jsonData, encoding: .utf8) ?? ""
            } catch {
                print("something went wrong with parsing json")
                return false
            }
            if UIApplication.shared.applicationState == .active  {
                self.channel?.invokeMethod("FOREGROUND_MESSAGE_RECEIVED",arguments: remoteMessage);
            }else{
                // TODO: Add background notification handling logic
            }
            
            completionHandler(.noData)
            return true
        }
    
}
extension Data {
    var hexString: String {
        let hexString = map { String(format: "%02.2hhx", $0) }.joined()
        return hexString
    }
}

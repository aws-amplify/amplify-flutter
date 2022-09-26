import Flutter
import UIKit

public class SwiftAmplifySecureStoragePlugin: NSObject, FlutterPlugin, NSUserDefaultsAPI {
    
    public static func register(with registrar: FlutterPluginRegistrar) {
        let instance = SwiftAmplifySecureStoragePlugin()
        NSUserDefaultsAPISetup(registrar.messenger(), instance)
    }
    
    public func setBoolKey(_ key: String, value: NSNumber) async -> FlutterError? {
        UserDefaults.standard.set(value, forKey: key)
        return nil
    }
    
    public func bool(forKey key: String) async -> (NSNumber?, FlutterError?) {
        let containsScope = UserDefaults.standard.bool(forKey: key) as NSNumber
        return (containsScope, nil)
    }
}

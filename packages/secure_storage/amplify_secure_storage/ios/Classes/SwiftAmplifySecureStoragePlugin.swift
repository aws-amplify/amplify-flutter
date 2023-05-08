import Flutter
import UIKit

public class SwiftAmplifySecureStoragePlugin: NSObject, FlutterPlugin, NSUserDefaultsPigeon {
    
    public static func register(with registrar: FlutterPluginRegistrar) {
        let instance = SwiftAmplifySecureStoragePlugin()
        NSUserDefaultsPigeonSetup.setUp(binaryMessenger: registrar.messenger(), api: instance)
    }
    
    func setBool(key: String, value: Bool) throws {
        UserDefaults.standard.set(value, forKey: key)
    }
    
    func boolFor(key: String) throws -> Bool {
        return UserDefaults.standard.bool(forKey: key)
    }
}

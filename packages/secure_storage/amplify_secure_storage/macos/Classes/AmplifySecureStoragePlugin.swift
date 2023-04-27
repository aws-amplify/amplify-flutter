import Cocoa
import FlutterMacOS

public class AmplifySecureStoragePlugin: NSObject, FlutterPlugin, NSUserDefaultsPigeon {
    
    public static func register(with registrar: FlutterPluginRegistrar) {
        let instance = AmplifySecureStoragePlugin()
        NSUserDefaultsPigeonSetup.setUp(binaryMessenger: registrar.messenger, api: instance)
    }
    
    func setBool(key: String, value: Bool, completion: @escaping (Result<Void, Error>) -> Void) {
        UserDefaults.standard.set(value, forKey: key)
        completion(Result.success(()))

    }
    
    func boolFor(key: String, completion: @escaping (Result<Bool, Error>) -> Void) {
        let value = UserDefaults.standard.bool(forKey: key)
        completion(Result.success(value))
    }
}

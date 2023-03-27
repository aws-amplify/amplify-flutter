import Flutter
import AmplifyPlugins
import AWSPluginsCore
import Amplify
import UIKit

public class AmplifyNativeLegacyWrapperPlugin: NSObject, FlutterPlugin, LegacyNativePlugin {
    
    private let authPlugin: AWSCognitoAuthPlugin = AWSCognitoAuthPlugin()

    public static func register(with registrar: FlutterPluginRegistrar) {
        let api = AmplifyNativeLegacyWrapperPlugin()
        let binaryMessenger = registrar.messenger()
        LegacyNativePluginSetup.setUp(binaryMessenger: binaryMessenger, api: api)
    }
    
    func configure(config: String, completion: @escaping (Result<Void, Error>) -> Void) {
        let decoder = JSONDecoder()
        do {
            let sourceData = config.data(using: .utf8)
            let decodedObject = try decoder.decode(JSONValue.self, from: sourceData!)
            let authConfig = decodedObject.value(at: "auth.plugins.awsCognitoAuthPlugin")
            try authPlugin.configure(using: authConfig)
            return completion(Result.success(()))
        } catch let error {
            return completion(Result.failure("Failed configure Amplify: \(error)"))
        }
        
    }
    
    func signIn(username: String, password: String, completion: @escaping (Result<Void, Error>) -> Void) {
        _ = authPlugin.signIn(username: username, password: password, options: nil) { response in
            switch response {
            case .success(_):
                return completion(Result.success(()))
            case .failure(let signInError):
                return completion(Result.failure("Failed to sign the user in: \(signInError)"))
            }
        }
    }
    
    func signOut(completion: @escaping (Result<Void, Error>) -> Void) {
        _ = authPlugin.signOut(options: nil) { response in
            switch response {
            case .success(_):
                return completion(Result.success(()))
            case .failure(let signOutError):
                return completion(Result.failure("Failed to sign the user in: \(signOutError)"))
            }
        }
    }
    
}

extension String: Error {}



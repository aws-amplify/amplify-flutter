import Flutter
import UIKit
import Amplify
import AWSCognitoAuthPlugin
import FaceLiveness

public class AwsLivenessPlugin: NSObject, FlutterPlugin {
    
    private static var amplifyConfigured = false
    
    public static func register(with registrar: FlutterPluginRegistrar) {
        let methodChannel = FlutterMethodChannel(name: "aws_liveness/methods",
                                                binaryMessenger: registrar.messenger())
        let eventChannel = FlutterEventChannel(name: "aws_liveness/events",
                                              binaryMessenger: registrar.messenger())
        let instance = AwsLivenessPlugin()
        registrar.addMethodCallDelegate(instance, channel: methodChannel)
        eventChannel.setStreamHandler(instance)
    }
    
    private var pendingResult: FlutterResult?
    private var eventSink: FlutterEventSink?
    private weak var currentLivenessVC: FaceLivenessViewController?
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        case "start":
            startLiveness(call: call, result: result)
        default:
            result(FlutterMethodNotImplemented)
        }
    }
    
    private func startLiveness(call: FlutterMethodCall, result: @escaping FlutterResult) {
        guard let args = call.arguments as? [String: Any],
              let sessionId = args["sessionId"] as? String,
              let region = args["region"] as? String else {
            result(FlutterError(code: "INVALID_ARGUMENTS",
                              message: "sessionId and region are required",
                              details: nil))
            return
        }
        
        if sessionId.isEmpty || region.isEmpty {
            result(FlutterError(code: "INVALID_ARGUMENTS",
                              message: "sessionId and region cannot be empty",
                              details: nil))
            return
        }
        
        // Get the root view controller
        var rootVC: UIViewController?
        
        if #available(iOS 13.0, *) {
            // For iOS 13+, use the connected scenes
            if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
               let window = windowScene.windows.first {
                rootVC = window.rootViewController
            }
        } else {
            // For iOS 12 and below
            rootVC = UIApplication.shared.keyWindow?.rootViewController
        }
        
        // Fallback: try to get from Flutter's window
        if rootVC == nil {
            if let window = UIApplication.shared.windows.first(where: { $0.isKeyWindow }) {
                rootVC = window.rootViewController
            }
        }
        
        guard let rootViewController = rootVC else {
            result(FlutterError(code: "NO_ROOT_VC",
                              message: "No root view controller available",
                              details: nil))
            return
        }
        
        self.pendingResult = result
        
        initializeAmplify()
        
        
        let livenessVC = FaceLivenessViewController(
            sessionId: sessionId,
            region: region
        ) { [weak self] resultType, data in
            DispatchQueue.main.async {
                self?.currentLivenessVC?.dismiss(animated: true, completion: {

                    self?.handleLivenessResult(resultType: resultType, data: data)
                })
            }
        }
        
        self.currentLivenessVC = livenessVC
        livenessVC.modalPresentationStyle = .fullScreen
        rootViewController.present(livenessVC, animated: true, completion: {
            print("✅ AWS FaceLiveness widget presented")
        })
    }
    
    private func handleLivenessResult(resultType: String, data: [String: Any]?) {
        guard let result = pendingResult else { return }
        pendingResult = nil
        currentLivenessVC = nil
        
        switch resultType {
        case "success":
            let resultMap: [String: Any] = [
                "status": "success",
                "sessionId": data?["sessionId"] as? String ?? "",
                "isLive": data?["isLive"] as? Bool ?? true
            ]
            result(resultMap)
            eventSink?(["type": "complete", "data": resultMap])
            
        case "error":
            let errorCode = data?["errorCode"] as? String ?? "LIVENESS_ERROR"
            let errorMessage = data?["errorMessage"] as? String ?? "An error occurred"
            
            if errorCode == "USER_CANCELLED" {
                let cancelMap: [String: Any] = ["status": "cancelled"]
                result(cancelMap)
                eventSink?(["type": "cancelled", "data": cancelMap])
            } else {
                let errorMap: [String: Any] = [
                    "code": errorCode,
                    "message": errorMessage
                ]
                result(FlutterError(code: errorCode, message: errorMessage, details: errorMap))
                eventSink?(["type": "error", "data": errorMap])
            }
            
        case "cancelled":
            let cancelMap: [String: Any] = ["status": "cancelled"]
            result(cancelMap)
            eventSink?(["type": "cancelled", "data": cancelMap])
            
        default:
            let cancelMap: [String: Any] = [
                "status": "cancelled",
                "message": "Liveness flow cancelled or unknown result"
            ]
            result(cancelMap)
            eventSink?(["type": "cancelled", "data": cancelMap])
        }
    }
    
    private func initializeAmplify() {
        // Skip if already configured
        guard !AwsLivenessPlugin.amplifyConfigured else {
            print("✅ Amplify already configured")
            return
        }
        
        do {
            // Add the Cognito Auth plugin BEFORE calling configure
            try Amplify.add(plugin: AWSCognitoAuthPlugin())
            
            // Try to find amplifyconfiguration.json in the main bundle
            if let configPath = Bundle.main.path(forResource: "amplifyconfiguration", ofType: "json") {
                let configUrl = URL(fileURLWithPath: configPath)
                let amplifyConfiguration = try AmplifyConfiguration(configurationFile: configUrl)
                try Amplify.configure(amplifyConfiguration)
                AwsLivenessPlugin.amplifyConfigured = true
                print("✅ Amplify configured successfully with Auth plugin from main bundle")
            } else {
                // Fallback: try default configure (will likely fail but gives clear error)
                print("⚠️ amplifyconfiguration.json not found in main bundle, trying default configure")
                try Amplify.configure()
                AwsLivenessPlugin.amplifyConfigured = true
                print("✅ Amplify configured successfully with default configuration")
            }
        } catch let error as AmplifyError {
            print("⚠️ Amplify configuration error: \(error.errorDescription)")
            // If already configured, mark as configured
            if error.errorDescription.contains("already configured") {
                AwsLivenessPlugin.amplifyConfigured = true
            }
        } catch {
            print("⚠️ Amplify configuration check: \(error.localizedDescription)")
        }
    }
}

// MARK: - FlutterStreamHandler
extension AwsLivenessPlugin: FlutterStreamHandler {
    public func onListen(withArguments arguments: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? {
        self.eventSink = events
        return nil
    }
    
    public func onCancel(withArguments arguments: Any?) -> FlutterError? {
        self.eventSink = nil
        return nil
    }
}

import UIKit
import SwiftUI
import FaceLiveness

class FaceLivenessViewController: UIHostingController<FaceLivenessWrapperView> {
    
    typealias CompletionHandler = (String, [String: Any]?) -> Void
    
    private var completionHandler: CompletionHandler?
    
    init(sessionId: String, region: String, completion: @escaping CompletionHandler) {
        // Store completion in a local variable that can be captured
        var handler: CompletionHandler? = completion
        
        // Create wrapper view with closure that doesn't use self
        let wrapperView = FaceLivenessWrapperView(
            sessionId: sessionId,
            region: region
        ) { resultType, data in
            handler?(resultType, data)
        }
        
        // Call super.init first (required before using self)
        super.init(rootView: wrapperView)
        
        // Now we can safely use self
        self.completionHandler = completion
    }
    
    @MainActor required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Wrapper View
struct FaceLivenessWrapperView: View {
    let sessionId: String
    let region: String
    let onResult: (String, [String: Any]?) -> Void
    
    @State private var isPresented = true
    @State private var timeoutTimer: Timer?
    @State private var hasCompleted = false // Track if flow completed to prevent timeout after completion
    @State private var isInVerificationPhase = false // Track if we're in verification phase (face scan done, AWS verifying)
    @State private var timeRemaining = 50 // Timer countdown in seconds
    @State private var countdownTimer: Timer? // Countdown timer for UI
    
    // TEST FLAG: Set to true to test timeout (reduces timeout to 10 seconds for quick testing)
    // Set to false for production (50 seconds)
    private let TEST_TIMEOUT = false
    private let TEST_TIMEOUT_SECONDS: TimeInterval = 5.0 // For testing
    private let PRODUCTION_TIMEOUT_SECONDS: TimeInterval = 50.0 // Production (reduced from 70)
    
    var body: some View {
        FaceLivenessDetectorView(
            sessionID: sessionId,
            region: region,
            isPresented: $isPresented,
            onCompletion: { result in
                handleResult(result)
            }
        )
        .overlay(
            // Timer UI overlay - only show if not in verification phase
            Group {
                if !isInVerificationPhase && isPresented {
                    VStack {
                        HStack {
                            Spacer()
                            Text("Finish the process within \(timeRemaining)s")
                                .font(.system(size: 14, weight: .medium))
                                .foregroundColor(.white)
                                .padding(.horizontal, 16)
                                .padding(.vertical, 8)
                                .background(Color.black.opacity(0.7))
                                .cornerRadius(8)
                                .padding(.top, 70)
                            Spacer()
                        }
                        Spacer()
                    }
                }
            }
        )
        .onAppear {
            // Start 50-second timeout timer
            startTimeoutTimer()
            startCountdownTimer()
        }
        .onDisappear {
            // Cancel timers when view disappears
            cancelTimeoutTimer()
            cancelCountdownTimer()
        }
    }
    
    private func startTimeoutTimer() {
        // Cancel any existing timer
        cancelTimeoutTimer()
        
        // Use test timeout if TEST_TIMEOUT is enabled, otherwise use production timeout
        let timeoutDuration = TEST_TIMEOUT ? TEST_TIMEOUT_SECONDS : PRODUCTION_TIMEOUT_SECONDS
        
        // Start timer
        timeoutTimer = Timer.scheduledTimer(withTimeInterval: timeoutDuration, repeats: false) { _ in
            // Only trigger timeout if:
            // 1. Flow hasn't completed
            // 2. View is still presented
            // 3. We're NOT in verification phase (face scan must be done first)
            if !hasCompleted && isPresented && !isInVerificationPhase {
                let timeoutMsg = TEST_TIMEOUT ? "10-second (TEST)" : "50-second"
                print("⏰ iOS: \(timeoutMsg) timeout reached - closing UI and showing error")
                let errorMap: [String: Any] = [
                    "errorCode": "TIMEOUT",
                    "errorMessage": "Unable to generate face signature"
                ]
                hasCompleted = true
                isPresented = false
                onResult("error", errorMap)
            } else if isInVerificationPhase {
                print("⏰ iOS: Timeout reached but in verification phase - not closing")
            }
        }
    }
    
    private func cancelTimeoutTimer() {
        timeoutTimer?.invalidate()
        timeoutTimer = nil
    }
    
    private func startCountdownTimer() {
        // Cancel any existing countdown timer
        cancelCountdownTimer()
        
        // Reset time remaining
        let initialTime = Int(TEST_TIMEOUT ? TEST_TIMEOUT_SECONDS : PRODUCTION_TIMEOUT_SECONDS)
        timeRemaining = initialTime
        
        // Start countdown timer that updates every second
        // Note: No [weak self] needed since FaceLivenessWrapperView is a struct (value type)
        // Structs don't have reference cycles, so we can capture self directly
        countdownTimer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            // Update state on main thread
            DispatchQueue.main.async {
                // Check if timer should continue
                if self.isInVerificationPhase || !self.isPresented || self.timeRemaining <= 0 {
                    timer.invalidate()
                    self.countdownTimer = nil
                } else {
                    self.timeRemaining -= 1
                }
            }
        }
    }
    
    private func cancelCountdownTimer() {
        countdownTimer?.invalidate()
        countdownTimer = nil
    }
    
    
    private func handleResult(_ result: Result<Void, FaceLivenessDetectionError>) {
        // Mark that we're in verification phase (face scan done, AWS is verifying)
        isInVerificationPhase = true
        print("✅ iOS: Face scan complete, now in verification phase - timer will not close")
        
        // Cancel timeout timer since flow completed
        hasCompleted = true
        cancelTimeoutTimer()
        cancelCountdownTimer()
        
        switch result {
            // case .success:
    // TEMPORARY: Force error for testing - REMOVE AFTER TESTING
    // let errorMap: [String: Any] = [
    //     "errorCode": "TEST_ERROR",
    //     "errorMessage": "Failed to verify. Please try again."
    // ]
    // isPresented = false
    // onResult("error", errorMap)
    // return
        case .success:
            let resultMap: [String: Any] = [
                "sessionId": sessionId,
                "isLive": true
            ]
            isPresented = false
            onResult("success", resultMap)
            
        case .failure(let error):
            let errorCode = getErrorCode(from: error)
            let errorMessage = getErrorMessage(from: error)
            
            // Check if it's a user cancellation
            if errorCode == "userCancelled" || 
               errorMessage.lowercased().contains("cancel") ||
               errorMessage.lowercased().contains("user") {
                isPresented = false
                onResult("cancelled", nil)
            } else {
                // Determine error message based on error type
                let finalErrorCode: String
                let finalErrorMessage: String
                
                // Check for duplicate face or invalid signature errors
                let lowerErrorMessage = errorMessage.lowercased()
                if errorCode == "INVALID_SIGNATURE" ||
                   lowerErrorMessage.contains("duplicate") ||
                   lowerErrorMessage.contains("already registered") ||
                   lowerErrorMessage.contains("signature") {
                    finalErrorCode = "DUPLICATE_FACE_OR_SIGNATURE"
                    finalErrorMessage = "Unable to generate face signature"
                    print("🔍 iOS: Detected duplicate face or signature error")
                } else {
                    // Common error - use default message
                    finalErrorCode = errorCode
                    finalErrorMessage = "Unable to verify the face please try again"
                }
                
                // For any AWS error, close UI and return error to Flutter
                // Flutter will show dialog based on this error
                let errorMap: [String: Any] = [
                    "errorCode": finalErrorCode,
                    "errorMessage": finalErrorMessage
                ]
                isPresented = false
                onResult("error", errorMap)
            }
        }
    }
    
    private func getErrorCode(from error: FaceLivenessDetectionError) -> String {
        switch error {
        case .unknown:
            return "UNKNOWN_ERROR"
        case .sessionNotFound:
            return "SESSION_NOT_FOUND"
        case .sessionTimedOut:
            return "SESSION_TIMED_OUT"
        case .faceInOvalMatchExceededTimeLimitError:
            return "FACE_MATCH_TIMEOUT"
        case .accessDenied:
            return "ACCESS_DENIED"
        case .cameraPermissionDenied:
            return "CAMERA_PERMISSION_DENIED"
        case .cameraNotAvailable:
            return "CAMERA_NOT_AVAILABLE"
        case .userCancelled:
            return "USER_CANCELLED"
        case .socketClosed:
            return "SOCKET_CLOSED"
        case .invalidRegion:
            return "INVALID_REGION"
        case .validation:
            return "VALIDATION_ERROR"
        case .internalServer:
            return "INTERNAL_SERVER_ERROR"
        case .throttling:
            return "THROTTLING"
        case .serviceQuotaExceeded:
            return "SERVICE_QUOTA_EXCEEDED"
        case .serviceUnavailable:
            return "SERVICE_UNAVAILABLE"
        case .invalidSignature:
            return "INVALID_SIGNATURE"
        default:
            // Handle any other cases we might have missed
            return "UNKNOWN_ERROR"
        }
    }
    
    private func getErrorMessage(from error: FaceLivenessDetectionError) -> String {
        if let localizedError = error as? LocalizedError {
            return localizedError.localizedDescription
        }
        
        switch error {
        case .unknown:
            return "An unknown error occurred during the face liveness flow."
        case .sessionNotFound:
            return "Session not found. Please create a new session."
        case .sessionTimedOut:
            return "The session timed out. Please try again."
        case .faceInOvalMatchExceededTimeLimitError:
            return "Face matching timed out. Please try again."
        case .accessDenied:
            return "Access denied. Please check your IAM permissions."
        case .cameraPermissionDenied:
            return "Camera permission denied. Please enable camera access in Settings."
        case .cameraNotAvailable:
            return "Camera is not available on this device."
        case .userCancelled:
            return "User cancelled the face liveness check."
        case .socketClosed:
            return "Connection closed unexpectedly. Please try again."
        case .invalidRegion:
            return "Invalid AWS region specified."
        case .validation:
            return "Validation error. Please check your input."
        case .internalServer:
            return "Internal server error. Please try again later."
        case .throttling:
            return "Request throttled. Please try again later."
        case .serviceQuotaExceeded:
            return "Service quota exceeded. Please contact support."
        case .serviceUnavailable:
            return "Service is currently unavailable. Please try again later."
        case .invalidSignature:
            return "Invalid signature. Please check your credentials."
        default:
            return "An error occurred during the face liveness flow."
        }
    }
}

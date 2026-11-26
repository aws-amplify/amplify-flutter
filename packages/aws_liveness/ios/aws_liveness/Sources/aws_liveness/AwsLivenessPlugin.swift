// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import AVFoundation
import FaceLiveness
import Flutter
import SwiftUI
import UIKit

public class AwsLivenessPlugin: NSObject, FlutterPlugin, AwsLivenessHostApi {
    private let flutterApi: AwsLivenessFlutterApi
    private var pendingCompletion: ((Result<Void, Error>) -> Void)?

    init(flutterApi: AwsLivenessFlutterApi) {
        self.flutterApi = flutterApi
    }

    public static func register(with registrar: FlutterPluginRegistrar) {
        let messenger = registrar.messenger()
        let instance = AwsLivenessPlugin(flutterApi: AwsLivenessFlutterApi(binaryMessenger: messenger))
        AwsLivenessHostApiSetup.setUp(binaryMessenger: messenger, api: instance)
    }

    func start(request: LivenessStartRequest, completion: @escaping (Result<Void, Error>) -> Void) {
        guard pendingCompletion == nil else {
            completion(.failure(PigeonError(
                code: ErrorCodes.alreadyInProgress,
                message: "A Face Liveness check is already in progress.",
                details: nil
            )))
            return
        }
        // Reserve the check now so a concurrent start is rejected while the
        // permission prompt is showing.
        pendingCompletion = completion

        // The SDK shows a permission screen without a way out and never
        // reports a denial, so resolve the permission before presenting.
        Self.requestCameraAccess { [weak self] granted in
            guard let self else { return }
            guard granted else {
                self.fail(
                    code: ErrorCodes.cameraPermissionDenied,
                    message: "Camera permissions have not been granted.",
                    recoverySuggestion: "Prompt the user to allow camera access in Settings."
                )
                return
            }
            self.present(request)
        }
    }

    private func present(_ request: LivenessStartRequest) {
        guard let presenter = Self.topViewController() else {
            fail(
                code: ErrorCodes.noForegroundUi,
                message: "No foreground view controller is available.",
                recoverySuggestion: nil
            )
            return
        }
        let credentialsProvider = DartCredentialsProvider(flutterApi: flutterApi)
        weak var controller: UIViewController?
        let view = FaceLivenessView(request: request, credentialsProvider: credentialsProvider) { [weak self] result in
            DispatchQueue.main.async { self?.complete(result, controller: controller, credentialsProvider: credentialsProvider) }
        }
        let hosting = UIHostingController(rootView: view)
        hosting.modalPresentationStyle = .fullScreen
        hosting.isModalInPresentation = true
        controller = hosting
        presenter.present(hosting, animated: true)
    }

    private func fail(code: String, message: String, recoverySuggestion: String?) {
        guard let completion = pendingCompletion else { return }
        pendingCompletion = nil
        completion(.failure(PigeonError(code: code, message: message, details: recoverySuggestion)))
    }

    /// Calls `completion` on the main thread with whether camera access is granted,
    /// prompting the user if they have not decided yet.
    private static func requestCameraAccess(_ completion: @escaping (Bool) -> Void) {
        switch AVCaptureDevice.authorizationStatus(for: .video) {
        case .authorized:
            completion(true)
        case .notDetermined:
            AVCaptureDevice.requestAccess(for: .video) { granted in
                DispatchQueue.main.async { completion(granted) }
            }
        default:
            completion(false)
        }
    }

    private func complete(
        _ result: Result<Void, FaceLivenessDetectionError>,
        controller: UIViewController?,
        credentialsProvider: DartCredentialsProvider
    ) {
        // The SDK may report more than once (e.g. an error while closing).
        guard let completion = pendingCompletion else { return }
        pendingCompletion = nil
        let mapped = result.mapError { error -> Error in
            PigeonError(
                code: ErrorCodes.code(
                    for: error,
                    credentialsFailed: credentialsProvider.didFail,
                    cameraAuthorized: AVCaptureDevice.authorizationStatus(for: .video) == .authorized
                ),
                message: error.message,
                details: error.recoverySuggestion
            )
        }
        if let controller, controller.presentingViewController != nil {
            controller.dismiss(animated: true) { completion(mapped) }
        } else {
            completion(mapped)
        }
    }

    private static func topViewController() -> UIViewController? {
        let scenes = UIApplication.shared.connectedScenes.compactMap { $0 as? UIWindowScene }
        // Right after the camera permission prompt closes, the scene can still
        // be inactive, so fall back to foreground-inactive scenes.
        let windows = [UIScene.ActivationState.foregroundActive, .foregroundInactive]
            .lazy
            .map { state in scenes.filter { $0.activationState == state }.flatMap(\.windows) }
            .first { !$0.isEmpty } ?? []
        var top = (windows.first(where: \.isKeyWindow) ?? windows.first)?.rootViewController
        while let presented = top?.presentedViewController, !presented.isBeingDismissed {
            top = presented
        }
        return top
    }
}

private struct FaceLivenessView: View {
    let request: LivenessStartRequest
    let credentialsProvider: DartCredentialsProvider
    let onCompletion: (Result<Void, FaceLivenessDetectionError>) -> Void

    @State private var isPresented = true

    var body: some View {
        FaceLivenessDetectorView(
            sessionID: request.sessionId,
            credentialsProvider: credentialsProvider,
            region: request.region,
            disableStartView: request.disableStartView,
            challengeOptions: ChallengeOptions(
                faceMovementChallengeOption: .init(
                    camera: request.faceMovementCamera == .back ? .back : .front
                )
            ),
            isPresented: $isPresented,
            onCompletion: onCompletion
        )
    }
}

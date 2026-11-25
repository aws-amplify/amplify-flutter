// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
        guard let presenter = Self.topViewController() else {
            completion(.failure(PigeonError(
                code: ErrorCodes.noForegroundUi,
                message: "No foreground view controller is available.",
                details: nil
            )))
            return
        }
        pendingCompletion = completion

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
                code: ErrorCodes.code(for: error, credentialsFailed: credentialsProvider.didFail),
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
        let windows = UIApplication.shared.connectedScenes
            .compactMap { $0 as? UIWindowScene }
            .filter { $0.activationState == .foregroundActive }
            .flatMap(\.windows)
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
            isPresented: $isPresented,
            onCompletion: onCompletion
        )
    }
}

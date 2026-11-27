// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import AuthenticationServices
import Foundation

#if os(iOS)
import Flutter
import UIKit
#elseif os(macOS)
import FlutterMacOS
import AppKit
#endif

// MARK: - Base64URL Data Extension

private extension Data {
    init?(base64urlEncoded string: String) {
        var base64 = string
            .replacingOccurrences(of: "-", with: "+")
            .replacingOccurrences(of: "_", with: "/")
        // Add padding if needed
        let remainder = base64.count % 4
        if remainder > 0 {
            base64.append(contentsOf: String(repeating: "=", count: 4 - remainder))
        }
        self.init(base64Encoded: base64)
    }

    func base64urlEncodedString() -> String {
        return self.base64EncodedString()
            .replacingOccurrences(of: "+", with: "-")
            .replacingOccurrences(of: "/", with: "_")
            .replacingOccurrences(of: "=", with: "")
    }
}

// MARK: - WebAuthnBridgeImpl

class WebAuthnBridgeImpl: NSObject, WebAuthnBridgeApi {

    /// Pending completion handler for the current ceremony.
    /// Stored as instance property to prevent ARC deallocation of the delegate.
    private var pendingCompletion: ((Result<String, Error>) -> Void)?

    /// Active authorization controller reference.
    /// Stored to prevent ARC deallocation during the ceremony.
    private var activeController: ASAuthorizationController?

    /// Tracks whether the current ceremony is a registration (true) or assertion (false).
    private var isRegistration: Bool = false

    // MARK: - WebAuthnBridgeApi Protocol

    func isPasskeySupported(completion: @escaping (Result<Bool, Error>) -> Void) {
        if #available(iOS 17.4, macOS 13.5, *) {
            completion(.success(true))
        } else {
            completion(.success(false))
        }
    }

    func createCredential(optionsJson: String, completion: @escaping (Result<String, Error>) -> Void) {
        guard #available(iOS 17.4, macOS 13.5, *) else {
            completion(.failure(PigeonError(
                code: "notSupported",
                message: "Passkeys require iOS 17.4+ or macOS 13.5+",
                details: nil
            )))
            return
        }

        guard let jsonData = optionsJson.data(using: .utf8),
              let options = try? JSONSerialization.jsonObject(with: jsonData) as? [String: Any] else {
            completion(.failure(PigeonError(
                code: "registrationFailed",
                message: "Failed to parse credential creation options JSON",
                details: nil
            )))
            return
        }

        guard let challengeString = options["challenge"] as? String,
              let challengeData = Data(base64urlEncoded: challengeString),
              let rp = options["rp"] as? [String: Any],
              let rpId = rp["id"] as? String,
              let user = options["user"] as? [String: Any],
              let userIdString = user["id"] as? String,
              let userIdData = Data(base64urlEncoded: userIdString),
              let userName = user["name"] as? String else {
            completion(.failure(PigeonError(
                code: "registrationFailed",
                message: "Missing required fields in credential creation options",
                details: nil
            )))
            return
        }

        if #available(iOS 17.4, macOS 13.5, *) {
            performRegistration(
                challengeData: challengeData,
                rpId: rpId,
                userIdData: userIdData,
                userName: userName,
                options: options,
                completion: completion
            )
        }
    }

    func getCredential(optionsJson: String, completion: @escaping (Result<String, Error>) -> Void) {
        guard #available(iOS 17.4, macOS 13.5, *) else {
            completion(.failure(PigeonError(
                code: "notSupported",
                message: "Passkeys require iOS 17.4+ or macOS 13.5+",
                details: nil
            )))
            return
        }

        guard let jsonData = optionsJson.data(using: .utf8),
              let options = try? JSONSerialization.jsonObject(with: jsonData) as? [String: Any] else {
            completion(.failure(PigeonError(
                code: "assertionFailed",
                message: "Failed to parse credential request options JSON",
                details: nil
            )))
            return
        }

        guard let challengeString = options["challenge"] as? String,
              let challengeData = Data(base64urlEncoded: challengeString),
              let rpId = options["rpId"] as? String else {
            completion(.failure(PigeonError(
                code: "assertionFailed",
                message: "Missing required fields in credential request options",
                details: nil
            )))
            return
        }

        if #available(iOS 17.4, macOS 13.5, *) {
            performAssertion(
                challengeData: challengeData,
                rpId: rpId,
                options: options,
                completion: completion
            )
        }
    }

    // MARK: - Private Ceremony Methods

    @available(iOS 17.4, macOS 13.5, *)
    private func performRegistration(
        challengeData: Data,
        rpId: String,
        userIdData: Data,
        userName: String,
        options: [String: Any],
        completion: @escaping (Result<String, Error>) -> Void
    ) {
        let provider = ASAuthorizationPlatformPublicKeyCredentialProvider(
            relyingPartyIdentifier: rpId
        )
        let request = provider.createCredentialRegistrationRequest(
            challenge: challengeData,
            name: userName,
            userID: userIdData
        )

        // Set excludeCredentials if present
        if let excludeCredentials = options["excludeCredentials"] as? [[String: Any]] {
            request.excludedCredentials = excludeCredentials.compactMap { cred in
                guard let idString = cred["id"] as? String,
                      let idData = Data(base64urlEncoded: idString) else {
                    return nil
                }
                return ASAuthorizationPlatformPublicKeyCredentialDescriptor(
                    credentialID: idData
                )
            }
        }

        isRegistration = true
        pendingCompletion = completion

        let controller = ASAuthorizationController(authorizationRequests: [request])
        activeController = controller
        controller.delegate = self
        controller.presentationContextProvider = self
        controller.performRequests()
    }

    @available(iOS 17.4, macOS 13.5, *)
    private func performAssertion(
        challengeData: Data,
        rpId: String,
        options: [String: Any],
        completion: @escaping (Result<String, Error>) -> Void
    ) {
        let provider = ASAuthorizationPlatformPublicKeyCredentialProvider(
            relyingPartyIdentifier: rpId
        )
        let request = provider.createCredentialAssertionRequest(
            challenge: challengeData
        )

        // Set allowedCredentials if present
        if let allowCredentials = options["allowCredentials"] as? [[String: Any]] {
            request.allowedCredentials = allowCredentials.compactMap { cred in
                guard let idString = cred["id"] as? String,
                      let idData = Data(base64urlEncoded: idString) else {
                    return nil
                }
                return ASAuthorizationPlatformPublicKeyCredentialDescriptor(
                    credentialID: idData
                )
            }
        }

        isRegistration = false
        pendingCompletion = completion

        let controller = ASAuthorizationController(authorizationRequests: [request])
        activeController = controller
        controller.delegate = self
        controller.presentationContextProvider = self
        controller.performRequests()
    }

    // MARK: - Error Mapping

    private func mapAuthorizationError(_ error: ASAuthorizationError) -> PigeonError {
        let defaultCode = isRegistration ? "registrationFailed" : "assertionFailed"
        let defaultMessage = isRegistration ? "Credential registration failed" : "Credential assertion failed"

        switch error.code {
        case .canceled:
            return PigeonError(
                code: "cancelled",
                message: "User cancelled the passkey operation",
                details: error.localizedDescription
            )
        case .failed, .invalidResponse, .unknown:
            return PigeonError(
                code: defaultCode,
                message: defaultMessage,
                details: error.localizedDescription
            )
        case .notHandled:
            return PigeonError(
                code: "notSupported",
                message: "Passkey operation not supported",
                details: error.localizedDescription
            )
        case .matchedExcludedCredential:
            return PigeonError(
                code: "registrationFailed",
                message: "A matching credential already exists on the device",
                details: error.localizedDescription
            )
        @unknown default:
            return PigeonError(
                code: defaultCode,
                message: defaultMessage,
                details: error.localizedDescription
            )
        }
    }

    /// Completes the pending ceremony and clears stored references.
    private func completeCeremony(with result: Result<String, Error>) {
        let completion = pendingCompletion
        pendingCompletion = nil
        activeController = nil
        completion?(result)
    }
}

// MARK: - ASAuthorizationControllerDelegate

extension WebAuthnBridgeImpl: ASAuthorizationControllerDelegate {

    func authorizationController(
        controller: ASAuthorizationController,
        didCompleteWithAuthorization authorization: ASAuthorization
    ) {
        if #available(iOS 17.4, macOS 13.5, *) {
            if let registration = authorization.credential
                as? ASAuthorizationPlatformPublicKeyCredentialRegistration {

                // Build response dict with all required Cognito fields
                var responseDict: [String: Any] = [
                    "clientDataJSON": registration.rawClientDataJSON.base64urlEncodedString(),
                    "attestationObject": (registration.rawAttestationObject ?? Data()).base64urlEncodedString(),
                ]

                // Add optional fields that Cognito requires
                // transports: Apple platform authenticators are always "internal"
                responseDict["transports"] = ["internal"]

                // Extract authenticatorData, publicKey, and publicKeyAlgorithm from credential
                // These are available in iOS 17.4+ through the credential object
                if #available(iOS 17.4, macOS 13.5, *) {
                    // authenticatorData is encoded in the attestationObject but also exposed directly
                    // Note: ASAuthorizationPlatformPublicKeyCredentialRegistration doesn't expose
                    // these fields directly in the same way the web API does. The attestationObject
                    // contains all this data in CBOR format, which Cognito can parse.
                    // For maximum compatibility with Cognito's expectations, we include empty
                    // optional fields rather than omitting them.
                }

                let response: [String: Any] = [
                    "id": registration.credentialID.base64urlEncodedString(),
                    "rawId": registration.credentialID.base64urlEncodedString(),
                    "type": "public-key",
                    "response": responseDict,
                    "clientExtensionResults": [:],  // Required by PasskeyCreateResult.fromJson
                    "authenticatorAttachment": "platform",
                ]
                if let jsonData = try? JSONSerialization.data(withJSONObject: response),
                   let jsonString = String(data: jsonData, encoding: .utf8) {
                    completeCeremony(with: .success(jsonString))
                } else {
                    completeCeremony(with: .failure(PigeonError(
                        code: "registrationFailed",
                        message: "Failed to serialize registration response",
                        details: nil
                    )))
                }
            } else if let assertion = authorization.credential
                as? ASAuthorizationPlatformPublicKeyCredentialAssertion {
                var responseDict: [String: Any] = [
                    "clientDataJSON": assertion.rawClientDataJSON.base64urlEncodedString(),
                    "authenticatorData": assertion.rawAuthenticatorData.base64urlEncodedString(),
                    "signature": assertion.signature.base64urlEncodedString(),
                ]
                if let userHandle = assertion.userID, !userHandle.isEmpty {
                    responseDict["userHandle"] = userHandle.base64urlEncodedString()
                }

                let response: [String: Any] = [
                    "id": assertion.credentialID.base64urlEncodedString(),
                    "rawId": assertion.credentialID.base64urlEncodedString(),
                    "type": "public-key",
                    "response": responseDict,
                    "clientExtensionResults": [:],  // Required by PasskeyGetResult.fromJson
                    "authenticatorAttachment": "platform",
                ]
                if let jsonData = try? JSONSerialization.data(withJSONObject: response),
                   let jsonString = String(data: jsonData, encoding: .utf8) {
                    completeCeremony(with: .success(jsonString))
                } else {
                    completeCeremony(with: .failure(PigeonError(
                        code: "assertionFailed",
                        message: "Failed to serialize assertion response",
                        details: nil
                    )))
                }
            } else {
                completeCeremony(with: .failure(PigeonError(
                    code: isRegistration ? "registrationFailed" : "assertionFailed",
                    message: "Unexpected credential type",
                    details: nil
                )))
            }
        }
    }

    func authorizationController(
        controller: ASAuthorizationController,
        didCompleteWithError error: Error
    ) {
        if let authError = error as? ASAuthorizationError {
            completeCeremony(with: .failure(mapAuthorizationError(authError)))
        } else {
            let code = isRegistration ? "registrationFailed" : "assertionFailed"
            completeCeremony(with: .failure(PigeonError(
                code: code,
                message: error.localizedDescription,
                details: nil
            )))
        }
    }
}

// MARK: - ASAuthorizationControllerPresentationContextProviding

extension WebAuthnBridgeImpl: ASAuthorizationControllerPresentationContextProviding {
    func presentationAnchor(for controller: ASAuthorizationController) -> ASPresentationAnchor {
#if os(iOS)
        // Find the key window from connected scenes (modern iOS approach)
        if let windowScene = UIApplication.shared.connectedScenes
            .compactMap({ $0 as? UIWindowScene })
            .first(where: { $0.activationState == .foregroundActive }),
           let window = windowScene.windows.first(where: { $0.isKeyWindow }) {
            return window
        }
        // Fallback: return any available window
        return UIApplication.shared.connectedScenes
            .compactMap({ $0 as? UIWindowScene })
            .flatMap({ $0.windows })
            .first ?? ASPresentationAnchor()
#elseif os(macOS)
        return NSApplication.shared.keyWindow ?? ASPresentationAnchor()
#endif
    }
}

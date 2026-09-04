// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_auth_cognito

import android.app.Activity
import android.content.Context
import android.os.Build
import androidx.credentials.CredentialManager
import androidx.credentials.CreatePublicKeyCredentialRequest
import androidx.credentials.CreatePublicKeyCredentialResponse
import androidx.credentials.GetCredentialRequest
import androidx.credentials.GetPublicKeyCredentialOption
import androidx.credentials.PublicKeyCredential
import androidx.credentials.exceptions.CreateCredentialCancellationException
import androidx.credentials.exceptions.CreateCredentialException
import androidx.credentials.exceptions.CreateCredentialProviderConfigurationException
import androidx.credentials.exceptions.GetCredentialCancellationException
import androidx.credentials.exceptions.GetCredentialException
import androidx.credentials.exceptions.NoCredentialException
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.cancel
import kotlinx.coroutines.launch
import org.json.JSONObject

/**
 * Android implementation of [WebAuthnBridgeApi] using [CredentialManager].
 *
 * Uses `androidx.credentials` to perform passkey creation and assertion ceremonies
 * on Android API 28+ (with Play Services fallback for API 28-33).
 */
class WebAuthnBridgeImpl(
    private val context: Context,
    private val activityProvider: () -> Activity?
) : WebAuthnBridgeApi {

    private val credentialManager = CredentialManager.create(context)
    private val scope = CoroutineScope(Dispatchers.Main + SupervisorJob())

    override fun isPasskeySupported(callback: (Result<Boolean>) -> Unit) {
        // API 28+ is required for CredentialManager (Play Services fallback handles 28-33).
        // CredentialManager.create() succeeds in the constructor, so if we reach here
        // the library is available.
        try {
            val supported = Build.VERSION.SDK_INT >= Build.VERSION_CODES.P // API 28
            callback(Result.success(supported))
        } catch (e: Exception) {
            callback(Result.success(false))
        }
    }

    override fun createCredential(optionsJson: String, callback: (Result<String>) -> Unit) {
        val activity = activityProvider()
        if (activity == null) {
            callback(
                Result.failure(
                    FlutterError("notSupported", "No activity available", null)
                )
            )
            return
        }

        val request = CreatePublicKeyCredentialRequest(requestJson = optionsJson)

        scope.launch {
            try {
                val result = credentialManager.createCredential(activity, request)
                val response = result as CreatePublicKeyCredentialResponse

                // Ensure clientExtensionResults is present (required by PasskeyCreateResult.fromJson)
                val jsonResponse = ensureClientExtensionResults(response.registrationResponseJson)
                callback(Result.success(jsonResponse))
            } catch (e: CreateCredentialCancellationException) {
                callback(
                    Result.failure(
                        FlutterError("cancelled", e.message ?: "User cancelled", null)
                    )
                )
            } catch (e: CreateCredentialProviderConfigurationException) {
                callback(
                    Result.failure(
                        FlutterError("notSupported", e.message ?: "Not configured", null)
                    )
                )
            } catch (e: CreateCredentialException) {
                callback(
                    Result.failure(
                        FlutterError("registrationFailed", e.message ?: "Registration failed", null)
                    )
                )
            }
        }
    }

    override fun getCredential(optionsJson: String, callback: (Result<String>) -> Unit) {
        val activity = activityProvider()
        if (activity == null) {
            callback(
                Result.failure(
                    FlutterError("notSupported", "No activity available", null)
                )
            )
            return
        }

        val option = GetPublicKeyCredentialOption(requestJson = optionsJson)
        val request = GetCredentialRequest.Builder()
            .addCredentialOption(option)
            .build()

        scope.launch {
            try {
                val result = credentialManager.getCredential(activity, request)
                val credential = result.credential as PublicKeyCredential

                // Ensure clientExtensionResults is present (required by PasskeyGetResult.fromJson)
                val jsonResponse = ensureClientExtensionResults(credential.authenticationResponseJson)
                callback(Result.success(jsonResponse))
            } catch (e: GetCredentialCancellationException) {
                callback(
                    Result.failure(
                        FlutterError("cancelled", e.message ?: "User cancelled", null)
                    )
                )
            } catch (e: NoCredentialException) {
                callback(
                    Result.failure(
                        FlutterError("assertionFailed", e.message ?: "No credential found", null)
                    )
                )
            } catch (e: GetCredentialException) {
                callback(
                    Result.failure(
                        FlutterError("assertionFailed", e.message ?: "Assertion failed", null)
                    )
                )
            }
        }
    }

    /**
     * Cancels the coroutine scope. Call when the plugin is detached from the engine.
     */
    fun dispose() {
        scope.cancel()
    }

    /**
     * Ensures that the JSON response contains a `clientExtensionResults` field.
     *
     * The androidx.credentials library may not include this field, but
     * PasskeyCreateResult.fromJson and PasskeyGetResult.fromJson require it
     * (non-nullable field). This function parses the JSON, adds the field if
     * missing, and returns the updated JSON string.
     */
    private fun ensureClientExtensionResults(jsonString: String): String {
        return try {
            val json = JSONObject(jsonString)
            if (!json.has("clientExtensionResults")) {
                json.put("clientExtensionResults", JSONObject())
            }
            json.toString()
        } catch (e: Exception) {
            // If parsing fails, return original JSON (let Dart handle the error)
            jsonString
        }
    }
}

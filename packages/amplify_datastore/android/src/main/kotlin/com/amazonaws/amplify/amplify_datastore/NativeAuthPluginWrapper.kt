// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_datastore

import android.app.Activity
import android.content.Context
import android.content.Intent
import aws.smithy.kotlin.runtime.time.Instant
import com.amazonaws.amplify.amplify_datastore.pigeons.NativeAuthPlugin
import com.amplifyframework.auth.AWSCredentials
import com.amplifyframework.auth.AuthCodeDeliveryDetails
import com.amplifyframework.auth.AuthDevice
import com.amplifyframework.auth.AuthException
import com.amplifyframework.auth.AuthPlugin
import com.amplifyframework.auth.AuthProvider
import com.amplifyframework.auth.AuthSession
import com.amplifyframework.auth.AuthUser
import com.amplifyframework.auth.AuthUserAttribute
import com.amplifyframework.auth.AuthUserAttributeKey
import com.amplifyframework.auth.cognito.AWSCognitoAuthService
import com.amplifyframework.auth.cognito.BuildConfig
import com.amplifyframework.auth.cognito.helpers.FlutterFactory
import com.amplifyframework.auth.exceptions.UnknownException
import com.amplifyframework.auth.options.AuthConfirmResetPasswordOptions
import com.amplifyframework.auth.options.AuthConfirmSignInOptions
import com.amplifyframework.auth.options.AuthConfirmSignUpOptions
import com.amplifyframework.auth.options.AuthFetchSessionOptions
import com.amplifyframework.auth.options.AuthResendSignUpCodeOptions
import com.amplifyframework.auth.options.AuthResendUserAttributeConfirmationCodeOptions
import com.amplifyframework.auth.options.AuthResetPasswordOptions
import com.amplifyframework.auth.options.AuthSignInOptions
import com.amplifyframework.auth.options.AuthSignOutOptions
import com.amplifyframework.auth.options.AuthSignUpOptions
import com.amplifyframework.auth.options.AuthUpdateUserAttributeOptions
import com.amplifyframework.auth.options.AuthUpdateUserAttributesOptions
import com.amplifyframework.auth.options.AuthWebUISignInOptions
import com.amplifyframework.auth.result.AuthResetPasswordResult
import com.amplifyframework.auth.result.AuthSessionResult
import com.amplifyframework.auth.result.AuthSignInResult
import com.amplifyframework.auth.result.AuthSignOutResult
import com.amplifyframework.auth.result.AuthSignUpResult
import com.amplifyframework.auth.result.AuthUpdateAttributeResult
import com.amplifyframework.core.Action
import com.amplifyframework.core.Consumer
import kotlinx.coroutines.MainScope
import kotlinx.coroutines.launch
import org.json.JSONObject

/**
 * Shim for [AuthPlugin] to allow Dart Auth to fulfill the contract of the native Auth plugin in
 * other categories like API/Storage. For the subset of methods needed to fulfill the requirements
 * of those categories, we bridge to the Dart plugin using a Flutter MethodChannel via `pigeon`.
 */
class NativeAuthPluginWrapper(
    private val nativeAuthPlugin: () -> NativeAuthPlugin?
) : AuthPlugin<AWSCognitoAuthService>() {

    override fun getPluginKey(): String = "awsCognitoAuthPlugin"

    override fun getEscapeHatch(): AWSCognitoAuthService? = null

    override fun getVersion(): String = BuildConfig.VERSION_NAME

    override fun configure(pluginConfiguration: JSONObject?, context: Context) {
        // No-op
    }

    override fun fetchAuthSession(
        onSuccess: Consumer<AuthSession>,
        onError: Consumer<AuthException>
    ) {
        val nativePlugin = nativeAuthPlugin()
        if (nativePlugin == null) {
            onError.accept(
                UnknownException("No native plugin registered")
            )
            return
        }
        MainScope().launch {
            nativePlugin.fetchAuthSession() { session ->
                val couldNotFetchException = UnknownException("Could not fetch")
                val userPoolTokens = if (session.userPoolTokens != null) {
                    val tokens = FlutterFactory.createAWSCognitoUserPoolTokens(
                        session.userPoolTokens!!.accessToken,
                        session.userPoolTokens!!.idToken,
                        session.userPoolTokens!!.refreshToken,
                    )
                    AuthSessionResult.success(tokens)
                } else {
                    AuthSessionResult.failure(couldNotFetchException)
                }
                val awsCredentials: AuthSessionResult<AWSCredentials> =
                    if (session.awsCredentials != null) {
                        val sessionCredentials = session.awsCredentials!!
                        val credentials = AWSCredentials.createAWSCredentials(
                            sessionCredentials.accessKeyId,
                            sessionCredentials.secretAccessKey,
                            sessionCredentials.sessionToken,
                            if (sessionCredentials.expirationIso8601Utc != null) Instant.fromIso8601(
                                sessionCredentials.expirationIso8601Utc!!
                            ).epochSeconds else null,
                        )
                        AuthSessionResult.success(credentials)
                    } else {
                        AuthSessionResult.failure(couldNotFetchException)
                    }
                val authSession = FlutterFactory.createAWSCognitoAuthSession(
                    session.isSignedIn,
                    AuthSessionResult.success(session.identityId),
                    awsCredentials,
                    AuthSessionResult.success(session.userSub),
                    userPoolTokens,
                )
                onSuccess.accept(authSession)
            }
        }
    }

    override fun fetchAuthSession(
        options: AuthFetchSessionOptions,
        onSuccess: Consumer<AuthSession>,
        onError: Consumer<AuthException>
    ) {
        return fetchAuthSession(onSuccess, onError)
    }

    override fun signUp(
        username: String,
        password: String,
        options: AuthSignUpOptions,
        onSuccess: Consumer<AuthSignUpResult>,
        onError: Consumer<AuthException>
    ) {
        unsupported("signUp")
    }

    override fun confirmSignUp(
        username: String,
        confirmationCode: String,
        options: AuthConfirmSignUpOptions,
        onSuccess: Consumer<AuthSignUpResult>,
        onError: Consumer<AuthException>
    ) {
        unsupported("confirmSignUp")
    }

    override fun confirmSignUp(
        username: String,
        confirmationCode: String,
        onSuccess: Consumer<AuthSignUpResult>,
        onError: Consumer<AuthException>
    ) {
        unsupported("confirmSignUp")
    }

    override fun resendSignUpCode(
        p0: String,
        p1: AuthResendSignUpCodeOptions,
        p2: Consumer<AuthCodeDeliveryDetails>,
        p3: Consumer<AuthException>
    ) {
        unsupported("resendSignUpCode")
    }

    override fun resendSignUpCode(
        p0: String,
        p1: Consumer<AuthCodeDeliveryDetails>,
        p2: Consumer<AuthException>
    ) {
        unsupported("resendSignUpCode")
    }

    override fun signIn(
        username: String?,
        password: String?,
        options: AuthSignInOptions,
        onSuccess: Consumer<AuthSignInResult>,
        onError: Consumer<AuthException>
    ) {
        unsupported("signIn")
    }

    override fun signIn(
        username: String?,
        password: String?,
        onSuccess: Consumer<AuthSignInResult>,
        onError: Consumer<AuthException>
    ) {
        unsupported("signIn")
    }

    override fun confirmSignIn(
        confirmationCode: String,
        options: AuthConfirmSignInOptions,
        onSuccess: Consumer<AuthSignInResult>,
        onError: Consumer<AuthException>
    ) {
        unsupported("confirmSignIn")
    }

    override fun confirmSignIn(
        confirmationCode: String,
        onSuccess: Consumer<AuthSignInResult>,
        onError: Consumer<AuthException>
    ) {
        unsupported("confirmSignIn")
    }

    override fun signInWithSocialWebUI(
        provider: AuthProvider,
        callingActivity: Activity,
        onSuccess: Consumer<AuthSignInResult>,
        onError: Consumer<AuthException>
    ) {
        unsupported("signInWithSocialWebUI")
    }

    override fun signInWithSocialWebUI(
        provider: AuthProvider,
        callingActivity: Activity,
        options: AuthWebUISignInOptions,
        onSuccess: Consumer<AuthSignInResult>,
        onError: Consumer<AuthException>
    ) {
        unsupported("signInWithSocialWebUI")
    }

    override fun signInWithWebUI(
        callingActivity: Activity,
        onSuccess: Consumer<AuthSignInResult>,
        onError: Consumer<AuthException>
    ) {
        unsupported("signInWithWebUI")
    }

    override fun signInWithWebUI(
        callingActivity: Activity,
        options: AuthWebUISignInOptions,
        onSuccess: Consumer<AuthSignInResult>,
        onError: Consumer<AuthException>
    ) {
        unsupported("signInWithWebUI")
    }

    override fun handleWebUISignInResponse(intent: Intent?) {
        unsupported("handleWebUISignInResponse")
    }

    override fun rememberDevice(onSuccess: Action, onError: Consumer<AuthException>) {
        unsupported("rememberDevice")
    }

    override fun forgetDevice(onSuccess: Action, onError: Consumer<AuthException>) {
        unsupported("forgetDevice")
    }

    override fun forgetDevice(
        device: AuthDevice,
        onSuccess: Action,
        onError: Consumer<AuthException>
    ) {
        unsupported("forgetDevice")
    }

    override fun fetchDevices(
        onSuccess: Consumer<MutableList<AuthDevice>>,
        onError: Consumer<AuthException>
    ) {
        unsupported("fetchDevices")
    }

    override fun resetPassword(
        username: String,
        options: AuthResetPasswordOptions,
        onSuccess: Consumer<AuthResetPasswordResult>,
        onError: Consumer<AuthException>
    ) {
        unsupported("resetPassword")
    }

    override fun resetPassword(
        username: String,
        onSuccess: Consumer<AuthResetPasswordResult>,
        onError: Consumer<AuthException>
    ) {
        unsupported("resetPassword")
    }

    override fun confirmResetPassword(
        p0: String,
        p1: String,
        p2: String,
        p3: AuthConfirmResetPasswordOptions,
        p4: Action,
        p5: Consumer<AuthException>
    ) {
        unsupported("confirmResetPassword")
    }

    override fun confirmResetPassword(
        p0: String,
        p1: String,
        p2: String,
        p3: Action,
        p4: Consumer<AuthException>
    ) {
        unsupported("confirmResetPassword")
    }

    override fun updatePassword(
        oldPassword: String,
        newPassword: String,
        onSuccess: Action,
        onError: Consumer<AuthException>
    ) {
        unsupported("updatePassword")
    }

    override fun fetchUserAttributes(
        onSuccess: Consumer<MutableList<AuthUserAttribute>>,
        onError: Consumer<AuthException>
    ) {
        unsupported("fetchUserAttributes")
    }

    override fun updateUserAttribute(
        attribute: AuthUserAttribute,
        options: AuthUpdateUserAttributeOptions,
        onSuccess: Consumer<AuthUpdateAttributeResult>,
        onError: Consumer<AuthException>
    ) {
        unsupported("updateUserAttribute")
    }

    override fun updateUserAttribute(
        attribute: AuthUserAttribute,
        onSuccess: Consumer<AuthUpdateAttributeResult>,
        onError: Consumer<AuthException>
    ) {
        unsupported("updateUserAttribute")
    }

    override fun updateUserAttributes(
        attributes: MutableList<AuthUserAttribute>,
        options: AuthUpdateUserAttributesOptions,
        onSuccess: Consumer<MutableMap<AuthUserAttributeKey, AuthUpdateAttributeResult>>,
        onError: Consumer<AuthException>
    ) {
        unsupported("updateUserAttributes")
    }

    override fun updateUserAttributes(
        attributes: MutableList<AuthUserAttribute>,
        onSuccess: Consumer<MutableMap<AuthUserAttributeKey, AuthUpdateAttributeResult>>,
        onError: Consumer<AuthException>
    ) {
        unsupported("updateUserAttributes")
    }

    override fun resendUserAttributeConfirmationCode(
        attributeKey: AuthUserAttributeKey,
        options: AuthResendUserAttributeConfirmationCodeOptions,
        onSuccess: Consumer<AuthCodeDeliveryDetails>,
        onError: Consumer<AuthException>
    ) {
        unsupported("resendUserAttributeConfirmationCode")
    }

    override fun resendUserAttributeConfirmationCode(
        attributeKey: AuthUserAttributeKey,
        onSuccess: Consumer<AuthCodeDeliveryDetails>,
        onError: Consumer<AuthException>
    ) {
        unsupported("resendUserAttributeConfirmationCode")
    }

    override fun confirmUserAttribute(
        attributeKey: AuthUserAttributeKey,
        confirmationCode: String,
        onSuccess: Action,
        onError: Consumer<AuthException>
    ) {
        unsupported("confirmUserAttribute")
    }

    override fun getCurrentUser(p0: Consumer<AuthUser>, p1: Consumer<AuthException>) {
        unsupported("getCurrentUser")
    }

    override fun signOut(p0: Consumer<AuthSignOutResult>) {
        unsupported("signOut")
    }

    override fun signOut(p0: AuthSignOutOptions, p1: Consumer<AuthSignOutResult>) {
        unsupported("signOut")
    }

    override fun deleteUser(onSuccess: Action, onError: Consumer<AuthException>) {
        unsupported("deleteUser")
    }

    private fun unsupported(methodName: String): Nothing {
        throw IllegalStateException("$methodName is not supported")
    }

}

/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

package com.amazonaws.amplify.amplify_auth_cognito

import android.app.Activity
import android.app.Activity.RESULT_CANCELED
import android.content.Context
import android.content.Intent
import android.os.Handler
import android.os.Looper
import androidx.annotation.NonNull
import androidx.annotation.VisibleForTesting
import com.amazonaws.amplify.amplify_auth_cognito.device.DeviceHandler
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterAuthUser
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterConfirmResetPasswordRequest
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterConfirmSignInRequest
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterConfirmSignUpRequest
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterConfirmUserAttributeRequest
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterFetchAuthSessionRequest
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterFetchAuthSessionResult
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterFetchCognitoAuthSessionResult
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterFetchUserAttributesResult
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterInvalidStateException
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterResendSignUpCodeRequest
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterResendSignUpCodeResult
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterResendUserAttributeConfirmationCodeRequest
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterResendUserAttributeConfirmationCodeResult
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterResetPasswordRequest
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterResetPasswordResult
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterSignInRequest
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterSignInResult
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterSignInWithWebUIRequest
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterSignOutRequest
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterSignUpRequest
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterSignUpResult
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterUpdatePasswordRequest
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterUpdateUserAttributeRequest
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterUpdateUserAttributeResult
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterUpdateUserAttributesRequest
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterUpdateUserAttributesResult
import com.amazonaws.amplify.amplify_auth_cognito.utils.isRedirectActivityDeclared
import com.amazonaws.amplify.amplify_core.AtomicResult
import com.amazonaws.amplify.amplify_core.exception.ExceptionUtil.Companion.handleAddPluginException
import com.amazonaws.mobile.client.AWSMobileClient
import com.amplifyframework.auth.AuthCodeDeliveryDetails
import com.amplifyframework.auth.AuthException
import com.amplifyframework.auth.AuthSession
import com.amplifyframework.auth.AuthUser
import com.amplifyframework.auth.AuthUserAttribute
import com.amplifyframework.auth.AuthUserAttributeKey
import com.amplifyframework.auth.cognito.AWSCognitoAuthPlugin
import com.amplifyframework.auth.cognito.AWSCognitoAuthSession
import com.amplifyframework.auth.result.AuthResetPasswordResult
import com.amplifyframework.auth.result.AuthSessionResult
import com.amplifyframework.auth.result.AuthSignInResult
import com.amplifyframework.auth.result.AuthSignUpResult
import com.amplifyframework.auth.result.AuthUpdateAttributeResult
import com.amplifyframework.core.Amplify
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.PluginRegistry

/** AuthCognito */
public class AuthCognito : FlutterPlugin, ActivityAware, MethodCallHandler, PluginRegistry.ActivityResultListener {

    private lateinit var channel: MethodChannel
    private lateinit var context: Context
    private lateinit var mainActivity: Activity
    private val errorHandler: AuthErrorHandler = AuthErrorHandler()
    private val LOG = Amplify.Logging.forNamespace("amplify:flutter:auth_cognito")
    lateinit var hubEventChannel: EventChannel
    private val authCognitoHubEventStreamHandler: AuthCognitoHubEventStreamHandler
    var eventMessenger: BinaryMessenger? = null
    private lateinit var activityBinding: ActivityPluginBinding
    private val nullaryMethods = listOf("deleteUser")

    /**
     * Handles the Devices API.
     */
    private val deviceHandler: DeviceHandler = DeviceHandler(errorHandler)

    constructor() {
        authCognitoHubEventStreamHandler = AuthCognitoHubEventStreamHandler()
    }

    @VisibleForTesting
    constructor(hubEventHandler: AuthCognitoHubEventStreamHandler, activity: Activity) {
        authCognitoHubEventStreamHandler = AuthCognitoHubEventStreamHandler()
        mainActivity = activity
    }

    override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        channel = MethodChannel(flutterPluginBinding.getFlutterEngine().getDartExecutor(), "com.amazonaws.amplify/auth_cognito")
        channel.setMethodCallHandler(this)
        context = flutterPluginBinding.applicationContext
        eventMessenger = flutterPluginBinding.getBinaryMessenger()
        hubEventChannel = EventChannel(
            flutterPluginBinding.binaryMessenger,
            "com.amazonaws.amplify/auth_cognito_events"
        )
        hubEventChannel.setStreamHandler(authCognitoHubEventStreamHandler)
    }

    override fun onAttachedToActivity(binding: ActivityPluginBinding) {
        activityBinding = binding
        mainActivity = binding.activity
        binding.addActivityResultListener(this)
    }

    override fun onDetachedFromActivityForConfigChanges() {}
    override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {}
    override fun onDetachedFromActivity() {}

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?): Boolean {
        var isHostedUIActivity = isRedirectActivityDeclared(context)
        if (requestCode == AWSCognitoAuthPlugin.WEB_UI_SIGN_IN_ACTIVITY_CODE) {
            // / The HostedUI activity in amplify-android handles success case
            // / We need a response handler if the HostedUI activity isn't used...
            // / ... or if the HostedUI activity is used, but the user cancels
            if (!isHostedUIActivity || resultCode == RESULT_CANCELED) {
                Amplify.Auth.handleWebUISignInResponse(data)
                return true
            }
        }
        return false
    }

    private fun checkData(@NonNull args: HashMap<String, Any>): HashMap<String, Any> {
        if (args["data"] !is HashMap<*, *>) {
            throw java.lang.Exception("Flutter method call arguments.data is not a map.")
        }
        return args["data"] as HashMap<String, Any>
    }

    private fun checkArguments(@NonNull args: Any): HashMap<String, Any> {
        if (args !is HashMap<*, *>) {
            throw java.lang.Exception("Flutter method call arguments are not a map.")
        }
        return args as HashMap<String, Any>
    }

    override fun onMethodCall(@NonNull call: MethodCall, @NonNull _result: Result) {

        val result = AtomicResult(_result, call.method)

        if (call.method == "addPlugin") {
            try {
                Amplify.addPlugin(AWSCognitoAuthPlugin())
                LOG.info("Added Auth plugin")
                result.success(null)
            } catch (e: Exception) {
                handleAddPluginException("Auth", e, result)
            }
            return
        }

        if (DeviceHandler.canHandle(call.method)) {
            deviceHandler.onMethodCall(call, result)
            return
        }

        var data: HashMap<String, Any> = HashMap<String, Any> ()
        if (!nullaryMethods.contains(call.method)) {
            try {
                data = checkData(checkArguments(call.arguments))
            } catch (e: Exception) {
                return errorHandler.prepareGenericException(result, e)
            }
        }
        when (call.method) {
            "signUp" -> onSignUp(result, data)
            "confirmSignUp" -> onConfirmSignUp(result, data)
            "signIn" -> onSignIn(result, data)
            "confirmSignIn" -> onConfirmSignIn(result, data)
            "signOut" -> onSignOut(result, data)
            "updatePassword" -> onUpdatePassword(result, data)
            "resetPassword" -> onResetPassword(result, data)
            "confirmResetPassword" -> onConfirmResetPassword(result, data)
            "fetchAuthSession" -> onFetchAuthSession(result, data)
            "resendSignUpCode" -> onResendSignUpCode(result, data)
            "getCurrentUser" -> onGetCurrentUser(result)
            "fetchUserAttributes" -> onFetchUserAttributes(result)
            "signInWithWebUI" -> onSignInWithWebUI(result, data)
            "updateUserAttribute" -> onUpdateUserAttribute(result, data)
            "updateUserAttributes" -> onUpdateUserAttributes(result, data)
            "confirmUserAttribute" -> onConfirmUserAttribute(result, data)
            "resendUserAttributeConfirmationCode" -> onResendUserAttributeConfirmationCode(result, data)
            "deleteUser" -> onDeleteUser(result)
            else -> result.notImplemented()
        }
    }

    override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
    }

    private fun onSignUp(@NonNull flutterResult: Result, @NonNull request: HashMap<String, *>) {
        var errorSent: Boolean = false
        try {
            FlutterSignUpRequest.validate(request)
            var req = FlutterSignUpRequest(request)

            Amplify.Auth.signUp(
                req.username,
                req.password,
                req.options,
                { result -> prepareSignUpResult(flutterResult, result) },
                { error ->
                    if (!errorSent) {
                        errorSent = true
                        errorHandler.handleAuthError(flutterResult, error)
                    }
                    LOG.error("AuthException", error)
                }
            )
        } catch (e: Exception) {
            errorHandler.prepareGenericException(flutterResult, e)
        }
    }

    private fun onConfirmSignUp(@NonNull flutterResult: Result, @NonNull request: HashMap<String, *>) {
        try {
            FlutterConfirmSignUpRequest.validate(request)
            var req = FlutterConfirmSignUpRequest(request)
            Amplify.Auth.confirmSignUp(
                req.username,
                req.confirmationCode,
                req.options,
                { result -> prepareSignUpResult(flutterResult, result) },
                { error -> errorHandler.handleAuthError(flutterResult, error) }
            )
        } catch (e: Exception) {
            errorHandler.prepareGenericException(flutterResult, e)
        }
    }

    private fun onResendSignUpCode(@NonNull flutterResult: Result, @NonNull request: HashMap<String, *>) {
        try {
            FlutterResendSignUpCodeRequest.validate(request)
            var req = FlutterResendSignUpCodeRequest(request as HashMap<String, *>)
            Amplify.Auth.resendSignUpCode(
                req.username,
                req.options,
                { result -> prepareResendSignUpCodeResult(flutterResult, result) },
                { error -> errorHandler.handleAuthError(flutterResult, error) }
            )
        } catch (e: Exception) {
            errorHandler.prepareGenericException(flutterResult, e)
        }
    }

    private fun onSignIn(@NonNull flutterResult: Result, @NonNull request: HashMap<String, *>) {
        try {
            FlutterSignInRequest.checkUser()
            var req = FlutterSignInRequest(request)
            Amplify.Auth.signIn(
                req.username,
                req.password,
                req.options,
                { result -> prepareSignInResult(flutterResult, result) },
                { error -> errorHandler.handleAuthError(flutterResult, error) }
            )
        } catch (e: FlutterInvalidStateException) {
            errorHandler.handleAuthError(flutterResult, e)
        } catch (e: Exception) {
            errorHandler.prepareGenericException(flutterResult, e)
        }
    }

    private fun onConfirmSignIn(@NonNull flutterResult: Result, @NonNull request: HashMap<String, *>) {
        try {
            FlutterConfirmSignInRequest.validate(request)
            var req = FlutterConfirmSignInRequest(request)
            Amplify.Auth.confirmSignIn(
                req.confirmationCode,
                req.options,
                { result -> prepareSignInResult(flutterResult, result) },
                { error -> errorHandler.handleAuthError(flutterResult, error) }
            )
        } catch (e: Exception) {
            errorHandler.prepareGenericException(flutterResult, e)
        }
    }

    private fun onSignOut(@NonNull flutterResult: Result, @NonNull request: HashMap<String, *>) {
        try {
            FlutterSignOutRequest.validate(request)
            val req = FlutterSignOutRequest(request)
            Amplify.Auth.signOut(
                req.options,
                { -> prepareSignOutResult(flutterResult) },
                { error -> errorHandler.handleAuthError(flutterResult, error) }
            )
        } catch (e: Exception) {
            errorHandler.prepareGenericException(flutterResult, e)
        }
    }

    private fun onUpdatePassword(@NonNull flutterResult: Result, @NonNull request: HashMap<String, *>) {
        try {
            FlutterUpdatePasswordRequest.validate(request)
            var req = FlutterUpdatePasswordRequest(request)
            Amplify.Auth.updatePassword(
                req.oldPassword,
                req.newPassword,
                { -> prepareUpdatePasswordResult(flutterResult) },
                { error -> errorHandler.handleAuthError(flutterResult, error) }
            )
        } catch (e: Exception) {
            errorHandler.prepareGenericException(flutterResult, e)
        }
    }

    private fun onResetPassword(@NonNull flutterResult: Result, @NonNull request: HashMap<String, *>) {
        try {
            FlutterResetPasswordRequest.validate(request)
            var req = FlutterResetPasswordRequest(request)
            Amplify.Auth.resetPassword(
                req.username,
                req.options,
                { result -> prepareResetPasswordResult(flutterResult, result) },
                { error -> errorHandler.handleAuthError(flutterResult, error) }
            )
        } catch (e: Exception) {
            errorHandler.prepareGenericException(flutterResult, e)
        }
    }

    private fun onConfirmResetPassword(@NonNull flutterResult: Result, @NonNull request: HashMap<String, *>) {
        try {
            FlutterConfirmResetPasswordRequest.validate(request)
            var req = FlutterConfirmResetPasswordRequest(request)
            Amplify.Auth.confirmResetPassword(
                req.newPassword,
                req.confirmationCode,
                req.options,
                { -> prepareUpdatePasswordResult(flutterResult) },
                { error -> errorHandler.handleAuthError(flutterResult, error) }
            )
        } catch (e: Exception) {
            errorHandler.prepareGenericException(flutterResult, e)
        }
    }

    private fun onFetchAuthSession(@NonNull flutterResult: Result, @NonNull request: HashMap<String, *>) {
        // TODO: Implement forceRefresh when/if supported by Amplify libs
        var req = FlutterFetchAuthSessionRequest(request)
        try {
            Amplify.Auth.fetchAuthSession(
                { result ->
                    if (req.getAWSCredentials) {
                        val cognitoAuthSession = result as AWSCognitoAuthSession
                        when (cognitoAuthSession.identityId.type) {
                            AuthSessionResult.Type.SUCCESS -> {
                                prepareCognitoSessionResult(flutterResult, cognitoAuthSession)
                            }
                            AuthSessionResult.Type.FAILURE -> {
                                // checking case where user pool data is available but id pool does not exist
                                if (
                                    result.identityId.error is AuthException.InvalidAccountTypeException &&
                                    result.awsCredentials.error is AuthException.InvalidAccountTypeException &&
                                    result.userPoolTokens.type.toString() == "SUCCESS" &&
                                    result.userSub.type.toString() == "SUCCESS"
                                ) {
                                    prepareCognitoSessionResult(flutterResult, cognitoAuthSession)
                                } else {
                                    prepareCognitoSessionFailure(flutterResult, cognitoAuthSession)
                                }
                            }
                        }
                    } else {
                        val session = result as AuthSession
                        prepareSessionResult(flutterResult, session)
                    }
                },
                { error -> errorHandler.handleAuthError(flutterResult, error) }
            )
        } catch (e: Exception) {
            errorHandler.prepareGenericException(flutterResult, e)
        }
    }

    private fun onGetCurrentUser(@NonNull flutterResult: Result) {
        try {
      /* 
        Because Android does not preserve the user after session expiration but iOS does so,
        we need to use the mobileclient to get the old username to enforce platform parity.
      */
            Amplify.Auth.fetchAuthSession(
                { result ->
                    val cognitoAuthSession = result as AWSCognitoAuthSession
                    when (cognitoAuthSession.userSub.type) {
                        // If the user sub accessor successful the user is present and the session should be valid
                        AuthSessionResult.Type.SUCCESS -> {
                            val awsMobileClient = AWSMobileClient.getInstance()
                            val username = awsMobileClient.username
                            val userid = awsMobileClient.userSub
                            prepareUserResult(flutterResult, AuthUser(userid, username))
                        }
                        // If the user sub accessor failed, check the signIn state
                        AuthSessionResult.Type.FAILURE -> {
                            // if signedIn flag still true, we know session is expired so get the old user
                            if (result.isSignedIn) {
                                val awsMobileClient = AWSMobileClient.getInstance()
                                val username = awsMobileClient.username
                                val userid = awsMobileClient.userSub
                                prepareUserResult(flutterResult, AuthUser(userid, username))
                                // if signIn flag is false, we assume user is signed out so throw exception
                            } else {
                                errorHandler.handleAuthError(flutterResult, AuthException.SignedOutException())
                            }
                        }
                    }
                },
                { error -> errorHandler.handleAuthError(flutterResult, error) }
            )
        } catch (e: AuthException) {
            errorHandler.handleAuthError(flutterResult, e)
        } catch (e: Exception) {
            errorHandler.prepareGenericException(flutterResult, e)
        }
    }

    private fun onFetchUserAttributes(@NonNull flutterResult: Result) {
        try {
            Amplify.Auth.fetchUserAttributes(
                { result -> prepareFetchAttributesResult(flutterResult, result) },
                { error -> errorHandler.handleAuthError(flutterResult, error) }
            )
        } catch (e: AuthException) {
            errorHandler.handleAuthError(flutterResult, e)
        } catch (e: Exception) {
            errorHandler.prepareGenericException(flutterResult, e)
        }
    }

    fun prepareSignUpResult(@NonNull flutterResult: Result, @NonNull result: AuthSignUpResult) {
        var signUpData = FlutterSignUpResult(result)
        Handler(Looper.getMainLooper()).post {
            flutterResult.success(signUpData.toValueMap())
        }
    }

    private fun onSignInWithWebUI(@NonNull flutterResult: Result, @NonNull request: HashMap<String, *>) {
        try {
            FlutterSignInWithWebUIRequest.validate(request)
            val req = FlutterSignInWithWebUIRequest(request)
            var resultSubmitted = false
            val successListener = { result: AuthSignInResult ->
                if (!resultSubmitted) {
                    resultSubmitted = true
                    prepareSignInResult(flutterResult, result)
                }
            }
            val exceptionListener = { error: AuthException ->
                errorHandler.handleAuthError(flutterResult, error)
            }
            val provider = req.provider
            if (provider == null) {
                Amplify.Auth.signInWithWebUI(
                    mainActivity,
                    successListener,
                    exceptionListener
                )
            } else {
                Amplify.Auth.signInWithSocialWebUI(
                    provider,
                    mainActivity,
                    successListener,
                    exceptionListener
                )
            }
        } catch (e: Exception) {
            errorHandler.prepareGenericException(flutterResult, e)
        }
    }

    private fun onUpdateUserAttribute(@NonNull flutterResult: Result, @NonNull request: HashMap<String, *>) {
        try {
            FlutterUpdateUserAttributeRequest.validate(request)
            var req = FlutterUpdateUserAttributeRequest(request)
            Amplify.Auth.updateUserAttribute(
                req.attribute,
                req.options,
                { result -> prepareUpdateUserAttributeResult(flutterResult, result) },
                { error -> errorHandler.handleAuthError(flutterResult, error) }
            )
        } catch (e: Exception) {
            errorHandler.prepareGenericException(flutterResult, e)
        }
    }

    private fun onUpdateUserAttributes(@NonNull flutterResult: Result, @NonNull request: HashMap<String, *>) {
        try {
            FlutterUpdateUserAttributesRequest.validate(request)
            var req = FlutterUpdateUserAttributesRequest(request)
            Amplify.Auth.updateUserAttributes(
                req.attributes,
                req.options,
                { result -> prepareUpdateUserAttributesResult(flutterResult, result) },
                { error -> errorHandler.handleAuthError(flutterResult, error) }
            )
        } catch (e: Exception) {
            errorHandler.prepareGenericException(flutterResult, e)
        }
    }

    private fun onConfirmUserAttribute(@NonNull flutterResult: Result, @NonNull request: HashMap<String, *>) {
        try {
            FlutterConfirmUserAttributeRequest.validate(request)
            var req = FlutterConfirmUserAttributeRequest(request)
            Amplify.Auth.confirmUserAttribute(
                req.userAttributeKey,
                req.confirmationCode,
                { prepareConfirmUserAttributeResult(flutterResult) },
                { error -> errorHandler.handleAuthError(flutterResult, error) }
            )
        } catch (e: Exception) {
            errorHandler.prepareGenericException(flutterResult, e)
        }
    }

    private fun onResendUserAttributeConfirmationCode(@NonNull flutterResult: Result, @NonNull request: HashMap<String, *>) {
        try {
            FlutterResendUserAttributeConfirmationCodeRequest.validate(request)
            var req = FlutterResendUserAttributeConfirmationCodeRequest(request)
            Amplify.Auth.resendUserAttributeConfirmationCode(
                req.userAttributeKey,
                req.options,
                { result -> prepareResendUserAttributeConfirmationCodeResult(flutterResult, result) },
                { error -> errorHandler.handleAuthError(flutterResult, error) }
            )
        } catch (e: Exception) {
            errorHandler.prepareGenericException(flutterResult, e)
        }
    }

    private fun onDeleteUser (@NonNull flutterResult: Result) {
        try {
            Amplify.Auth.deleteUser(
                { prepareDeleteResult(flutterResult) },
                { error -> errorHandler.handleAuthError(flutterResult, error) }
            );
        } catch (e: Exception) {
            errorHandler.prepareGenericException(flutterResult, e)
        }
    }


    fun prepareResendSignUpCodeResult(@NonNull flutterResult: Result, @NonNull result: AuthSignUpResult) {
        var resendData = FlutterResendSignUpCodeResult(result)
        Handler(Looper.getMainLooper()).post {
            flutterResult.success(resendData.toValueMap())
        }
    }

    fun prepareSignInResult(@NonNull flutterResult: Result, @NonNull result: AuthSignInResult) {
        var signInData = FlutterSignInResult(result)
        Handler(Looper.getMainLooper()).post {
            flutterResult.success(signInData.toValueMap())
        }
    }

    fun prepareSignOutResult(@NonNull flutterResult: Result) {
        var parsedResult = mutableMapOf<String, Any>()
        Handler(Looper.getMainLooper()).post {
            flutterResult.success(parsedResult)
        }
    }

    fun prepareUpdatePasswordResult(@NonNull flutterResult: Result) {
        var parsedResult = mutableMapOf<String, Any>()
        Handler(Looper.getMainLooper()).post {
            flutterResult.success(parsedResult)
        }
    }

    fun prepareResetPasswordResult(@NonNull flutterResult: Result, @NonNull result: AuthResetPasswordResult) {
        var resetData = FlutterResetPasswordResult(result)
        Handler(Looper.getMainLooper()).post {
            flutterResult.success(resetData.toValueMap())
        }
    }

    fun prepareCognitoSessionResult(@NonNull flutterResult: Result, @NonNull result: AWSCognitoAuthSession) {
        var session = FlutterFetchCognitoAuthSessionResult(result)
        Handler(Looper.getMainLooper()).post {
            flutterResult.success(session.toValueMap())
        }
    }

    fun prepareUserResult(@NonNull flutterResult: Result, @NonNull user: AuthUser) {
        var preppedUser = FlutterAuthUser(user)
        Handler(Looper.getMainLooper()).post {
            flutterResult.success(preppedUser.toValueMap())
        }
    }

    fun prepareFetchAttributesResult(@NonNull flutterResult: Result, @NonNull attributes: List<AuthUserAttribute>) {
        var attributes = FlutterFetchUserAttributesResult(attributes)
        Handler(Looper.getMainLooper()).post {
            flutterResult.success(attributes.toList())
        }
    }

    fun prepareCognitoSessionFailure(@NonNull flutterResult: Result, @NonNull result: AWSCognitoAuthSession) {
        // If a User Pool token's error is a SignedOutException, we send SignedOutException as
        // method call response because this indicates that the problem is not expired tokens,
        // but total lack of authentication (i.e. the user is signed out)
        var sessionException: AuthException = if (result.userPoolTokens.error is AuthException.SignedOutException) {
            AuthException.SignedOutException()
        } else {
            AuthException.SessionExpiredException()
        }
        errorHandler.handleAuthError(flutterResult, sessionException)
    }

    fun prepareSessionResult(@NonNull flutterResult: Result, @NonNull result: AuthSession) {
        var session = FlutterFetchAuthSessionResult(result)
        Handler(Looper.getMainLooper()).post {
            flutterResult.success(session.toValueMap())
        }
    }

    fun prepareUpdateUserAttributeResult(@NonNull flutterResult: Result, @NonNull result: AuthUpdateAttributeResult) {
        var updateUserAttributeResult = FlutterUpdateUserAttributeResult(result)
        Handler(Looper.getMainLooper()).post {
            flutterResult.success(updateUserAttributeResult.toValueMap())
        }
    }

    fun prepareUpdateUserAttributesResult(@NonNull flutterResult: Result, @NonNull result: Map<AuthUserAttributeKey, AuthUpdateAttributeResult>) {
        var updateUserAttributesResult = FlutterUpdateUserAttributesResult(result)
        Handler(Looper.getMainLooper()).post {
            flutterResult.success(updateUserAttributesResult.toValueMap())
        }
    }

    fun prepareConfirmUserAttributeResult(@NonNull flutterResult: Result) {
        var parsedResult = mutableMapOf<String, Any>()
        Handler(Looper.getMainLooper()).post {
            flutterResult.success(parsedResult)
        }
    }

    fun prepareResendUserAttributeConfirmationCodeResult(@NonNull flutterResult: Result, @NonNull result: AuthCodeDeliveryDetails) {
        var resendUserAttributeConfirmationCodeResult = FlutterResendUserAttributeConfirmationCodeResult(result)
        Handler(Looper.getMainLooper()).post {
            flutterResult.success(resendUserAttributeConfirmationCodeResult.toValueMap())
        }
    }

    fun prepareDeleteResult(@NonNull flutterResult: Result) {
        Handler(Looper.getMainLooper()).post {
            flutterResult.success(null)
        }
    }
}

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
import android.content.Context
import android.os.Handler
import android.os.Looper
import android.util.Log
import androidx.annotation.NonNull
import com.amazonaws.AmazonClientException
import com.amazonaws.AmazonServiceException
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterAuthFailureMessage
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterSignUpResult
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterSignInResult
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterFetchCognitoAuthSessionResult
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterResetPasswordResult
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterFetchAuthSessionResult
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterResendSignUpCodeRequest
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterFetchAuthSessionRequest
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterConfirmSignUpRequest
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterSignUpRequest
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterSignInRequest
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterConfirmSignInRequest
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterSignOutRequest
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterConfirmPasswordRequest
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterResetPasswordRequest
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterUpdatePasswordRequest
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterAuthUser
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterResendSignUpCodeResult
import com.amazonaws.mobileconnectors.cognitoidentityprovider.exceptions.CognitoCodeExpiredException
import com.amazonaws.services.cognitoidentityprovider.model.*
import com.amplifyframework.auth.AuthChannelEventName
import com.amplifyframework.auth.AuthException
import com.amplifyframework.auth.AuthSession
import com.amplifyframework.auth.AuthUser
import com.amplifyframework.auth.cognito.AWSCognitoAuthPlugin
import com.amplifyframework.auth.cognito.AWSCognitoAuthSession
import com.amplifyframework.auth.result.AuthResetPasswordResult
import com.amplifyframework.auth.result.AuthSessionResult
import com.amplifyframework.auth.result.AuthSignInResult
import com.amplifyframework.auth.result.AuthSignUpResult
import com.amplifyframework.core.Amplify
import com.amplifyframework.core.InitializationStatus
import com.amplifyframework.hub.HubChannel
import com.amplifyframework.hub.HubEvent
import com.amplifyframework.hub.SubscriptionToken
import com.google.gson.Gson
import com.google.gson.reflect.TypeToken
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.PluginRegistry.Registrar


/** AuthCognito */
public class AuthCognito : FlutterPlugin, ActivityAware, MethodCallHandler {

  private lateinit var channel: MethodChannel
  private lateinit var context: Context
  private var mainActivity: Activity? = null
  private val LOG = Amplify.Logging.forNamespace("amplify:flutter:auth_cognito")
  var eventChannel: EventChannel? = null
  var eventMessenger: BinaryMessenger? = null
  private lateinit var token: SubscriptionToken;


  override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    channel = MethodChannel(flutterPluginBinding.getFlutterEngine().getDartExecutor(), "com.amazonaws.amplify/auth_cognito")
    channel.setMethodCallHandler(this);
    context = flutterPluginBinding.applicationContext;
    eventMessenger = flutterPluginBinding.getBinaryMessenger();
    Amplify.addPlugin(AWSCognitoAuthPlugin())
    LOG.info("Added AuthCognito plugin")
  }

  companion object {
    @JvmStatic
    fun registerWith(registrar: Registrar) {
      val channel = MethodChannel(registrar.messenger(), "com.amazonaws.amplify/auth_cognito")
        Amplify.addPlugin(AWSCognitoAuthPlugin())
        Log.i("Amplify Flutter", "Added AuthCognito plugin")
    }
  }

  private fun checkData(@NonNull args: HashMap<String, Any>): HashMap<String, Any> {
    if (args["data"] !is HashMap<*, *> ) {
      throw java.lang.Exception("Flutter method call arguments.data is not a map.")
    }
    return args["data"] as HashMap<String, Any>
  };

  private fun checkArguments(@NonNull args: Any): HashMap<String, Any> {
    if (args !is HashMap<*, *>) {
      throw java.lang.Exception("Flutter method call arguments are not a map.")
    }
    return args as HashMap<String, Any>
  };

  override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
    var data : HashMap<String, Any> = HashMap<String, Any> ()
    try {
      data = checkData(checkArguments(call.arguments));
    } catch(e: Exception) {
      prepareError(result, e, FlutterAuthFailureMessage.CASTING.toString())
    }

    when (call.method) {
      "signUp" -> onSignUp(result, data)
      "confirmSignUp" -> onConfirmSignUp(result, data)
      "signIn" -> onSignIn(result, data)
      "confirmSignIn" -> onConfirmSignIn(result, data)
      "signOut" ->  onSignOut(result, data)
      "updatePassword" -> onUpdatePassword(result, data)
      "resetPassword" -> onResetPassword(result, data)
      "confirmPassword" -> onConfirmPassword(result, data)
      "fetchAuthSession" -> onFetchAuthSession(result, data)
      "resendSignUpCode" -> onResendSignUpCode(result, data)
      "getCurrentUser" -> onGetCurrentUser(result)
      else -> result.notImplemented()
    }
  }

  override fun onAttachedToActivity(binding: ActivityPluginBinding) {
    this.mainActivity = binding.activity
    eventChannel = EventChannel(eventMessenger, "com.amazonaws.amplify/auth_cognito_events")
    eventChannel!!.setStreamHandler(object : EventChannel.StreamHandler {
      override fun onListen(listener: Any, eventSink: EventChannel.EventSink) {
        token = Amplify.Hub.subscribe(HubChannel.AUTH
        ) { hubEvent: HubEvent<*> ->
          if (hubEvent.name == InitializationStatus.SUCCEEDED.toString()) {
            LOG.info("AuthPlugin successfully initialized")
          } else if (hubEvent.name == InitializationStatus.FAILED.toString()) {
            LOG.info("AuthPlugin failed to initialize")
          } else {
            when (AuthChannelEventName.valueOf(hubEvent.name)) {
              AuthChannelEventName.SIGNED_IN -> {
                var hubEvent = mapOf("eventName" to "SIGNED_IN")
                sendEvent(hubEvent, eventSink)
              }
              AuthChannelEventName.SIGNED_OUT -> {
                var hubEvent = mapOf("eventName" to "SIGNED_OUT")
                sendEvent(hubEvent, eventSink)
              }
              AuthChannelEventName.SESSION_EXPIRED -> {
                var hubEvent = mapOf("eventName" to "SESSION_EXPIRED")
                sendEvent(hubEvent, eventSink)
              }
              else -> LOG.info("Unrecognized Auth Event")
            }
          }
        }
      }

      override fun onCancel(listener: Any?) {
        Amplify.Hub.unsubscribe(token)
      }
    })
  }
  
  fun sendEvent(hubEvent: Map<String, String>, sink: EventChannel.EventSink) {
    Handler(Looper.getMainLooper()).post(Runnable {
      sink.success(hubEvent)
    })
  }

  override fun onDetachedFromActivity() {
    this.mainActivity = null
  }

  override fun onDetachedFromActivityForConfigChanges() {
    onDetachedFromActivity()
  }

  override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
    onAttachedToActivity(binding)
  }

  override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }

  private fun onSignUp (@NonNull flutterResult: Result, @NonNull request: HashMap<String, *>) {
    if (FlutterSignUpRequest.validate(request)) {

      var req = FlutterSignUpRequest(request);
      try {
        Amplify.Auth.signUp(
                req.username,
                req.password,
                req.options,
                { result -> this.mainActivity?.runOnUiThread({ prepareSignUpResult(flutterResult, result)}) },
                { error -> this.mainActivity?.runOnUiThread({ prepareError(flutterResult, error, FlutterAuthFailureMessage.SIGNUP.toString())}) }
        );
      } catch(e: Exception) {
        prepareError(flutterResult, e, FlutterAuthFailureMessage.SIGNUP.toString())
      }
    } else {
      prepareError(flutterResult, java.lang.Exception(FlutterAuthFailureMessage.MALFORMED.toString()), FlutterAuthFailureMessage.MALFORMED.toString())
    }
  }

  private fun onConfirmSignUp(@NonNull flutterResult: Result, @NonNull request:  HashMap<String, *>){
    if (FlutterConfirmSignUpRequest.validate(request)) {
      var req = FlutterConfirmSignUpRequest(request)
      try {
        Amplify.Auth.confirmSignUp(
                req.username,
                req.confirmationCode,
                { result -> prepareSignUpResult(flutterResult, result)},
                { error -> prepareError(flutterResult, error, FlutterAuthFailureMessage.CONFIRM_SIGNUP.toString())}
        )
      } catch (e: Exception) {
        prepareError(flutterResult, e, FlutterAuthFailureMessage.CONFIRM_SIGNUP.toString())
      }
    }  else {
      prepareError(flutterResult, java.lang.Exception(FlutterAuthFailureMessage.MALFORMED.toString()), FlutterAuthFailureMessage.MALFORMED.toString())
    }
  }

  private fun onResendSignUpCode(@NonNull flutterResult: Result, @NonNull request:  HashMap<String, *>){
    if (FlutterResendSignUpCodeRequest.validate(request)) {
      var req = FlutterResendSignUpCodeRequest(request as HashMap<String, *>);
      try {
        Amplify.Auth.resendSignUpCode(
                req.username,
                { result -> prepareResendSignUpCodeResult(flutterResult, result) },
                { error -> prepareError(flutterResult, error, FlutterAuthFailureMessage.RESEND_SIGNUP_CODE.toString())}
        )
      } catch (e: Exception) {
        prepareError(flutterResult, e, FlutterAuthFailureMessage.RESEND_SIGNUP_CODE.toString())
      }
    }  else {
      prepareError(flutterResult, java.lang.Exception(FlutterAuthFailureMessage.MALFORMED.toString()), FlutterAuthFailureMessage.MALFORMED.toString())
    }
  }

  private fun onSignIn (@NonNull flutterResult: Result, @NonNull request: HashMap<String, *>) {
    if (FlutterSignInRequest.validate(request)) {
      var req = FlutterSignInRequest(request)
      try {
        Amplify.Auth.signIn(
                req.username,
                req.password,
                { result -> prepareSignInResult(flutterResult, result) },
                { error -> prepareError(flutterResult, error, FlutterAuthFailureMessage.SIGNIN.toString())}
        );
      } catch (e: Exception) {
        prepareError(flutterResult, e, FlutterAuthFailureMessage.SIGNIN.toString())
      }
    } else {
      prepareError(flutterResult, java.lang.Exception(FlutterAuthFailureMessage.MALFORMED.toString()), FlutterAuthFailureMessage.MALFORMED.toString())
    }
  }

  private fun onConfirmSignIn (@NonNull flutterResult: Result, @NonNull request: HashMap<String, *>) {
    if (FlutterConfirmSignInRequest.validate(request)) {
      var req = FlutterConfirmSignInRequest(request)
      try {
        Amplify.Auth.confirmSignIn(
                req.confirmationCode,
                { result -> prepareSignInResult(flutterResult, result)},
                { error -> prepareError(flutterResult, error, FlutterAuthFailureMessage.CONFIRM_SIGNIN.toString())}
        );
      } catch(e: Exception) {
        prepareError(flutterResult, e, FlutterAuthFailureMessage.CONFIRM_SIGNIN.toString())
      }
    } else {
      prepareError(flutterResult, java.lang.Exception(FlutterAuthFailureMessage.MALFORMED.toString()), FlutterAuthFailureMessage.MALFORMED.toString())
    }
  }

  private fun onSignOut (@NonNull flutterResult: Result, @NonNull request: HashMap<String, *>) {
    var req = FlutterSignOutRequest(request)
    try {
      Amplify.Auth.signOut(
        req.signOutOptions,
          {  -> prepareSignOutResult(flutterResult)},
          { error -> prepareError(flutterResult, error, FlutterAuthFailureMessage.SIGNOUT.toString())}
      );
    } catch(e: Exception) {
      prepareError(flutterResult, e, FlutterAuthFailureMessage.SIGNOUT.toString())
    }
  }

  private fun onUpdatePassword (@NonNull flutterResult: Result, @NonNull request: HashMap<String, *>) {
    if (FlutterUpdatePasswordRequest.validate(request)) {
      var req = FlutterUpdatePasswordRequest(request)
      try {
        Amplify.Auth.updatePassword(
                req.oldPassword,
                req.newPassword,
                {  -> prepareUpdatePasswordResult(flutterResult)},
                { error -> prepareError(flutterResult, error, FlutterAuthFailureMessage.UPDATE_PASSWORD.toString())}
        );
      } catch(e: Exception) {
        prepareError(flutterResult, e, FlutterAuthFailureMessage.UPDATE_PASSWORD.toString())
      }
    } else {
      prepareError(flutterResult, java.lang.Exception(FlutterAuthFailureMessage.MALFORMED.toString()), FlutterAuthFailureMessage.MALFORMED.toString())
    }
  }

  private fun onResetPassword (@NonNull flutterResult: Result, @NonNull request: HashMap<String, *>) {
    if (FlutterResetPasswordRequest.validate(request)) {
      var req = FlutterResetPasswordRequest(request)
      try {
        Amplify.Auth.resetPassword(
                req.username,
                { result -> prepareResetPasswordResult(flutterResult, result)},
                { error -> prepareError(flutterResult, error, FlutterAuthFailureMessage.RESET_PASSWORD.toString()) }
        );
      } catch(e: Exception) {
        prepareError(flutterResult, e, FlutterAuthFailureMessage.RESET_PASSWORD.toString())
      }
    } else {
      prepareError(flutterResult, java.lang.Exception(FlutterAuthFailureMessage.MALFORMED.toString()), FlutterAuthFailureMessage.MALFORMED.toString())
    }
  }

  private fun onConfirmPassword (@NonNull flutterResult: Result, @NonNull request: HashMap<String, *>) {
    if (FlutterConfirmPasswordRequest.validate(request)) {
      var req = FlutterConfirmPasswordRequest(request)
      try {
        Amplify.Auth.confirmResetPassword(
                req.newPassword,
                req.confirmationCode,
                {  -> prepareUpdatePasswordResult(flutterResult)},
                { error -> prepareError(flutterResult, error, FlutterAuthFailureMessage.CONFIRM_PASSWORD.toString())}
        );
      } catch(e: Exception) {
        prepareError(flutterResult, e, FlutterAuthFailureMessage.CONFIRM_PASSWORD.toString())
      }
    } else {
      prepareError(flutterResult, java.lang.Exception(FlutterAuthFailureMessage.MALFORMED.toString()), FlutterAuthFailureMessage.MALFORMED.toString())
    }
  }

  private fun onFetchAuthSession (@NonNull flutterResult: Result, @NonNull request: HashMap<String, *>) {
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
                  val session = result as AuthSession;
                  prepareSessionResult(flutterResult, session)
                }
              },
              { error -> prepareError(flutterResult, error, FlutterAuthFailureMessage.FETCH_SESSION.toString()) }
      )
    } catch(e: Exception) {
      prepareError(flutterResult, e, FlutterAuthFailureMessage.FETCH_SESSION.toString())
    }
  }

  private fun onGetCurrentUser(@NonNull flutterResult: Result) {
    try {
      var user: AuthUser? = Amplify.Auth.currentUser;
      if (user is AuthUser) {
        prepareUserResult(flutterResult, user);
      } else {
        throw AuthException.SignedOutException()
      }
    } catch(e: Exception) {
      prepareError(flutterResult, e, FlutterAuthFailureMessage.CURRENT_USER.toString())
    }
  }

  fun prepareError(@NonNull flutterResult: Result, @NonNull error: Exception, @NonNull msg: String) {
    LOG.error(msg, error)
    var errorMap: HashMap<String, Any> = HashMap();
    if (error is AuthException) {
      when (error) {
        is AuthException.SignedOutException -> errorMap["SIGNED_OUT"] = error.localizedMessage
        is AuthException.SessionExpiredException ->  errorMap["SESSION_EXPIRED"] = error.localizedMessage
        is AuthException.InvalidAccountTypeException -> errorMap["INVALID_ACCOUNT_TYPE"] = error.localizedMessage
        is AuthException.SessionUnavailableOfflineException -> errorMap["SESSION_UNAVAILABLE_OFFLINE"] = error.localizedMessage
        is AuthException.SessionUnavailableServiceException -> errorMap["SESSION_UNAVAILABLE_SERVICE"] = error.localizedMessage
        else  -> when (error.cause) {
          is InvalidParameterException -> errorMap["INVALID_PARAMETER"] = (error.cause as InvalidParameterException).errorMessage;
          is UsernameExistsException -> errorMap["USERNAME_EXISTS"] = (error.cause as UsernameExistsException).errorMessage;
          is AliasExistsException -> errorMap["ALIAS_EXISTS"] = (error.cause as AliasExistsException).errorMessage;
          is CodeDeliveryFailureException -> errorMap["CODE_DELIVERY_FAILURE"] = (error.cause as CodeDeliveryFailureException).errorMessage;
          is CodeMismatchException -> errorMap["CODE_MISMATCH"] = (error.cause as CodeMismatchException).errorMessage;
          is CognitoCodeExpiredException -> errorMap["CODE_EXPIRED"] = (error.cause as CognitoCodeExpiredException).localizedMessage;
          is InternalErrorException -> errorMap["INTERNAL_ERROR"] = (error.cause as InternalErrorException).errorMessage;
          is InvalidLambdaResponseException -> errorMap["INVALID_LAMBDA_RESPONSE"] = (error.cause as InvalidLambdaResponseException).errorMessage;
          is InvalidPasswordException -> errorMap["INVALID_PASSWORD"] = (error.cause as InvalidPasswordException).errorMessage;
          is MFAMethodNotFoundException -> errorMap["MFA_METHOD_NOT_FOUND"] = (error.cause as MFAMethodNotFoundException).errorMessage;
          is NotAuthorizedException -> errorMap["NOT_AUTHORIZED"] = (error.cause as NotAuthorizedException).errorMessage;
          is ResourceNotFoundException -> errorMap["RESOURCE_NOT_FOUND"] = (error.cause as ResourceNotFoundException).errorMessage;
          is SoftwareTokenMFANotFoundException -> errorMap["SOFTWARE_TOKEN_MFA_NOT_FOUND"] = (error.cause as SoftwareTokenMFANotFoundException).errorMessage;
          is PasswordResetRequiredException -> errorMap["PASSWORD_RESET_REQUIRED"] = (error.cause as PasswordResetRequiredException).errorMessage;
          is TooManyRequestsException -> errorMap["TOO_MANY_REQUESTS"] = (error.cause as TooManyRequestsException).errorMessage;
          is UnexpectedLambdaException -> errorMap["UNEXPECTED_LAMBDA"] = (error.cause as UnexpectedLambdaException).errorMessage;
          is UserLambdaValidationException -> errorMap["USER_LAMBDA_VALIDATION"] = (error.cause as UserLambdaValidationException).errorMessage;
          is TooManyFailedAttemptsException -> errorMap["TOO_MANY_FAILED_REQUESTS"] =  (error.cause as TooManyFailedAttemptsException).errorMessage;
          is UserNotConfirmedException -> errorMap["USER_NOT_CONFIRMED"] = (error.cause as UserNotConfirmedException).errorMessage;
          is LimitExceededException -> errorMap["REQUEST_LIMIT_EXCEEDED"] = (error.cause as LimitExceededException).errorMessage;
          is AmazonClientException -> errorMap["AMAZON_CLIENT_EXCEPTION"] = (error.cause as AmazonClientException).localizedMessage;
          is AmazonServiceException -> errorMap["AMAZON_SERVICE_EXCEPTION"] = (error.cause as AmazonServiceException).localizedMessage;
          else -> errorMap["UNKNOWN"] = "Unknown Auth Error.";
        }
      }
    } else {
      when(error.message) {
        else -> errorMap.put("UNKNOWN", "Unknown Auth Error.")
      }
    }

    var localizedError: String = "";
    var recoverySuggestion: String ="";
    if (error is AuthException) {
      recoverySuggestion = error.recoverySuggestion;
    }
    if (error.localizedMessage != null) {
      localizedError = error.localizedMessage;
    }
    errorMap.put("PLATFORM_EXCEPTIONS" , mapOf(
      "platform" to "Android",
      "localizedErrorMessage" to localizedError,
      "recoverySuggestion" to recoverySuggestion,
      "errorString" to error.toString()
    ))
    Handler (Looper.getMainLooper()).post {
      flutterResult.error("AmplifyException", msg, errorMap)
    }
  }

  fun prepareSignUpResult(@NonNull flutterResult: Result, @NonNull result: AuthSignUpResult) {
    var signUpData = FlutterSignUpResult(result);
    Handler (Looper.getMainLooper()).post {
      flutterResult.success(signUpData.toValueMap());
    }
  }

  fun prepareResendSignUpCodeResult(@NonNull flutterResult: Result, @NonNull result: AuthSignUpResult) {
    var resendData = FlutterResendSignUpCodeResult(result);
    Handler (Looper.getMainLooper()).post {
      flutterResult.success(resendData.toValueMap());
    }
  }

  fun prepareSignInResult(@NonNull flutterResult: Result, @NonNull result: AuthSignInResult) {
    var signInData = FlutterSignInResult(result);
    Handler (Looper.getMainLooper()).post {
      flutterResult.success(signInData.toValueMap());
    }
  }

  fun prepareSignOutResult(@NonNull flutterResult: Result) {
    var parsedResult = mutableMapOf<String, Any>();
    Handler (Looper.getMainLooper()).post {
      flutterResult.success(parsedResult);
    }
  }

  fun prepareUpdatePasswordResult(@NonNull flutterResult: Result) {
    var parsedResult = mutableMapOf<String, Any>();
    Handler (Looper.getMainLooper()).post {
      flutterResult.success(parsedResult);
    }
  }

  fun prepareResetPasswordResult(@NonNull flutterResult: Result, @NonNull result: AuthResetPasswordResult) {
    var resetData = FlutterResetPasswordResult(result);
    Handler (Looper.getMainLooper()).post {
      flutterResult.success(resetData.toValueMap());
    }
  }

  fun prepareCognitoSessionResult(@NonNull flutterResult: Result, @NonNull result: AWSCognitoAuthSession) {
    var session = FlutterFetchCognitoAuthSessionResult(result);
    Handler (Looper.getMainLooper()).post {
      flutterResult.success(session.toValueMap());
    }
  }

  fun prepareUserResult(@NonNull flutterResult: Result, @NonNull user: AuthUser) {
    var preppedUser = FlutterAuthUser(user);
    Handler (Looper.getMainLooper()).post {
      flutterResult.success(preppedUser.toValueMap());
    }
  }

  fun prepareCognitoSessionFailure(@NonNull flutterResult: Result, @NonNull result: AWSCognitoAuthSession) {
    prepareError(flutterResult, AuthException.SignedOutException(), FlutterAuthFailureMessage.FETCH_SESSION.toString())
  }

  fun prepareSessionResult(@NonNull flutterResult: Result, @NonNull result: AuthSession) {
    var session = FlutterFetchAuthSessionResult(result);
      Handler (Looper.getMainLooper()).post {
        flutterResult.success(session.toValueMap());
      }
  }
}

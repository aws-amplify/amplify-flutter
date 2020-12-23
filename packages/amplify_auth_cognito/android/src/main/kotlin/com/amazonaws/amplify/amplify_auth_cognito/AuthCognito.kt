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

@file:Suppress("UNUSED_VARIABLE", "UNCHECKED_CAST")

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
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterAuthUser
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterConfirmPasswordRequest
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterConfirmSignInRequest
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterConfirmSignUpRequest
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterFetchAuthSessionRequest
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterFetchAuthSessionResult
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterFetchCognitoAuthSessionResult
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterResendSignUpCodeRequest
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterResendSignUpCodeResult
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterResetPasswordRequest
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterResetPasswordResult
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterSignInRequest
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterSignInResult
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterSignOutRequest
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterSignUpRequest
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterSignUpResult
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterUpdatePasswordRequest
import com.amazonaws.mobileconnectors.cognitoidentityprovider.exceptions.CognitoCodeExpiredException
import com.amazonaws.services.cognitoidentityprovider.model.AliasExistsException
import com.amazonaws.services.cognitoidentityprovider.model.CodeDeliveryFailureException
import com.amazonaws.services.cognitoidentityprovider.model.CodeMismatchException
import com.amazonaws.services.cognitoidentityprovider.model.InternalErrorException
import com.amazonaws.services.cognitoidentityprovider.model.InvalidLambdaResponseException
import com.amazonaws.services.cognitoidentityprovider.model.InvalidParameterException
import com.amazonaws.services.cognitoidentityprovider.model.InvalidPasswordException
import com.amazonaws.services.cognitoidentityprovider.model.LimitExceededException
import com.amazonaws.services.cognitoidentityprovider.model.MFAMethodNotFoundException
import com.amazonaws.services.cognitoidentityprovider.model.NotAuthorizedException
import com.amazonaws.services.cognitoidentityprovider.model.PasswordResetRequiredException
import com.amazonaws.services.cognitoidentityprovider.model.ResourceNotFoundException
import com.amazonaws.services.cognitoidentityprovider.model.SoftwareTokenMFANotFoundException
import com.amazonaws.services.cognitoidentityprovider.model.TooManyFailedAttemptsException
import com.amazonaws.services.cognitoidentityprovider.model.TooManyRequestsException
import com.amazonaws.services.cognitoidentityprovider.model.UnexpectedLambdaException
import com.amazonaws.services.cognitoidentityprovider.model.UserLambdaValidationException
import com.amazonaws.services.cognitoidentityprovider.model.UserNotConfirmedException
import com.amazonaws.services.cognitoidentityprovider.model.UsernameExistsException
import com.amplifyframework.auth.AuthCategoryBehavior
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
import com.amplifyframework.hub.SubscriptionToken
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

class AuthCognito(val auth: AuthCategoryBehavior = Amplify.Auth) : FlutterPlugin, ActivityAware, MethodCallHandler {
  private lateinit var channel: MethodChannel
  private lateinit var context: Context
  private var mainActivity: Activity? = null
  private var eventChannel: EventChannel? = null
  private var eventMessenger: BinaryMessenger? = null
  private lateinit var token: SubscriptionToken

  @Suppress("DEPRECATION")
  override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    channel = MethodChannel(flutterPluginBinding.flutterEngine.dartExecutor, "com.amazonaws.amplify/auth_cognito")
    channel.setMethodCallHandler(this)
    context = flutterPluginBinding.applicationContext
    eventMessenger = flutterPluginBinding.binaryMessenger
    Amplify.addPlugin(AWSCognitoAuthPlugin())
    LOG.info("Added AuthCognito plugin")
  }

  @Suppress("unused")
  companion object {
    @JvmStatic
    fun registerWith(registrar: Registrar) {
      val channel = MethodChannel(registrar.messenger(), "com.amazonaws.amplify/auth_cognito")
      Amplify.addPlugin(AWSCognitoAuthPlugin())
      Log.i("Amplify Flutter", "Added AuthCognito plugin")
    }

    private val LOG = Amplify.Logging.forNamespace("amplify:flutter:auth_cognito")
  }

  private fun checkData(@NonNull args: HashMap<String, Any>): HashMap<String, Any> {
    if (args["data"] !is HashMap<*, *> ) {
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

  override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
    var data : HashMap<String, Any> = HashMap()
    try {
      data = checkData(checkArguments(call.arguments))
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
        token = Amplify.Hub.subscribe(HubChannel.AUTH) {
          when (it.name) {
            InitializationStatus.SUCCEEDED.toString() -> {
              LOG.info("AuthPlugin successfully initialized")
            }
            InitializationStatus.FAILED.toString() -> {
              LOG.info("AuthPlugin failed to initialize")
            }
            else -> {
              when (AuthChannelEventName.valueOf(it.name)) {
                AuthChannelEventName.SIGNED_IN -> {
                  sendEvent(mapOf("eventName" to "SIGNED_IN"), eventSink)
                }
                AuthChannelEventName.SIGNED_OUT -> {
                  sendEvent(mapOf("eventName" to "SIGNED_OUT"), eventSink)
                }
                AuthChannelEventName.SESSION_EXPIRED -> {
                  sendEvent(mapOf("eventName" to "SESSION_EXPIRED"), eventSink)
                }
                else -> LOG.info("Unrecognized Auth Event")
              }
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
    Handler(Looper.getMainLooper()).post {
      sink.success(hubEvent)
    }
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
      val req = FlutterSignUpRequest(request)
      try {
        auth.signUp(
          req.username,
          req.password,
          req.options,
          { mainActivity?.runOnUiThread { prepareSignUpResult(flutterResult, it) } },
          { mainActivity?.runOnUiThread { prepareError(flutterResult, it, FlutterAuthFailureMessage.SIGNUP.toString()) } }
        )
      } catch(e: Exception) {
        prepareError(flutterResult, e, FlutterAuthFailureMessage.SIGNUP.toString())
      }
    } else {
      prepareError(
        flutterResult,
        java.lang.Exception(FlutterAuthFailureMessage.MALFORMED.toString()),
        FlutterAuthFailureMessage.MALFORMED.toString()
      )
    }
  }

  private fun onConfirmSignUp(@NonNull flutterResult: Result, @NonNull request:  HashMap<String, *>){
    if (FlutterConfirmSignUpRequest.validate(request)) {
      val req = FlutterConfirmSignUpRequest(request)
      try {
        auth.confirmSignUp(
          req.username,
          req.confirmationCode,
          { prepareSignUpResult(flutterResult, it)},
          { prepareError(flutterResult, it, FlutterAuthFailureMessage.CONFIRM_SIGNUP.toString())}
        )
      } catch (e: Exception) {
        prepareError(flutterResult, e, FlutterAuthFailureMessage.CONFIRM_SIGNUP.toString())
      }
    } else {
      prepareError(
        flutterResult,
        java.lang.Exception(FlutterAuthFailureMessage.MALFORMED.toString()),
        FlutterAuthFailureMessage.MALFORMED.toString()
      )
    }
  }

  private fun onResendSignUpCode(@NonNull flutterResult: Result, @NonNull request:  HashMap<String, *>){
    if (FlutterResendSignUpCodeRequest.validate(request)) {
      val req = FlutterResendSignUpCodeRequest(request)
      try {
        auth.resendSignUpCode(
          req.username,
          { prepareResendSignUpCodeResult(flutterResult, it) },
          { prepareError(flutterResult, it, FlutterAuthFailureMessage.RESEND_SIGNUP_CODE.toString())}
        )
      } catch (e: Exception) {
        prepareError(flutterResult, e, FlutterAuthFailureMessage.RESEND_SIGNUP_CODE.toString())
      }
    } else {
      prepareError(
        flutterResult,
        java.lang.Exception(FlutterAuthFailureMessage.MALFORMED.toString()),
        FlutterAuthFailureMessage.MALFORMED.toString()
      )
    }
  }

  private fun onSignIn (@NonNull flutterResult: Result, @NonNull request: HashMap<String, *>) {
    if (FlutterSignInRequest.validate(request)) {
      val req = FlutterSignInRequest(request)
      try {
        auth.signIn(
          req.username,
          req.password,
          { prepareSignInResult(flutterResult, it) },
          { prepareError(flutterResult, it, FlutterAuthFailureMessage.SIGNIN.toString())}
        )
      } catch (e: Exception) {
        prepareError(flutterResult, e, FlutterAuthFailureMessage.SIGNIN.toString())
      }
    } else {
      prepareError(flutterResult, java.lang.Exception(FlutterAuthFailureMessage.MALFORMED.toString()), FlutterAuthFailureMessage.MALFORMED.toString())
    }
  }

  private fun onConfirmSignIn (@NonNull flutterResult: Result, @NonNull request: HashMap<String, *>) {
    if (FlutterConfirmSignInRequest.validate(request)) {
      val req = FlutterConfirmSignInRequest(request)
      try {
        auth.confirmSignIn(
          req.confirmationCode,
          { prepareSignInResult(flutterResult, it)},
          { prepareError(flutterResult, it, FlutterAuthFailureMessage.CONFIRM_SIGNIN.toString())}
        )
      } catch(e: Exception) {
        prepareError(flutterResult, e, FlutterAuthFailureMessage.CONFIRM_SIGNIN.toString())
      }
    } else {
      prepareError(
        flutterResult,
        java.lang.Exception(FlutterAuthFailureMessage.MALFORMED.toString()),
        FlutterAuthFailureMessage.MALFORMED.toString()
      )
    }
  }

  private fun onSignOut (@NonNull flutterResult: Result, @NonNull request: HashMap<String, *>) {
    val req = FlutterSignOutRequest(request)
    try {
      auth.signOut(
        req.signOutOptions,
        { prepareSignOutResult(flutterResult)},
        { prepareError(flutterResult, it, FlutterAuthFailureMessage.SIGNOUT.toString())}
      )
    } catch(e: Exception) {
      prepareError(flutterResult, e, FlutterAuthFailureMessage.SIGNOUT.toString())
    }
  }

  private fun onUpdatePassword (@NonNull flutterResult: Result, @NonNull request: HashMap<String, *>) {
    if (FlutterUpdatePasswordRequest.validate(request)) {
      val req = FlutterUpdatePasswordRequest(request)
      try {
        auth.updatePassword(
          req.oldPassword,
          req.newPassword,
          { prepareUpdatePasswordResult(flutterResult)},
          { prepareError(flutterResult, it, FlutterAuthFailureMessage.UPDATE_PASSWORD.toString())}
        )
      } catch(e: Exception) {
        prepareError(flutterResult, e, FlutterAuthFailureMessage.UPDATE_PASSWORD.toString())
      }
    } else {
      prepareError(
        flutterResult,
        java.lang.Exception(FlutterAuthFailureMessage.MALFORMED.toString()),
        FlutterAuthFailureMessage.MALFORMED.toString()
      )
    }
  }

  private fun onResetPassword (@NonNull flutterResult: Result, @NonNull request: HashMap<String, *>) {
    if (FlutterResetPasswordRequest.validate(request)) {
      val req = FlutterResetPasswordRequest(request)
      try {
         auth.resetPassword(
          req.username,
          { prepareResetPasswordResult(flutterResult, it)},
          { prepareError(flutterResult, it, FlutterAuthFailureMessage.RESET_PASSWORD.toString()) }
         )
      } catch(e: Exception) {
        prepareError(flutterResult, e, FlutterAuthFailureMessage.RESET_PASSWORD.toString())
      }
    } else {
      prepareError(
        flutterResult,
        java.lang.Exception(FlutterAuthFailureMessage.MALFORMED.toString()),
        FlutterAuthFailureMessage.MALFORMED.toString()
      )
    }
  }

  private fun onConfirmPassword (@NonNull flutterResult: Result, @NonNull request: HashMap<String, *>) {
    if (FlutterConfirmPasswordRequest.validate(request)) {
      val req = FlutterConfirmPasswordRequest(request)
      try {
        auth.confirmResetPassword(
          req.newPassword,
          req.confirmationCode,
          { prepareUpdatePasswordResult(flutterResult)},
          { prepareError(flutterResult, it, FlutterAuthFailureMessage.CONFIRM_PASSWORD.toString())}
        )
      } catch(e: Exception) {
        prepareError(flutterResult, e, FlutterAuthFailureMessage.CONFIRM_PASSWORD.toString())
      }
    } else {
      prepareError(
        flutterResult,
        java.lang.Exception(FlutterAuthFailureMessage.MALFORMED.toString()),
        FlutterAuthFailureMessage.MALFORMED.toString()
      )
    }
  }

  private fun onFetchAuthSession (@NonNull flutterResult: Result, @NonNull request: HashMap<String, *>) {
    // TODO: Implement forceRefresh when/if supported by Amplify libs
    val req = FlutterFetchAuthSessionRequest(request)
    try {
      auth.fetchAuthSession({
        if (req.getAWSCredentials) {
          val cognitoAuthSession = it as AWSCognitoAuthSession
          when (cognitoAuthSession.identityId.type) {
            AuthSessionResult.Type.SUCCESS -> {
              prepareCognitoSessionResult(flutterResult, cognitoAuthSession)
            }
            AuthSessionResult.Type.FAILURE -> {
              // checking case where user pool data is available but id pool does not exist
              if (
                it.identityId.error is AuthException.InvalidAccountTypeException &&
                it.awsCredentials.error is AuthException.InvalidAccountTypeException &&
                it.userPoolTokens.type.toString() == "SUCCESS" &&
                it.userSub.type.toString() == "SUCCESS"
              ) {
                prepareCognitoSessionResult(flutterResult, cognitoAuthSession)
              } else {
                prepareCognitoSessionFailure(flutterResult, cognitoAuthSession)
              }
            }
          }
        } else {
          prepareSessionResult(flutterResult, it)
        }
      },
      { prepareError(flutterResult, it, FlutterAuthFailureMessage.FETCH_SESSION.toString()) })
    } catch(e: Exception) {
      prepareError(flutterResult, e, FlutterAuthFailureMessage.FETCH_SESSION.toString())
    }
  }

  private fun onGetCurrentUser(@NonNull flutterResult: Result) {
    try {
      val user: AuthUser? = auth.currentUser
      if (user is AuthUser) {
        prepareUserResult(flutterResult, user)
      } else {
        throw AuthException.SignedOutException()
      }
    } catch(e: Exception) {
      prepareError(flutterResult, e, FlutterAuthFailureMessage.CURRENT_USER.toString())
    }
  }

  fun prepareError(@NonNull flutterResult: Result, @NonNull error: Exception, @NonNull msg: String) {
    LOG.error(msg, error)
    val errorMap: HashMap<String, Any> = HashMap()
    if (error is AuthException) {
      when (error) {
        is AuthException.SignedOutException -> errorMap["SIGNED_OUT"] = error.localizedMessage
        is AuthException.SessionExpiredException ->  errorMap["SESSION_EXPIRED"] = error.localizedMessage
        is AuthException.InvalidAccountTypeException -> errorMap["INVALID_ACCOUNT_TYPE"] = error.localizedMessage
        is AuthException.SessionUnavailableOfflineException -> errorMap["SESSION_UNAVAILABLE_OFFLINE"] = error.localizedMessage
        is AuthException.SessionUnavailableServiceException -> errorMap["SESSION_UNAVAILABLE_SERVICE"] = error.localizedMessage
        else  -> when (error.cause) {
          is InvalidParameterException -> errorMap["INVALID_PARAMETER"] = (error.cause as InvalidParameterException).errorMessage
          is UsernameExistsException -> errorMap["USERNAME_EXISTS"] = (error.cause as UsernameExistsException).errorMessage
          is AliasExistsException -> errorMap["ALIAS_EXISTS"] = (error.cause as AliasExistsException).errorMessage
          is CodeDeliveryFailureException -> errorMap["CODE_DELIVERY_FAILURE"] = (error.cause as CodeDeliveryFailureException).errorMessage
          is CodeMismatchException -> errorMap["CODE_MISMATCH"] = (error.cause as CodeMismatchException).errorMessage
          is CognitoCodeExpiredException -> errorMap["CODE_EXPIRED"] = (error.cause as CognitoCodeExpiredException).localizedMessage
          is InternalErrorException -> errorMap["INTERNAL_ERROR"] = (error.cause as InternalErrorException).errorMessage
          is InvalidLambdaResponseException -> errorMap["INVALID_LAMBDA_RESPONSE"] = (error.cause as InvalidLambdaResponseException).errorMessage
          is InvalidPasswordException -> errorMap["INVALID_PASSWORD"] = (error.cause as InvalidPasswordException).errorMessage
          is MFAMethodNotFoundException -> errorMap["MFA_METHOD_NOT_FOUND"] = (error.cause as MFAMethodNotFoundException).errorMessage
          is NotAuthorizedException -> errorMap["NOT_AUTHORIZED"] = (error.cause as NotAuthorizedException).errorMessage
          is ResourceNotFoundException -> errorMap["RESOURCE_NOT_FOUND"] = (error.cause as ResourceNotFoundException).errorMessage
          is SoftwareTokenMFANotFoundException -> errorMap["SOFTWARE_TOKEN_MFA_NOT_FOUND"] = (error.cause as SoftwareTokenMFANotFoundException).errorMessage
          is PasswordResetRequiredException -> errorMap["PASSWORD_RESET_REQUIRED"] = (error.cause as PasswordResetRequiredException).errorMessage
          is TooManyRequestsException -> errorMap["TOO_MANY_REQUESTS"] = (error.cause as TooManyRequestsException).errorMessage
          is UnexpectedLambdaException -> errorMap["UNEXPECTED_LAMBDA"] = (error.cause as UnexpectedLambdaException).errorMessage
          is UserLambdaValidationException -> errorMap["USER_LAMBDA_VALIDATION"] = (error.cause as UserLambdaValidationException).errorMessage
          is TooManyFailedAttemptsException -> errorMap["TOO_MANY_FAILED_REQUESTS"] =  (error.cause as TooManyFailedAttemptsException).errorMessage
          is UserNotConfirmedException -> errorMap["USER_NOT_CONFIRMED"] = (error.cause as UserNotConfirmedException).errorMessage
          is LimitExceededException -> errorMap["REQUEST_LIMIT_EXCEEDED"] = (error.cause as LimitExceededException).errorMessage
          is AmazonClientException -> errorMap["AMAZON_CLIENT_EXCEPTION"] = (error.cause as AmazonClientException).localizedMessage
          is AmazonServiceException -> errorMap["AMAZON_SERVICE_EXCEPTION"] = (error.cause as AmazonServiceException).localizedMessage
          else -> errorMap["UNKNOWN"] = "Unknown Auth Error."
        }
      }
    } else {
      when(error.message) {
        else -> errorMap["UNKNOWN"] = "Unknown Auth Error."
      }
    }

    var localizedError = ""
    var recoverySuggestion =""
    if (error is AuthException) {
      recoverySuggestion = error.recoverySuggestion
    }
    if (error.localizedMessage != null) {
      localizedError = error.localizedMessage
    }
    errorMap["PLATFORM_EXCEPTIONS"] = mapOf(
      "platform" to "Android",
      "localizedErrorMessage" to localizedError,
      "recoverySuggestion" to recoverySuggestion,
      "errorString" to error.toString()
    )
    Handler (Looper.getMainLooper()).post {
      flutterResult.error("AmplifyException", msg, errorMap)
    }
  }

  fun prepareSignUpResult(@NonNull flutterResult: Result, @NonNull result: AuthSignUpResult) {
    val signUpData = FlutterSignUpResult(result)
    Handler (Looper.getMainLooper()).post {
      flutterResult.success(signUpData.toValueMap())
    }
  }

  private fun prepareResendSignUpCodeResult(@NonNull flutterResult: Result, @NonNull result: AuthSignUpResult) {
    val resendData = FlutterResendSignUpCodeResult(result)
    Handler (Looper.getMainLooper()).post {
      flutterResult.success(resendData.toValueMap())
    }
  }

  fun prepareSignInResult(@NonNull flutterResult: Result, @NonNull result: AuthSignInResult) {
    val signInData = FlutterSignInResult(result)
    Handler (Looper.getMainLooper()).post {
      flutterResult.success(signInData.toValueMap())
    }
  }

  fun prepareSignOutResult(@NonNull flutterResult: Result) {
    val parsedResult = mutableMapOf<String, Any>()
    Handler (Looper.getMainLooper()).post {
      flutterResult.success(parsedResult)
    }
  }

  fun prepareUpdatePasswordResult(@NonNull flutterResult: Result) {
    val parsedResult = mutableMapOf<String, Any>()
    Handler (Looper.getMainLooper()).post {
      flutterResult.success(parsedResult)
    }
  }

  fun prepareResetPasswordResult(@NonNull flutterResult: Result, @NonNull result: AuthResetPasswordResult) {
    val resetData = FlutterResetPasswordResult(result)
    Handler (Looper.getMainLooper()).post {
      flutterResult.success(resetData.toValueMap())
    }
  }

  fun prepareCognitoSessionResult(@NonNull flutterResult: Result, @NonNull result: AWSCognitoAuthSession) {
    val session = FlutterFetchCognitoAuthSessionResult(result)
    Handler (Looper.getMainLooper()).post {
      flutterResult.success(session.toValueMap())
    }
  }

  private fun prepareUserResult(@NonNull flutterResult: Result, @NonNull user: AuthUser) {
    val preppedUser = FlutterAuthUser(user)
    Handler (Looper.getMainLooper()).post {
      flutterResult.success(preppedUser.toValueMap())
    }
  }

  @Suppress("UNUSED_PARAMETER")
  private fun prepareCognitoSessionFailure(@NonNull flutterResult: Result, @NonNull result: AWSCognitoAuthSession) {
    prepareError(flutterResult, AuthException.SignedOutException(), FlutterAuthFailureMessage.FETCH_SESSION.toString())
  }

  private fun prepareSessionResult(@NonNull flutterResult: Result, @NonNull result: AuthSession) {
    val session = FlutterFetchAuthSessionResult(result)
    Handler (Looper.getMainLooper()).post {
      flutterResult.success(session.toValueMap())
    }
  }
}

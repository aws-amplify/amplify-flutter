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
import com.amazonaws.amplify.amplify_auth_cognito.types.*
import com.amazonaws.AmazonClientException
import com.amazonaws.AmazonServiceException
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterAuthFailureMessage
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterSignUpRequest
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterSignUpResult
import com.amazonaws.mobileconnectors.cognitoidentityprovider.exceptions.CognitoCodeExpiredException
import com.amazonaws.services.cognitoidentityprovider.model.*
import com.amplifyframework.auth.AuthChannelEventName
import com.amplifyframework.auth.AuthException
import com.amplifyframework.auth.AuthSession
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
  var gson = Gson()
  private var mainActivity: Activity? = null
  var eventChannel: EventChannel? = null
  var eventMessenger: BinaryMessenger? = null

  override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    channel = MethodChannel(flutterPluginBinding.getFlutterEngine().getDartExecutor(), "com.amazonaws.amplify/auth_cognito")
    channel.setMethodCallHandler(this);
    context = flutterPluginBinding.applicationContext;
    eventMessenger = flutterPluginBinding.getBinaryMessenger();
    Amplify.addPlugin(AWSCognitoAuthPlugin())
    Log.i("Amplify Flutter", "Added AuthCognito plugin")
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
      "changePassword" -> onChangePassword(result, data)
      "resetPassword" -> onResetPassword(result, data)
      "confirmPassword" -> onConfirmPassword(result, data)
      "fetchAuthSession" -> onFetchAuthSession(result, data)
      else -> result.notImplemented()
    }
  }

  override fun onAttachedToActivity(binding: ActivityPluginBinding) {
    this.mainActivity = binding.activity
    eventChannel = EventChannel(eventMessenger, "com.amazonaws.amplify/auth_cognito_events")
    eventChannel!!.setStreamHandler(object : EventChannel.StreamHandler {
      override fun onListen(listener: Any, eventSink: EventChannel.EventSink) {
        Amplify.Hub.subscribe(HubChannel.AUTH
        ) { hubEvent: HubEvent<*> ->
          if (hubEvent.name == InitializationStatus.SUCCEEDED.toString()) {
            Log.i("AuthCognito", "Auth successfully initialized")
          } else if (hubEvent.name == InitializationStatus.FAILED.toString()) {
            Log.i("AuthCognito", "Auth failed to succeed")
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
              else -> Log.i("AuthCognito", "unknown")
            }
          }
        }
      }

      override fun onCancel(listener: Any) {}
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

      var req = FlutterSignUpRequest(request as HashMap<String, *>);
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
      var req = FlutterConfirmSignUpRequest(request as HashMap<String, *>);
      try {
        Amplify.Auth.confirmSignUp(
                req.userKey,
                req.confirmationCode,
                { result -> this.mainActivity?.runOnUiThread({ prepareSignUpResult(flutterResult, result) }) },
                { error -> this.mainActivity?.runOnUiThread({ prepareError(flutterResult, error, FlutterAuthFailureMessage.CONFIRM_SIGNUP.toString()) }) }
        )
      } catch (e: Exception) {
        prepareError(flutterResult, e, FlutterAuthFailureMessage.CONFIRM_SIGNUP.toString())
      }
    }  else {
      prepareError(flutterResult, java.lang.Exception(FlutterAuthFailureMessage.MALFORMED.toString()), FlutterAuthFailureMessage.MALFORMED.toString())
    }
  }

  private fun onSignIn (@NonNull flutterResult: Result, @NonNull request: HashMap<String, *>) {
    if (FlutterSignInRequest.validate(request)) {
      var req = FlutterSignInRequest(request as HashMap<String, *>)
      try {
        Amplify.Auth.signIn(
                req.username,
                req.password,
                { result -> this.mainActivity?.runOnUiThread({ prepareSignInResult(flutterResult, result) }) },
                { error -> this.mainActivity?.runOnUiThread({ prepareError(flutterResult, error, FlutterAuthFailureMessage.SIGNIN.toString()) }) }
        );
      } catch (e: Exception) {
        prepareError(flutterResult, e, FlutterAuthFailureMessage.SIGNIN.toString())
      }
    } else {
      prepareError(flutterResult, java.lang.Exception("Amplify SignIn request is malformed"), FlutterAuthFailureMessage.MALFORMED.toString())
    }
  }

  private fun onConfirmSignIn (@NonNull flutterResult: Result, @NonNull request: HashMap<String, *>) {
    if (FlutterConfirmSignInRequest.validate(request)) {
      var req = FlutterConfirmSignInRequest(request as HashMap<String, *>)
      try {
        Amplify.Auth.confirmSignIn(
                req.confirmationCode,
                { result -> this.mainActivity?.runOnUiThread({ prepareSignInResult(flutterResult, result)}) },
                { error -> this.mainActivity?.runOnUiThread({ prepareError(flutterResult, error, FlutterAuthFailureMessage.CONFIRM_SIGNIN.toString())}) }
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
          {  -> this.mainActivity?.runOnUiThread({ prepareSignOutResult(flutterResult)}) },
          { error -> this.mainActivity?.runOnUiThread({ prepareError(flutterResult, error, FlutterAuthFailureMessage.SIGNOUT.toString())}) }
      );
    } catch(e: Exception) {
      prepareError(flutterResult, e, FlutterAuthFailureMessage.SIGNOUT.toString())
    }
  }

  private fun onChangePassword (@NonNull flutterResult: Result, @NonNull request: HashMap<String, *>) {
    if (FlutterChangePasswordRequest.validate(request)) {
      var req = FlutterChangePasswordRequest(request as HashMap<String, *>)
      try {
        Amplify.Auth.updatePassword(
                req.oldPassword,
                req.newPassword,
                {  -> this.mainActivity?.runOnUiThread({ prepareChangePasswordResponse(flutterResult)}) },
                { error -> this.mainActivity?.runOnUiThread({ prepareError(flutterResult, error, FlutterAuthFailureMessage.CHANGE_PASSWORD.toString())}) }
        );
      } catch(e: Exception) {
        prepareError(flutterResult, e, FlutterAuthFailureMessage.CHANGE_PASSWORD.toString())
      }
    } else {
      prepareError(flutterResult, java.lang.Exception(FlutterAuthFailureMessage.MALFORMED.toString()), FlutterAuthFailureMessage.MALFORMED.toString())
    }
  }

  private fun onResetPassword (@NonNull flutterResult: Result, @NonNull request: HashMap<String, *>?) {
    if (FlutterResetPasswordRequest.validate(request)) {
      var req = FlutterResetPasswordRequest(request as HashMap<String, *>)
      try {
        Amplify.Auth.resetPassword(
                req.userKey,
                { result -> this.mainActivity?.runOnUiThread({ prepareResetPasswordResult(flutterResult, result)}) },
                { error -> this.mainActivity?.runOnUiThread({ prepareError(flutterResult, error, FlutterAuthFailureMessage.RESET_PASSWORD.toString())}) }
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
      var req = FlutterConfirmPasswordRequest(request as HashMap<String, *>)
      try {
        Amplify.Auth.confirmResetPassword(
                req.newPassword,
                req.confirmationCode,
                {  -> this.mainActivity?.runOnUiThread({ prepareChangePasswordResponse(flutterResult)}) },
                { error -> this.mainActivity?.runOnUiThread({ prepareError(flutterResult, error, FlutterAuthFailureMessage.CONFIRM_PASSWORD.toString())}) }
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
    var req = FlutterFetchAuthSessionRequest(request as HashMap<String, *>)
    try {
      Amplify.Auth.fetchAuthSession(
              { result ->
                if (req.getAWSCredentials) {
                  val cognitoAuthSession = result as AWSCognitoAuthSession
                  when (cognitoAuthSession.identityId.type) {
                    AuthSessionResult.Type.SUCCESS -> this.mainActivity?.runOnUiThread({ prepareCognitoSessionResult(flutterResult, cognitoAuthSession)})
                    AuthSessionResult.Type.FAILURE -> this.mainActivity?.runOnUiThread({ prepareCognitoSessionFailure(flutterResult, cognitoAuthSession)})
                  }
                } else {
                  val session = result as AuthSession;
                  this.mainActivity?.runOnUiThread({ prepareSessionResult(flutterResult, session)})
                }
              },
              { error -> prepareError(flutterResult, error, FlutterAuthFailureMessage.FETCH_SESSION.toString()) }
      )
    } catch(e: Exception) {
      prepareError(flutterResult, e, FlutterAuthFailureMessage.FETCH_SESSION.toString())
    }

  }

  private fun prepareError(@NonNull flutterResult: Result, @NonNull error: Exception, @NonNull msg: String) {
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
    flutterResult.error("AmplifyException", msg, errorMap)
  }

  fun prepareSignUpResult(@NonNull flutterResult: Result, @NonNull result: AuthSignUpResult) {
    var signUpData = FlutterSignUpResult(result);
    flutterResult.success(signUpData.serializeToMap());
  }

  private fun prepareSignInResult(@NonNull flutterResult: Result, @NonNull result: AuthSignInResult) {
    var signInData = FlutterSignInResult(result);
    flutterResult.success(signInData.serializeToMap());
  }

  private fun prepareSignOutResult(@NonNull flutterResult: Result) {
    var parsedResult = mutableMapOf<String, Any>();
    flutterResult.success(parsedResult);
  }

  private fun prepareChangePasswordResponse(@NonNull flutterResult: Result) {
    var parsedResult = mutableMapOf<String, Any>();
    flutterResult.success(parsedResult);
  }

  private fun prepareResetPasswordResult(@NonNull flutterResult: Result, @NonNull result: AuthResetPasswordResult) {
    var resetData = FlutterResetPasswordResult(result);
    flutterResult.success(resetData.serializeToMap());
  }

  private fun prepareCognitoSessionResult(@NonNull flutterResult: Result, @NonNull result: AWSCognitoAuthSession) {
    var session = FlutterFetchCognitoAuthSessionResult(result);
    flutterResult.success(session.serializeToMap());
  }

  private fun prepareCognitoSessionFailure(@NonNull flutterResult: Result, @NonNull result: AWSCognitoAuthSession) {
    prepareError(flutterResult, result.awsCredentials.error as AuthException, FlutterAuthFailureMessage.FETCH_SESSION.toString())
  }

  private fun prepareSessionResult(@NonNull flutterResult: Result, @NonNull result: AuthSession) {
    var session = FlutterFetchAuthSessionResult(result);
    flutterResult.success(session.serializeToMap());
  }


  //convert a data class to a map
  fun <T> T.serializeToMap(): Map<String, Any> {
    return convert()
  }

  //convert a map to a data class
  inline fun <reified T> Map<String, Any>.toDataClass(): T {
    return convert()
  }

  //convert an object of type I to type O
  inline fun <I, reified O> I.convert(): O {
    val json = gson.toJson(this)
    return gson.fromJson(json, object : TypeToken<O>() {}.type)
  }
}
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
import android.content.Intent
import android.os.Handler
import android.os.Looper
import androidx.annotation.NonNull
import androidx.annotation.VisibleForTesting
import com.amazonaws.AmazonClientException
import com.amazonaws.AmazonServiceException
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
import com.amazonaws.amplify.amplify_core.exception.ExceptionUtil.Companion.createSerializedError
import com.amazonaws.amplify.amplify_core.exception.ExceptionUtil.Companion.postExceptionToFlutterChannel
import com.amazonaws.mobileconnectors.cognitoidentityprovider.exceptions.CognitoCodeExpiredException
import com.amazonaws.services.cognitoidentityprovider.model.*
import com.amplifyframework.AmplifyException
import com.amplifyframework.auth.AuthException
import com.amplifyframework.auth.AuthProvider
import com.amplifyframework.auth.AuthSession
import com.amplifyframework.auth.AuthUser
import com.amplifyframework.auth.cognito.AWSCognitoAuthPlugin
import com.amplifyframework.auth.cognito.AWSCognitoAuthSession
import com.amplifyframework.auth.result.AuthResetPasswordResult
import com.amplifyframework.auth.result.AuthSessionResult
import com.amplifyframework.auth.result.AuthSignInResult
import com.amplifyframework.auth.result.AuthSignUpResult
import com.amplifyframework.core.Amplify
import com.amplifyframework.hub.SubscriptionToken
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.PluginRegistry
import io.flutter.plugin.common.BinaryMessenger


/** AuthCognito */
public class AuthCognito : FlutterPlugin, ActivityAware, MethodCallHandler, PluginRegistry.ActivityResultListener {

  private lateinit var channel: MethodChannel
  private lateinit var context: Context
  private lateinit var mainActivity: Activity
  private val LOG = Amplify.Logging.forNamespace("amplify:flutter:auth_cognito")
  lateinit var hubEventChannel: EventChannel
  private val authCognitoHubEventStreamHandler: AuthCognitoHubEventStreamHandler
  var eventMessenger: BinaryMessenger? = null
  private lateinit var token: SubscriptionToken
  private val unrecognizedErrorMessage: String = "An unrecognized error has occurred."
  private val unrecognizedRecoverySuggestion: String= "Check your Android logs for additional information."

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
    channel.setMethodCallHandler(this);
    context = flutterPluginBinding.applicationContext;
    eventMessenger = flutterPluginBinding.getBinaryMessenger();
    hubEventChannel = EventChannel(flutterPluginBinding.binaryMessenger,
                                  "com.amazonaws.amplify/auth_cognito_events")
    hubEventChannel.setStreamHandler(authCognitoHubEventStreamHandler)
    Amplify.addPlugin(AWSCognitoAuthPlugin())
    LOG.info("Added AuthCognito plugin")
  }

  override fun onAttachedToActivity(binding: ActivityPluginBinding) {
    activityBinding = binding;
    mainActivity = binding.activity;
    binding.addActivityResultListener(this)
  }

  override fun onDetachedFromActivityForConfigChanges() {}
  override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {}
  override fun onDetachedFromActivity() {}

  override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?): Boolean {
      if (requestCode == AWSCognitoAuthPlugin.WEB_UI_SIGN_IN_ACTIVITY_CODE) {
        Amplify.Auth.handleWebUISignInResponse(data)
        return true
      }  else {
        return false
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
      return prepareError(result, "AmplifyCastingException", createSerializedError(
              "Failed to cast parameters sent over the amplify_auth_cognito MethodChannel.",
              "Check the parameters send in your method call.",
              e.toString()))
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

  override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }

  private fun onSignUp (@NonNull flutterResult: Result, @NonNull request: HashMap<String, *>) {
    var errorSent: Boolean = false
    try {
      FlutterSignUpRequest.validate(request)
      var req = FlutterSignUpRequest(request);

      Amplify.Auth.signUp(
              req.username,
              req.password,
              req.options,
              { result -> prepareSignUpResult(flutterResult, result)},
              { error ->
                if (!errorSent) {
                  errorSent = true
                  prepareError(flutterResult, error)
                }
                LOG.error("AmplifyAuthException", error)
              }
      );
    } catch(e: AmplifyException) {
      prepareError(flutterResult, e)
    } catch (e: Exception) {
      prepareUnknownError(flutterResult, e.toString())
    }
  }

  private fun onConfirmSignUp(@NonNull flutterResult: Result, @NonNull request:  HashMap<String, *>){
    try {
      FlutterConfirmSignUpRequest.validate(request)
      var req = FlutterConfirmSignUpRequest(request)
      Amplify.Auth.confirmSignUp(
              req.username,
              req.confirmationCode,
              { result -> prepareSignUpResult(flutterResult, result)},
              { error -> prepareError(flutterResult, error)}
      )
    } catch (e: AmplifyException) {
      prepareError(flutterResult, e)
    } catch (e: Exception) {
      prepareUnknownError(flutterResult, e.toString())
    }
  }

  private fun onResendSignUpCode(@NonNull flutterResult: Result, @NonNull request:  HashMap<String, *>){
      try {
        FlutterResendSignUpCodeRequest.validate(request)
        var req = FlutterResendSignUpCodeRequest(request as HashMap<String, *>);
        Amplify.Auth.resendSignUpCode(
                req.username,
                { result -> prepareResendSignUpCodeResult(flutterResult, result) },
                { error -> prepareError(flutterResult, error)}
        )
      } catch (e: AmplifyException) {
        prepareError(flutterResult, e)
      } catch (e: Exception) {
        prepareUnknownError(flutterResult, e.toString())
      }
  }

  private fun onSignIn (@NonNull flutterResult: Result, @NonNull request: HashMap<String, *>) {
      try {
        FlutterSignInRequest.validate(request)
        var req = FlutterSignInRequest(request)
        Amplify.Auth.signIn(
                req.username,
                req.password,
                { result -> prepareSignInResult(flutterResult, result) },
                { error -> prepareError(flutterResult, error)}
        );
      } catch (e: AmplifyException) {
        prepareError(flutterResult, e)
      } catch (e: Exception) {
        prepareUnknownError(flutterResult, e.toString())
      }
  }

  private fun onConfirmSignIn (@NonNull flutterResult: Result, @NonNull request: HashMap<String, *>) {
      try {
        FlutterConfirmSignInRequest.validate(request)
        var req = FlutterConfirmSignInRequest(request)
        Amplify.Auth.confirmSignIn(
                req.confirmationCode,
                { result -> prepareSignInResult(flutterResult, result)},
                { error -> prepareError(flutterResult, error)}
        );
      } catch (e: AmplifyException) {
        prepareError(flutterResult, e)
      } catch (e: Exception) {
        prepareUnknownError(flutterResult, e.toString())
      }
  }

  private fun onSignOut (@NonNull flutterResult: Result, @NonNull request: HashMap<String, *>) {

    var req = FlutterSignOutRequest(request)
    try {
      Amplify.Auth.signOut(
              req.signOutOptions,
              {  -> prepareSignOutResult(flutterResult)},
              { error -> prepareError(flutterResult, error)}
      );
    } catch (e: AmplifyException) {
      prepareError(flutterResult, e)
    } catch (e: Exception) {
      prepareUnknownError(flutterResult, e.toString())
    }
  }

  private fun onUpdatePassword (@NonNull flutterResult: Result, @NonNull request: HashMap<String, *>) {
      try {
        FlutterUpdatePasswordRequest.validate(request)
        var req = FlutterUpdatePasswordRequest(request)
        Amplify.Auth.updatePassword(
                req.oldPassword,
                req.newPassword,
                {  -> prepareUpdatePasswordResult(flutterResult)},
                { error -> prepareError(flutterResult, error)}
        );
      } catch (e: AmplifyException) {
        prepareError(flutterResult, e)
      } catch (e: Exception) {
        prepareUnknownError(flutterResult, e.toString())
      }
  }

  private fun onResetPassword (@NonNull flutterResult: Result, @NonNull request: HashMap<String, *>) {
      try {
        FlutterResetPasswordRequest.validate(request)
        var req = FlutterResetPasswordRequest(request)
        Amplify.Auth.resetPassword(
                req.username,
                { result -> prepareResetPasswordResult(flutterResult, result)},
                { error -> prepareError(flutterResult, error) }
        );
      } catch (e: AmplifyException) {
        prepareError(flutterResult, e)
      } catch (e: Exception) {
        prepareUnknownError(flutterResult, e.toString())
      }
  }

  private fun onConfirmPassword (@NonNull flutterResult: Result, @NonNull request: HashMap<String, *>) {
      try {
        FlutterConfirmPasswordRequest.validate(request)
        var req = FlutterConfirmPasswordRequest(request)
        Amplify.Auth.confirmResetPassword(
                req.newPassword,
                req.confirmationCode,
                {  -> prepareUpdatePasswordResult(flutterResult)},
                { error -> prepareError(flutterResult, error)}
        );
      } catch (e: AmplifyException) {
        prepareError(flutterResult, e)
      } catch (e: Exception) {
        prepareUnknownError(flutterResult, e.toString())
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
              { error -> prepareError(flutterResult, error) }
      )
    } catch (e: AmplifyException) {
      prepareError(flutterResult, e)
    } catch (e: Exception) {
      prepareUnknownError(flutterResult, e.toString())
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
    } catch (e: AmplifyException) {
      prepareError(flutterResult, e)
    } catch (e: Exception) {
      prepareUnknownError(flutterResult, e.toString())
    }
  }

  fun prepareError(@NonNull flutterResult: Result, @NonNull error: AmplifyException ) {
    var errorCode: String = "UnrecognizedAuthError"
    if (error is AuthException) {
      when (error) {
        is AuthException.AliasExistsException -> errorCode = "AliasExistsException"
        is AuthException.CodeDeliveryFailureException -> errorCode = "CodeDeliveryFailureException"
        is AuthException.CodeExpiredException -> errorCode = "CodeExpiredException"
        is AuthException.CodeMismatchException -> errorCode = "CodeMismatchException"
        is AuthException.FailedAttemptsLimitExceededException -> errorCode = "FailedAttemptsLimitExceededException"
        is AuthException.InvalidAccountTypeException -> errorCode = "InvalidAccountTypeException"
        is AuthException.InvalidParameterException -> errorCode = "InvalidParameterException"
        is AuthException.InvalidPasswordException -> errorCode = "InvalidPasswordException"
        is AuthException.LimitExceededException -> errorCode = "LimitExceededException"
        is AuthException.PasswordResetRequiredException -> errorCode = "PasswordResetRequiredException"
        is AuthException.ResourceNotFoundException -> errorCode = "ResourceNotFoundException"
        is AuthException.SessionExpiredException ->  errorCode = "SessionExpiredException"
        is AuthException.SessionUnavailableOfflineException ->  errorCode = "SessionUnavailableOfflineException"
        is AuthException.SessionUnavailableServiceException -> errorCode = "SessionUnavailableServiceException"
        is AuthException.SignedOutException -> errorCode = "SignedOutException"
        is AuthException.UnknownException -> errorCode = "UnknownException"
        is AuthException.UserCancelledException -> errorCode = "UserCancelledException"
        is AuthException.UsernameExistsException -> errorCode = "UsernameExistsException"
        is AuthException.UserNotConfirmedException -> errorCode = "UserNotConfirmedException"
        is AuthException.UserNotFoundException -> errorCode = "UserNotFoundException"
        else  -> when (error.cause) {
          is CognitoCodeExpiredException -> errorCode = "CognitoCodeExpiredException"
          is InternalErrorException -> errorCode = "InternalErrorException"
          is InvalidLambdaResponseException -> errorCode = "LambdaException"
          is MFAMethodNotFoundException -> errorCode = "MFAMethodNotFoundException"
          is NotAuthorizedException -> errorCode = "NotAuthorizedException"
          is SoftwareTokenMFANotFoundException -> errorCode = "SoftwareTokenMFANotFoundException"
          is TooManyRequestsException -> errorCode = "TooManyRequestsException"
          is UnexpectedLambdaException -> errorCode = "LambdaException"
          is UserLambdaValidationException -> errorCode = "LambdaException"
          is TooManyFailedAttemptsException -> errorCode = "TooManyFailedAttemptsException"
          is AmazonClientException -> errorCode = "AmazonClientException"
          is AmazonServiceException ->  errorCode = "AmazonServiceException"
        }
      }
      Handler (Looper.getMainLooper()).post {
        postExceptionToFlutterChannel(flutterResult, errorCode, createSerializedError(error))
      }
    } else {
      Handler (Looper.getMainLooper()).post {
        postExceptionToFlutterChannel(flutterResult, "UnrecognizedAuthError", createSerializedError(error))
      }
    }
    LOG.error(errorCode, error)

  }

  fun prepareError(@NonNull flutterResult: Result, @NonNull errorCode: String, @NonNull preSerializedError: Map<String, Any?> ) {
    Handler (Looper.getMainLooper()).post {
      postExceptionToFlutterChannel(flutterResult, errorCode, preSerializedError)
    }
  }

  fun prepareUnknownError(@NonNull flutterResult: Result, @NonNull underlyingError: String) {
    prepareError(flutterResult, "AmplifyAuthException", createSerializedError(
            unrecognizedErrorMessage,
            unrecognizedRecoverySuggestion,
            underlyingError))
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
    prepareError(flutterResult, AuthException.SignedOutException())
  }

  fun prepareSessionResult(@NonNull flutterResult: Result, @NonNull result: AuthSession) {
    var session = FlutterFetchAuthSessionResult(result);
    Handler (Looper.getMainLooper()).post {
      flutterResult.success(session.toValueMap());
    }
  }
}
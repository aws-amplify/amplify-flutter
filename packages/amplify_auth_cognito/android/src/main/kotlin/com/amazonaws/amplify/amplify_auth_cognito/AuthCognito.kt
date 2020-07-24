package com.amazonaws.amplify.amplify_auth_cognito

import FlutterConfirmSignInRequest
import FlutterSignInRequest
import FlutterSignOutRequest
import android.app.Activity
import android.content.Context
import android.util.Log
import androidx.annotation.NonNull
import androidx.annotation.Nullable
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterConfirmSignUpRequest
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterSignUpRequest
import com.amazonaws.mobileconnectors.cognitoidentityprovider.exceptions.CognitoInternalErrorException
import com.amazonaws.services.cognitoidentityprovider.model.*
import com.amplifyframework.auth.AuthCodeDeliveryDetails
import com.amplifyframework.auth.AuthException
import com.amplifyframework.auth.cognito.AWSCognitoAuthPlugin
import com.amplifyframework.auth.result.AuthSignInResult
import com.amplifyframework.auth.result.AuthSignUpResult
import com.amplifyframework.auth.result.step.AuthNextSignInStep
import com.amplifyframework.auth.result.step.AuthSignInStep
import com.amplifyframework.core.Amplify
import com.google.gson.Gson
import com.google.gson.reflect.TypeToken
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
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
  private var signUpFailure = "Amplify SignUp Failed"
  private var signInFailure = "Amplify SignIn Failed"
  private var signOutFailure = "Amplify SignOut Failed"


  override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    channel = MethodChannel(flutterPluginBinding.getFlutterEngine().getDartExecutor(), "com.amazonaws.amplify/auth_cognito")
    channel.setMethodCallHandler(this);
    context = flutterPluginBinding.applicationContext;
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

  override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
    when (call.method) {
      "signUp" ->
        try {
          onSignUp(result, (call.arguments as HashMap<String, *>).get("data") as HashMap<String, *>)
        }
        catch (e: Exception) {
          result.error("AmplifyException", "Error casting signUp parameter map", e.message )
        }
      "confirmSignUp" ->
        try {
          onConfirmSignUp(result, (call.arguments as HashMap<String, String>).get("data") as HashMap<String, String>)
        }        catch (e: Exception) {
          result.error("AmplifyException", "Error casting confirmSignUp parameter map", e.message )
        }
      "signIn" ->
        try {
          onSignIn(result, (call.arguments as HashMap<String, String>).get("data") as HashMap<String, String>)
        } catch (e: Exception) {
          result.error("AmplifyException", "Error casting signIn parameter map", e.message )
        }
      "confirmSignIn" ->
        try {
          onConfirmSignIn(result, (call.arguments as HashMap<String, String>).get("data") as HashMap<String, String>)
        } catch (e: Exception) {
          result.error("AmplifyException", "Error casting confirmSignIn parameter map", e.message )
        }
      "signOut" ->
        try {
          var args: HashMap<String, String> = hashMapOf<String, String>();
          if ((call.arguments as HashMap<String, String>).get("data") != null) {
            args = (call.arguments as HashMap<String, String>).get("data") as HashMap<String, String>
          }
          onSignOut(result, args);
        } catch (e: Exception) {
          result.error("AmplifyException", "Error casting signOut parameter map", e.message )
        }
        else -> result.notImplemented()
      }
    }

  override fun onAttachedToActivity(binding: ActivityPluginBinding) {
    this.mainActivity = binding.activity
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
    var req = FlutterSignUpRequest(request);
    try {
      Amplify.Auth.signUp(
        req.username,
        req.password,
        req.userAttributes,
          { result -> this.mainActivity?.runOnUiThread({ prepareSignUpResult(flutterResult, result)}) },
          { error -> this.mainActivity?.runOnUiThread({ prepareError(flutterResult, error, signUpFailure, error.localizedMessage)}) }
      );
    } catch(e: Exception) {
      prepareError(flutterResult, e, signUpFailure, "Error sending SignUpRequest")
    }
  }

  private fun onConfirmSignUp(@NonNull flutterResult: Result, @NonNull request:  HashMap<String, *>){
    var req = FlutterConfirmSignUpRequest(request);
    Amplify.Auth.confirmSignUp(
      req.userKey,
      req.confirmationCode,
        { result -> this.mainActivity?.runOnUiThread({ prepareSignUpResult(flutterResult, result)}) },
        { error -> this.mainActivity?.runOnUiThread({ prepareError(flutterResult, error, signUpFailure, error.localizedMessage)}) }
    )
  }

  private fun onSignIn (@NonNull flutterResult: Result, @NonNull request: HashMap<String, *>) {
    var req = FlutterSignInRequest(request)
    try {
      Amplify.Auth.signIn(
        req.username,
        req.password,
          { result -> this.mainActivity?.runOnUiThread({ prepareSignInResult(flutterResult, result)}) },
          { error -> this.mainActivity?.runOnUiThread({ prepareError(flutterResult, error, signInFailure, error.localizedMessage)}) }
      );
    } catch(e: Exception) {
      prepareError(flutterResult, e, signUpFailure, "Error sending SignUpRequest")
    }
  }

  private fun onConfirmSignIn (@NonNull flutterResult: Result, @NonNull request: HashMap<String, *>) {
    var req = FlutterConfirmSignInRequest(request)
    try {
      Amplify.Auth.confirmSignIn(
        req.confirmationCode,
          { result -> this.mainActivity?.runOnUiThread({ prepareSignInResult(flutterResult, result)}) },
          { error -> this.mainActivity?.runOnUiThread({ prepareError(flutterResult, error, signInFailure, error.localizedMessage)}) }
      );
    } catch(e: Exception) {
      prepareError(flutterResult, e, signUpFailure, "Error sending SignUpRequest")
    }
  }

  private fun onSignOut (@NonNull flutterResult: Result, @NonNull request: HashMap<String, *>) {
    var req = FlutterSignOutRequest(request)
    try {
      Amplify.Auth.signOut(
        req.signOutOptions,
          {  -> this.mainActivity?.runOnUiThread({ prepareSignOutResult(flutterResult)}) },
          { error -> this.mainActivity?.runOnUiThread({ prepareError(flutterResult, error, signOutFailure, error.localizedMessage)}) }
      );
    } catch(e: Exception) {
      prepareError(flutterResult, e, signUpFailure, "Error sending SignUpRequest")
    }
  }

  
  private fun prepareError(@NonNull flutterResult: Result, @NonNull error: Exception, @NonNull msg: String, @NonNull detail: String) {
    System.out.println("${msg}: ${error}")
    var errorMap: HashMap<String, Any> = HashMap();

    if (error is AuthException) {
      if (error.cause is InvalidParameterException) {
        errorMap.put("INVALID_PARAMETER", (error.cause as InvalidParameterException).errorMessage)
      } else if (error.cause is UsernameExistsException) {
        errorMap.put("USERNAME_EXISTS", (error.cause as UsernameExistsException).errorMessage)
      } else if (error.cause is AliasExistsException) {
        errorMap.put("ALIAS_EXISTS", (error.cause as UsernameExistsException).errorMessage)
      } else if (error.cause is CodeDeliveryFailureException) {
        errorMap.put("CODE_DELIVERY_FAILURE", (error.cause as CodeDeliveryFailureException).errorMessage)
      } else if (error.cause is InternalErrorException) {
        errorMap.put("INTERNAL_ERROR", (error.cause as InternalErrorException).errorMessage)
      } else if (error.cause is CognitoInternalErrorException) {
        errorMap.put("INTERNAL_ERROR", (error.cause as CognitoInternalErrorException).localizedMessage)
      } else if (error.cause is InvalidLambdaResponseException) {
        errorMap.put("INVALID_LAMBDA_RESPONSE", (error.cause as InvalidLambdaResponseException).errorMessage)
      } else if (error.cause is InvalidPasswordException) {
        errorMap.put("INVALID_PASSWORD", (error.cause as InvalidPasswordException).errorMessage)
      } else if (error.cause is NotAuthorizedException) {
        errorMap.put("NOT_AUTHORIZED", (error.cause as NotAuthorizedException).errorMessage)
      } else if (error.cause is ResourceNotFoundException) {
        errorMap.put("RESOURCE_NOT_FOUND", (error.cause as ResourceNotFoundException).errorMessage)
      } else if (error.cause is TooManyRequestsException) {
        errorMap.put("TOO_MANY_REQUESTS", (error.cause as TooManyRequestsException).errorMessage)
      } else if (error.cause is UnexpectedLambdaException) {
        errorMap.put("UNEXPECTED_LAMBDA", (error.cause as UnexpectedLambdaException).errorMessage)
      } else if (error.cause is UserLambdaValidationException) {
        errorMap.put("USER_LAMBDA_VALIDATION", (error.cause as UserLambdaValidationException).errorMessage)
      } else if (error.cause is TooManyFailedAttemptsException) {
        errorMap.put("TOO_MANY_FAILED_REQUESTS", (error.cause as TooManyFailedAttemptsException).errorMessage)
      } else if (error.cause is PasswordResetRequiredException) {
        var skeletonNextStep = AuthNextSignInStep(AuthSignInStep.RESET_PASSWORD, emptyMap<String, String>(), AuthCodeDeliveryDetails("", AuthCodeDeliveryDetails.DeliveryMedium.UNKNOWN, "")  )
        var skeletonResult = AuthSignInResult(false, skeletonNextStep);
        return prepareSignInResult(flutterResult, skeletonResult);
      } else {
        errorMap.put("UNKNOWN", "Unknown error registering user.")
      }
    }
    flutterResult.error("AmplifyException", msg, errorMap)
  }


  private fun prepareSignUpResult(@NonNull flutterResult: Result, @NonNull result: AuthSignUpResult) {
    var parsedResult = mutableMapOf<String, Any>();
    parsedResult["signUpState"] = result.nextStep.signUpStep.toString();
    parsedResult["providerData"] = result.serializeToMap()
    ;
    flutterResult.success(parsedResult);
  }

  private fun prepareSignInResult(@NonNull flutterResult: Result, @NonNull result: AuthSignInResult) {
    var parsedResult = mutableMapOf<String, Any>();
    parsedResult["signInState"] = result.nextStep.signInStep.toString();
    parsedResult["providerData"] = result.serializeToMap()
    ;
    flutterResult.success(parsedResult);
  }

  private fun prepareSignOutResult(@NonNull flutterResult: Result) {
    var parsedResult = mutableMapOf<String, Any>();
    parsedResult["signInState"] = "DONE"
    parsedResult["providerData"] = emptyMap<String, Any>()
    ;
    flutterResult.success(parsedResult);
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

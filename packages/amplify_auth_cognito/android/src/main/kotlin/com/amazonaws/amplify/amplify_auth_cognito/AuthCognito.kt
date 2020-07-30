package com.amazonaws.amplify.amplify_auth_cognito

import android.app.Activity
import android.content.Context
import android.util.Log
import androidx.annotation.NonNull
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterAuthFailureMessage
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterSignUpRequest
import com.amazonaws.amplify.amplify_auth_cognito.types.FlutterSignUpResult
import com.amazonaws.services.cognitoidentityprovider.model.*
import com.amplifyframework.auth.AuthException
import com.amplifyframework.auth.cognito.AWSCognitoAuthPlugin
import com.amplifyframework.auth.result.AuthSignUpResult
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
import java.lang.reflect.Method

/** AuthCognito */
public class AuthCognito : FlutterPlugin, ActivityAware, MethodCallHandler {

  private lateinit var channel: MethodChannel
  private lateinit var context: Context
  var gson = Gson()
  private var mainActivity: Activity? = null

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
          prepareError("AmplifyException", e, FlutterAuthFailureMessage.CASTING.toString() )
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
    if (FlutterSignUpRequest.validate(request)) {
      var req = FlutterSignUpRequest(request);
      try {
        Amplify.Auth.signUp(
                req.username,
                req.password,
                req.options,
                { result -> this.mainActivity?.runOnUiThread({ prepareSignUpResult(flutterResult, result)}) },
                { error -> this.mainActivity?.runOnUiThread({ prepareError(flutterResult, error, FlutterAuthFailureMessage.SIGNUP.toString(), error.localizedMessage)}) }
        );
      } catch(e: Exception) {
        prepareError(flutterResult, e, FlutterAuthFailureMessage.SIGNUP.toString())
      }
    } else {
      prepareError(flutterResult, java.lang.Exception(FlutterAuthFailureMessage.MALFORMED.toString()), FlutterAuthFailureMessage.MALFORMED.toString())
    }
  }

  private fun prepareError(@NonNull flutterResult: Result, @NonNull error: Exception, @NonNull msg: String) {
    var errorMap: HashMap<String, Any> = HashMap();
    if (error is AuthException) {

      when (error.cause) {
        is InvalidParameterException -> errorMap.put("INVALID_PARAMETER", (error.cause as InvalidParameterException).errorMessage)
        is UsernameExistsException -> errorMap.put("USERNAME_EXISTS", (error.cause as UsernameExistsException).errorMessage)
        is AliasExistsException -> errorMap.put("ALIAS_EXISTS", (error.cause as AliasExistsException).errorMessage)
        is CodeDeliveryFailureException -> errorMap.put("CODE_DELIVERY_FAILURE", (error.cause as CodeDeliveryFailureException).errorMessage)
        is InternalErrorException -> errorMap.put("INTERNAL_ERROR", (error.cause as InternalErrorException).errorMessage)
        is InvalidLambdaResponseException -> errorMap.put("INVALID_LAMBDA_RESPONSE", (error.cause as InvalidLambdaResponseException).errorMessage)
        is InvalidPasswordException -> errorMap.put("INVALID_PASSWORD", (error.cause as InvalidPasswordException).errorMessage)
        is NotAuthorizedException -> errorMap.put("NOT_AUTHORIZED", (error.cause as NotAuthorizedException).errorMessage)
        is ResourceNotFoundException -> errorMap.put("RESOURCE_NOT_FOUND", (error.cause as ResourceNotFoundException).errorMessage)
        is TooManyRequestsException -> errorMap.put("TOO_MANY_REQUESTS", (error.cause as TooManyRequestsException).errorMessage)
        is UnexpectedLambdaException -> errorMap.put("UNEXPECTED_LAMBDA", (error.cause as UnexpectedLambdaException).errorMessage)
        is UserLambdaValidationException -> errorMap.put("USER_LAMBDA_VALIDATION", (error.cause as UserLambdaValidationException).errorMessage)
        is TooManyFailedAttemptsException -> errorMap.put("TOO_MANY_FAILED_REQUESTS", (error.cause as TooManyFailedAttemptsException).errorMessage)
        else -> errorMap.put("UNKNOWN", "Unknown Auth Error.")
      }
    }
    var localizedMessage: String = error.localizedMessage ?: "";
    var errorString: String = error.toString();
    var recoverySuggestion: String = "";
    if (error is AuthException) {
      recoverySuggestion = (error as AuthException).recoverySuggestion ?: ""
    }
    errorMap.put("PLATFORM_EXCEPTIONS", mapOf(
      "platform" to "Android",
      "localizedMessage" to  localizedMessage,
      "errorString" to errorString,
      "recoverySuggestion" to recoverySuggestion

    ));

    flutterResult.error("AmplifyException", msg, errorMap)
  }

  private fun prepareSignUpResult(@NonNull flutterResult: Result, @NonNull result: AuthSignUpResult) {
    var signUpData = FlutterSignUpResult(result);
    flutterResult.success(signUpData.serializeToMap());
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

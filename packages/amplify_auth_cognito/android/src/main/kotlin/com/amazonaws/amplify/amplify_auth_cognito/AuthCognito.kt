package com.amazonaws.amplify.amplify_auth_cognito

import android.app.Activity
import android.content.Context
import android.util.Log
import androidx.annotation.NonNull
import com.amazonaws.amplify.amplify_auth_cognito.CognitoSignUpRequest
import com.amazonaws.services.cognitoidentityprovider.model.UsernameExistsException
import com.amplifyframework.AmplifyException
import com.amplifyframework.auth.AuthUserAttribute
import com.amplifyframework.auth.AuthUserAttributeKey
import com.amplifyframework.auth.cognito.AWSCognitoAuthPlugin
import com.amplifyframework.auth.options.AuthSignUpOptions
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
import java.lang.reflect.Type

/** AuthCognito */
public class AuthCognito : FlutterPlugin, ActivityAware, MethodCallHandler {

  private lateinit var channel: MethodChannel
  private lateinit var context: Context
  var gson = Gson()
  private var mainActivity: Activity? = null
  private var standardAttributes: Array<String> = arrayOf("address", "birthdate", "email", "family_name", "gender", "given_name", "locale", "middle_name", "name", "nickname", "phone_number", "preferred_username", "picture", "profile", "updated_at", "website", "zoneinfo")
  private var signUpFailure = "Amplify SignUp Failed"


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
          onSignUp(result, CognitoSignUpRequest((call.arguments as HashMap<String, String>).get("data") as HashMap<String, String>))
        }
        catch (e: Exception) {
          result.error("AmplifyException", "Error casting signUp parameter map", e.message )
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

  private fun onSignUp (@NonNull flutterResult: Result, @NonNull request: CognitoSignUpRequest) {
    try {
      Amplify.Auth.signUp(
        getUsername(request),
        request.password,
        formatUserAttributes(request.userAttributes),
          { result -> this.mainActivity?.runOnUiThread({ prepareResult(flutterResult, result)}) },
          { error -> this.mainActivity?.runOnUiThread({ prepareError(flutterResult, error, signUpFailure, (error.cause as UsernameExistsException).errorMessage)}) }
      );
    } catch(e: Exception) {
      prepareError(flutterResult, e, signUpFailure, "Error sending SignUpRequest")
    }
  }

  private fun prepareError(@NonNull flutterResult: Result, @NonNull error: Exception, @NonNull msg: String, @NonNull detail: String) {
    System.out.println("${msg}: ${error}")
    flutterResult.error("AmplifyException", msg, "${detail}: see logs for additional details")
  }

  private fun prepareResult(@NonNull flutterResult: Result, @NonNull result: AuthSignUpResult) {
    var parsedResult = mutableMapOf<String, Any>();
    parsedResult["signUpState"] = result.nextStep.signUpStep.toString();
    parsedResult["providerData"] = result.serializeToMap()
    ;
    flutterResult.success(parsedResult);
  }


  private fun getUsername(@NonNull request: CognitoSignUpRequest): String {
    var username: String = "";
    if (request.providerOptions?.containsKey("usernameAttribute")!!) {
      when (request.providerOptions.get("usernameAttribute")) {
        "email" -> {
          username = request.userAttributes.get("email") as String;
        }
        "phone_number" -> {
          username = request.userAttributes.get("phone_number") as String;
        }
      }
    } else {
      username = request.username as String;
    }
    return username;
  };

  private fun formatUserAttributes(@NonNull attributes: HashMap<String, String>): AuthSignUpOptions {
      var options: AuthSignUpOptions.Builder<*> =  AuthSignUpOptions.builder();
      var authUserAttributes: MutableList<AuthUserAttribute> = mutableListOf();
      var attributeMethods = AuthUserAttributeKey::class.java.declaredMethods;

      attributes.forEach { (key, value) ->
          var keyCopy: String = key;
          if(!standardAttributes.contains(keyCopy)){
              if (!key.startsWith("custom:")){
                  keyCopy = "custom:" + keyCopy;
              }
              authUserAttributes.add(AuthUserAttribute(AuthUserAttributeKey.custom(keyCopy), value))
          } else {
              var t: Method = attributeMethods.asIterable().find { it.name.equals(convertSnakeToCamel(key)) } as Method;
              var attr: AuthUserAttributeKey = t.invoke(null) as AuthUserAttributeKey;
              authUserAttributes.add(AuthUserAttribute(attr, value));
          }
      }
      options.userAttributes(authUserAttributes);
      return options.build();
  }

  // Amplify Android expects camel case, while iOS expects snake.  So at least one plugin implementation should convert.
  private fun convertSnakeToCamel(@NonNull string: String): String {
      val camelCase = StringBuilder()
      var prevChar = '$'
      string.forEach {
          if(prevChar.equals('_')){
              camelCase.append(it.toUpperCase())
          }else if(!it.equals('_')){
              camelCase.append(it)
          }
          prevChar = it
      }
      return camelCase.toString();
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
//  private fun formatAmplifyException(@NonNull e: AmplifyException): Map<String, Serializable?> {
//      return mapOf(
//          "cause" to e.cause,
//          "recoverySuggestion" to e.recoverySuggestion
//      )
//  }
}

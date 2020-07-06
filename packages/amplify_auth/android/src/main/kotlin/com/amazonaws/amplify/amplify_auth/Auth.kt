package com.amazonaws.amplify.amplify_auth

import android.app.Activity;
import android.content.Context
import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.widget.AutoScrollHelper
import com.amazonaws.mobileconnectors.cognitoauth.Auth
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import com.amplifyframework.AmplifyException;
import com.amplifyframework.auth.AuthUserAttribute
import com.amplifyframework.auth.AuthUserAttributeKey
import com.amplifyframework.auth.cognito.AWSCognitoAuthPlugin;
import com.amplifyframework.auth.options.AuthSignUpOptions
import com.amplifyframework.auth.result.AuthSignUpResult
import com.amplifyframework.core.Amplify
import com.google.gson.Gson
import com.google.gson.JsonElement
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;
import java.lang.reflect.Method
import kotlin.collections.HashMap
import kotlin.reflect.KFunction

/** Auth */
public class Auth : FlutterPlugin, ActivityAware, MethodCallHandler {

  private lateinit var channel: MethodChannel
  private lateinit var context: Context
  private var gson = Gson()  
  private var mainActivity: Activity? = null
  private var standardAttributes: Array<String> = arrayOf("address", "birthdate", "email", "family_name", "gender", "given_name", "locale", "middle_name", "name", "nickname", "phone_number", "preferred_username", "picture", "profile", "updated_at", "website", "zoneinfo")

  override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    channel = MethodChannel(flutterPluginBinding.getFlutterEngine().getDartExecutor(), "com.amazonaws.amplify/auth")
    channel.setMethodCallHandler(this);
    context = flutterPluginBinding.applicationContext;
    Amplify.addPlugin(AWSCognitoAuthPlugin())
    Log.i("Amplify Flutter", "Added Auth plugin")
  }

  companion object {
    @JvmStatic
    fun registerWith(registrar: Registrar) {
      val channel = MethodChannel(registrar.messenger(), "com.amazonaws.amplify/auth")
        Amplify.addPlugin(AWSCognitoAuthPlugin())
        Log.i("Amplify Flutter", "Added Auth plugin")
    }
  }

  override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
    when (call.method) {
      "signIn" ->
        try {
          onSignIn(result, (call.arguments as HashMap<*, *>) as FlutterSignInRequest)
        }
        catch (e: Exception) {
          result.error("AmplifyException", "Error casting signIn parameter map", e.message )
        }
      "signUp" ->
        try {
          onSignUp(result, FlutterSignUpRequest((call.arguments as HashMap<String, String>).get("data") as HashMap<String, String>))
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

  private fun onSignIn(@NonNull result: Result, @NonNull request: FlutterSignInRequest) {
    try {
      System.out.println((request));
//        Amplify.Auth.signIn(request.username, request.password,
//          response -> {
//            this.mainActivity.runOnUiThread(() -> {
//              Log.i("Amplify Flutter", response.isSignInComplete() ? "Sign in succeeded" : "Sign in not complete");
//              switch (response.getNextStep().getSignInStep()) {
//                case DONE:
//                  result.success(true);
//                  break;
//                case CONFIRM_SIGN_IN_WITH_SMS_MFA_CODE:
//                  Log.i("Amplify Flutter", response.getNextStep().getCodeDeliveryDetails().getDestination());
//                  result.success(false);
//                  break;
//                default:
//                  Log.i("Amplify Flutter", "Sign In needs info which is not yet supported.");
//                  result.success(false);
//              }
//            });
//          },
//          error -> {
//            Log.e("Amplify Flutter", error.toString());
//            AmplifyFlutter.activity.runOnUiThread(() -> result.success(false));
//            AmplifyFlutter.activity.runOnUiThread(() -> result.success(false));
//          }
//        );
      } catch (e: AmplifyException) {
          result.error("AmplifyException", e.message, e );
      }
  }

  private fun onSignUp (@NonNull flutterResult: Result, @NonNull request: FlutterSignUpRequest) {
    try {
      Amplify.Auth.signUp(
        getUsername(request),
        request.password,
        formatUserAttributes(request.userAttributes),
          { result -> this.mainActivity?.runOnUiThread({ flutterResult.success(gson.toJson(result))}) },
          { error -> this.mainActivity?.runOnUiThread({ flutterResult.error("AmplifyException", "signUp failed", error)}) }
      );
    } catch(e: Exception) {
      System.out.println("Amplify SignUp Failed ${e}")
      flutterResult.error("AmplifyException", e.message, e);
    }
  }

  private fun getUsername(@NonNull request: FlutterSignUpRequest): String {
    var username: String = "";
    if (request.usernameAttribute != null) {
      when (request.usernameAttribute) {
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

//  private fun formatAmplifyException(@NonNull e: AmplifyException): Map<String, Serializable?> {
//      return mapOf(
//          "cause" to e.cause,
//          "recoverySuggestion" to e.recoverySuggestion
//      )
//  }
}

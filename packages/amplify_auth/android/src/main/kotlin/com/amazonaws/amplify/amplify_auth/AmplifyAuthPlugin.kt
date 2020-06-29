package com.amazonaws.amplify.amplify_auth

import android.app.Activity;
import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import com.amplifyframework.AmplifyException;
import com.amplifyframework.auth.cognito.AWSCognitoAuthPlugin;
import com.amplifyframework.auth.cognito.AWSCognitoAuthSession;
import com.amplifyframework.auth.options.AuthWebUISignInOptions;
import com.google.gson.Gson;
import java.io.File;
import java.lang.reflect.Field;
import java.util.HashMap;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

/** AmplifyAuthPlugin */
public class AmplifyAuthPlugin implements FlutterPlugin, ActivityAware, MethodCallHandler {
  /// The MethodChannel that will the communication between Flutter and native Android
  ///
  /// This local reference serves to register the plugin with the Flutter Engine and unregister it
  /// when the Flutter Engine is detached from the Activity
  private MethodChannel channel;

  private static final String TAG = "AmplifyAuthPlugin";
  @Nullable
  private AmplifyAuthPlugin AmplifyAuthPlugin;
  private Activity mainActivity;
  private Gson gson = new Gson();


  @Override
  public void onAttachedToEngine(@NonNull FlutterPluginBinding flutterPluginBinding) {
    channel = new MethodChannel(flutterPluginBinding.getFlutterEngine().getDartExecutor(), "com.amazonaws.amplify/auth");
    channel.setMethodCallHandler(this);
    try {
      Amplify.addPlugin(new AWSS3StoragePlugin());
    } catch (AmplifyException e) {
      e.printStackTrace();
    }
    Log.i("Amplify Flutter", "Added Auth plugin");
  }

  // This static function is optional and equivalent to onAttachedToEngine. It supports the old
  // pre-Flutter-1.12 Android projects. You are encouraged to continue supporting
  // plugin registration via this function while apps migrate to use the new Android APIs
  // post-flutter-1.12 via https://flutter.dev/go/android-project-migration.
  //
  // It is encouraged to share logic between onAttachedToEngine and registerWith to keep
  // them functionally equivalent. Only one of onAttachedToEngine or registerWith will be called
  // depending on the user's project. onAttachedToEngine or registerWith must both be defined
  // in the same class.
  public static void registerWith(Registrar registrar) throws AmplifyException {
    final MethodChannel channel = new MethodChannel(registrar.messenger(), "com.amazonaws.amplify/auth");
    channel.setMethodCallHandler(new AmplifyStoragePlugin());
    Amplify.addPlugin(new AWSS3StoragePlugin());
    Log.i("Amplify Flutter", "Added Storage plugin");
  }

  @Override
  public void onDetachedFromEngine(@NonNull FlutterPluginBinding binding) {
    channel.setMethodCallHandler(null);
  }

  @Override
  public void onAttachedToActivity(@NonNull ActivityPluginBinding binding) {
    this.mainActivity = binding.getActivity();


  }

  @Override
  public void onDetachedFromActivity() {
    this.mainActivity = null;
  }

  @Override
  public void onDetachedFromActivityForConfigChanges() {
    onDetachedFromActivity();
  }

  @Override
  public void onReattachedToActivityForConfigChanges(@NonNull ActivityPluginBinding binding) {
    onAttachedToActivity(binding);
  }

  @Override
  public void onMethodCall(@NonNull MethodCall call, @NonNull Result result) {

    switch(call.method) {
      case "signIn": 
        onSignIn(result, (String) ((HashMap) call.arguments).get("username"), (String) ((HashMap) call.arguments).get("password"));
        break;
      default:
        result.notImplemented();
    }
  }


  private void onSignIn(Result result, String username, String password) {
    Amplify.Auth.signIn(username, password,
      response -> {
        this.mainActivity.runOnUiThread(() -> {
          Log.i("Amplify Flutter", response.isSignInComplete() ? "Sign in succeeded" : "Sign in not complete");
          switch (response.getNextStep().getSignInStep()) {
            case DONE:
              result.success(true);
              break;
            case CONFIRM_SIGN_IN_WITH_SMS_MFA_CODE:
              Log.i("Amplify Flutter", response.getNextStep().getCodeDeliveryDetails().getDestination());
              result.success(false);
              break;
            default:
              Log.i("Amplify Flutter", "Sign In needs info which is not yet supported.");
              result.success(false);
          }
        });
      },
      error -> {
        Log.e("Amplify Flutter", error.toString());
        AmplifyFlutter.activity.runOnUiThread(() -> result.success(false));
      }
    );
  }
}


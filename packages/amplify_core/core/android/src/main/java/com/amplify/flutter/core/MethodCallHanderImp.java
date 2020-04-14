package com.amplify.flutter.core;

import android.content.Context;
import android.util.Log;
import androidx.annotation.Nullable;
import com.amazonaws.mobile.client.AWSMobileClient;
import com.amazonaws.mobile.client.Callback;
import com.amazonaws.mobile.client.UserStateDetails;
import com.amplifyframework.core.Amplify;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;

/**
 * Translates incoming Core MethodCalls into well formed Java function calls for {@link
 * Core}.
 */
final class MethodCallHandlerImpl implements MethodCallHandler {
  private static final String TAG = "MethodCallHandlerImpl";
  private final Core Core;
  private final Context context;
  @Nullable private MethodChannel channel;

  /** Forwards all incoming MethodChannel calls to the given {@code Core}. */
  MethodCallHandlerImpl(Core Core, Context context) {
    this.Core = Core;
    this.context = context;
  }

  @Override
  public void onMethodCall(MethodCall call, Result result) {
    final String url = call.argument("url");
    switch (call.method) {
      case "configure":
        System.out.println("CORRECT SWITCH");
        onAmplifyConfiguration(result, this.context);
        break;
      case "getConfiguration":
        onGetConfiguration(result, this.context);
        break;
      default:
        result.notImplemented();
        break;
    }
  }


  /**
   * Registers this instance as a method call handler on the given {@code messenger}.
   *
   * <p>Stops any previously started and unstopped calls.
   *
   * <p>This should be cleaned with {@link #stopListening} once the messenger is disposed of.
   */
  void startListening(BinaryMessenger messenger) {
    if (channel != null) {
      Log.wtf(TAG, "Setting a method call handler before the last was disposed.");
      stopListening();
    }

    channel = new MethodChannel(messenger, "com.amplify.flutter/core");
    channel.setMethodCallHandler(this);
  }

  /**
   * Clears this instance from listening to method calls.
   *
   * <p>Does nothing if {@link #startListening} hasn't been called, or if we're already stopped.
   */
  void stopListening() {
    if (channel == null) {
      Log.d(TAG, "Tried to stop listening when no MethodChannel had been initialized.");
      return;
    }

    channel.setMethodCallHandler(null);
    channel = null;
  }
  
  private void onAmplifyConfiguration(Result result, Context context) {
   final Context appContext = context;
   AWSMobileClient.getInstance().initialize(context, new Callback<UserStateDetails>() {
     public void onResult(UserStateDetails userStateDetails) {
      try {
        Amplify.configure(appContext);
        Log.i("Amplify: ", "Configured Successfully");
      } catch (Exception exception) {
        Log.e("Amplify Error: ", exception.getMessage(), exception);
      }
     }
     @Override
     public void onError(Exception exception) {
         Log.e("Amplify: ", "Initialization error.", exception);
     }
   });
    result.success(context.toString());
  }

  private void onGetConfiguration(Result result, Context context) {
    result.success(Amplify.CATEGORIES.toString());
  }
}
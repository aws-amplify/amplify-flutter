package com.amplify.flutter.core;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import android.content.Context;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.PluginRegistry.Registrar;
import com.amplifyframework.core.Amplify;


/**
 * Plugin implementation that uses the new {@code io.flutter.embedding} package.
 *
 * <p>Instantiate this in an add to app scenario to gracefully handle activity and context changes.
 */
public final class CorePlugin implements FlutterPlugin, ActivityAware {
  private static final String TAG = "CorePlugin";
  @Nullable private MethodCallHandlerImpl methodCallHandler;
  @Nullable private Core Core;
  private Context applicationContext;

  /**
   * Registers a plugin implementation that uses the stable {@code io.flutter.plugin.common}
   * package.
   *
   * <p>Calling this automatically initializes the plugin. However plugins initialized this way
   * won't react to changes in activity or context, unlike {@link CorePlugin}.
//   */
//  public static void registerWith(Registrar registrar, Context context) {
//    MethodCallHandlerImpl handler =
//        new MethodCallHandlerImpl(new Core(registrar.context(), registrar.activity()), context);
//    handler.startListening(registrar.messenger());
//  }

  @Override
  public void onAttachedToEngine(@NonNull FlutterPluginBinding binding) {
    Core = new Core(binding.getApplicationContext(), /*activity=*/ null);
    applicationContext = binding.getApplicationContext();
    methodCallHandler = new MethodCallHandlerImpl(Core, applicationContext);
    methodCallHandler.startListening(binding.getBinaryMessenger());
  }

  @Override
  public void onDetachedFromEngine(@NonNull FlutterPluginBinding binding) {
    if (methodCallHandler == null) {
      Log.wtf(TAG, "Already detached from the engine.");
      return;
    }

    methodCallHandler.stopListening();
    methodCallHandler = null;
    Core = null;
  }

  @Override
  public void onAttachedToActivity(@NonNull ActivityPluginBinding binding) {
    if (methodCallHandler == null) {
      Log.wtf(TAG, "Core was never set.");
      return;
    }

    Core.setActivity(binding.getActivity());
  }

  @Override
  public void onDetachedFromActivity() {
    if (methodCallHandler == null) {
      Log.wtf(TAG, "Core was never set.");
      return;
    }

    Core.setActivity(null);
  }

  @Override
  public void onDetachedFromActivityForConfigChanges() {
    onDetachedFromActivity();
  }

  @Override
  public void onReattachedToActivityForConfigChanges(@NonNull ActivityPluginBinding binding) {
    onAttachedToActivity(binding);
  }
}

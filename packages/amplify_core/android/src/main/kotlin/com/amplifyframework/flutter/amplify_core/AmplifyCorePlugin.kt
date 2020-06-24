package com.amplifyframework.flutter.amplify_core

import android.app.Activity
import android.content.Context
import android.util.Log
import androidx.annotation.NonNull
import com.amplifyframework.AmplifyException
import com.amplifyframework.core.Amplify
import com.amplifyframework.core.AmplifyConfiguration
import com.google.gson.Gson
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.PluginRegistry.Registrar
import org.json.JSONObject
import java.io.Serializable


/** AmplifyCorePlugin */
public class AmplifyCorePlugin : FlutterPlugin, ActivityAware, MethodCallHandler {
    /// The MethodChannel that will the communication between Flutter and native Android
    ///
    /// This local reference serves to register the plugin with the Flutter Engine and unregister it
    /// when the Flutter Engine is detached from the Activity
    private lateinit var channel: MethodChannel
    private lateinit var context: Context
    private var mainActivity: Activity? = null
    private var gson: Gson = Gson();


    override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        channel = MethodChannel(flutterPluginBinding.getFlutterEngine().getDartExecutor(), "amplify/amplify_core")
        channel.setMethodCallHandler(this);
        context = flutterPluginBinding.applicationContext;
        Log.i("Amplify Flutter", "Added Core plugin")
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
    companion object {
        @JvmStatic
        fun registerWith(registrar: Registrar) {
            val channel = MethodChannel(registrar.messenger(), "amplify/amplify_core")
            Log.i("Amplify Flutter", "Added Core plugin")
        }
    }

    override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
        when (call.method) {
            "configure" -> 
                try {
                    onConfigure(result, (call.arguments as HashMap<*, *>)["configuration"] as String)
                }
                catch (e: Exception) {
                    result.error("AmplifyException", "Failed to Configure Amplify", e.message )
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

    private fun onConfigure(@NonNull result: Result, @NonNull config: String) {
        try {
            Amplify.configure(AmplifyConfiguration.fromJson(JSONObject(config)), context);
            result.success(true);
        } catch (e: AmplifyException) {
            result.error("AmplifyException", e.message, formatAmplifyException(e) )
        }
    }

    private fun formatAmplifyException(@NonNull e: AmplifyException): Map<String, Serializable?> {
        return mapOf(
            "cause" to e.cause,
            "recoverySuggestion" to e.recoverySuggestion
        )
    }
}


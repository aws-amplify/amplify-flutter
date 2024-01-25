package com.amazonaws.amplify.amplify_auth_cognito

import android.content.Context
import io.flutter.plugin.common.PluginRegistry

class LegacySecretHandlerImpl(private val context: Context) : LegacySecretHandler, MethodChannel.MethodCallHandler {

    private val channel = MethodChannel(registrar.messenger(), "com.amazonaws.amplify/amplify_auth_cognito")

    override fun fetchLegacyDeviceSecrets(userPoolConfig: CognitoUserPoolConfig?): LegacyDeviceDetails?{
        return null
    }

    override fun deleteLegacyDeviceSecrets(userPoolConfig: CognitoUserPoolConfig?) {
        channel.invokeMethod("deleteLegacyDeviceSecrets", userPoolConfig?.poolId)
    }

    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        if (call.method == "getDeviceId") {
            result.success(getDeviceId())
        } else {
            result.notImplemented()
        }
    }

}

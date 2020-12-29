package com.amazonaws.amplify.amplify_api.types

import io.flutter.plugin.common.MethodChannel
import java.lang.ClassCastException

class AmplifyGraphQLModule {

    fun isValidArgumentsMap(flutterResult: MethodChannel.Result, args: Any): Boolean{
        try {
            var arguments = args as Map<String, Any>
            var document = arguments["document"] as String
            var variables = arguments["variables"] as Map<String, Any>
        } catch (e: ClassCastException) {
            FlutterApiErrorUtils.createFlutterError(
                    flutterResult,
                    FlutterApiErrorMessage.ERROR_CASTING_INPUT_IN_PLATFORM_CODE.toString(),
                    e)
            return false
        } catch (e: Exception) {
            FlutterApiErrorUtils.createFlutterError(
                    flutterResult,
                    FlutterApiErrorMessage.AMPLIFY_REQUEST_MALFORMED.toString(),
                    e)
            return false
        }
        return true
    }

}
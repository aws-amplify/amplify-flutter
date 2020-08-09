package com.amazonaws.amplify.amplify_analytics_pinpoint

import androidx.annotation.NonNull

import com.amplifyframework.core.Amplify

import io.flutter.plugin.common.MethodChannel
import java.lang.IllegalArgumentException


class AmplifyAnalyticsBridge {
    companion object Bridge {

        fun recordEvent(@NonNull arguments: Any, @NonNull result: MethodChannel.Result){
            try {
                val argumentsMap = arguments as HashMap<*,*>

                if(!argumentsMap.containsKey("name")){
                    throw IllegalArgumentException("Event must have name")
                }
                val name = argumentsMap["name"] as String

                var properties : HashMap<String, Any> = HashMap()
                if(argumentsMap.containsKey("propertiesMap")){
                    properties = argumentsMap["propertiesMap"] as HashMap<String, Any>;
                }

                Amplify.Analytics.recordEvent(
                        AmplifyAnalyticsConstructor.createAnalyticsEvent(name, properties) );
                result.success(true);
            }
            catch(e: Exception) {
                result.error("AmplifyException", "Error", e.message )
            }
        }

        fun flushEvents(@NonNull result: MethodChannel.Result){
            try {
                Amplify.Analytics.flushEvents();
                result.success(true)
            }
            catch(e: Exception){
                result.error("AmplifyException", "Error", e.message )
            }
        }

        fun registerGlobalProperties(@NonNull arguments: Any, @NonNull result: MethodChannel.Result){
            try{
                val globalProperties = arguments as HashMap<String, Any>;
                Amplify.Analytics.registerGlobalProperties(
                        AmplifyAnalyticsConstructor.createAnalyticsProperties(globalProperties) );
                result.success(true)
            }
            catch(e: Exception){
                result.error("AmplifyException", "Error", e.message )
            }
        }

        fun unregisterGlobalProperties(@NonNull arguments: Any, @NonNull result: MethodChannel.Result){
            try{
                val propertyNames = (arguments as ArrayList<String>).toSet<String>();

                for(name in propertyNames){
                    Amplify.Analytics.unregisterGlobalProperties( name );
                }
                result.success(true)
            }
            catch(e: Exception){
                result.error("AmplifyException", "Error", e.message )
            }
        }

        fun unregisterAllGlobalProperties(@NonNull result: MethodChannel.Result){
            try {
                Amplify.Analytics.unregisterGlobalProperties()
                result.success(true)
            }
            catch(e: Exception){
                result.error("AmplifyException", "Error", e.message )
            }
        }

        fun enable(@NonNull result: MethodChannel.Result) {
            try {
                Amplify.Analytics.enable();
                result.success(true)
            } catch (e: Exception) {
                result.error("AmplifyException", "Error", e.message)
            }
        }

        fun disable(@NonNull result: MethodChannel.Result){
            try {
                Amplify.Analytics.disable();
                result.success(true)
            } catch (e: Exception) {
                result.error("AmplifyException", "Error", e.message)
            }
        }

        fun identifyUser(@NonNull arguments: Any, @NonNull result: MethodChannel.Result){
            try {
                val argumentsMap = arguments as HashMap<*, *>
                val userId = argumentsMap["userId"] as String
                val userProfileMap = argumentsMap["userProfileMap"] as HashMap<String, Object>;

                Amplify.Analytics.identifyUser(userId,
                        AmplifyAnalyticsConstructor.createUserProfile(userProfileMap));

                result.success(true)
            }
            catch(e: Exception){
                result.error("AmplifyException", "Error", e.message )
            }
        }

    }
}
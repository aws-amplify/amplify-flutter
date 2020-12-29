package com.amazonaws.amplify.amplify_api

import android.os.Handler
import android.os.Looper
import com.amazonaws.amplify.amplify_api.types.FlutterApiErrorMessage
import com.amplifyframework.api.aws.GsonVariablesSerializer
import com.amplifyframework.api.graphql.SimpleGraphQLRequest
import com.amplifyframework.core.Amplify
import io.flutter.plugin.common.MethodChannel

class FlutterGraphQLApiModule {
    companion object {
        private val handler = Handler(Looper.getMainLooper())
        private val LOG = Amplify.Logging.forNamespace("amplify:flutter:api")

        fun query(flutterResult: MethodChannel.Result, request: Map<String, Any>) {
            var document: String
            var variables: Map<String, Any>

            try {
                document = request["document"] as String
                variables = request["variables"] as Map<String, Any>
            } catch (e: ClassCastException) {
                FlutterApiErrorUtils.createFlutterError(
                        flutterResult,
                        FlutterApiErrorMessage.ERROR_CASTING_INPUT_IN_PLATFORM_CODE.toString(),
                        e)
                return
            } catch (e: Exception) {
                FlutterApiErrorUtils.createFlutterError(
                        flutterResult,
                        FlutterApiErrorMessage.AMPLIFY_REQUEST_MALFORMED.toString(),
                        e)
                return
            }
            Amplify.API.query(
                    SimpleGraphQLRequest<String>(
                            document,
                            variables,
                            String::class.java,
                            GsonVariablesSerializer()
                    ),
                    { response ->
                        var result: Map<String, Any> = mapOf(
                                "data" to response.data,
                                "errors" to response.errors.map { it.message }
                        )
                        LOG.info("GraphQL query operation succeeded with response: $result")
                        handler.post { flutterResult.success(result) }
                    },
                    {
                        LOG.error("GraphQL query operation failed", it)
                        FlutterApiErrorUtils.createFlutterError(
                                flutterResult,
                                FlutterApiErrorMessage.AMPLIFY_API_QUERY_FAILED.toString(),
                                it)
                    }
            )
        }

        fun mutate(flutterResult: MethodChannel.Result, request: Map<String, Any>) {
            var document: String
            var variables: Map<String, Any>

            try {
                document = request["document"] as String
                variables = request["variables"] as Map<String, Any>
            } catch (e: ClassCastException) {
                FlutterApiErrorUtils.createFlutterError(
                        flutterResult,
                        FlutterApiErrorMessage.ERROR_CASTING_INPUT_IN_PLATFORM_CODE.toString(),
                        e)
                return
            } catch (e: Exception) {
                FlutterApiErrorUtils.createFlutterError(
                        flutterResult,
                        FlutterApiErrorMessage.AMPLIFY_REQUEST_MALFORMED.toString(),
                        e)
                return
            }

            Amplify.API.mutate(
                    SimpleGraphQLRequest<String>(
                            document,
                            variables,
                            String::class.java,
                            GsonVariablesSerializer()
                    ),
                    { response ->
                        var result: Map<String, Any> = mapOf(
                                "data" to response.data,
                                "errors" to response.errors.map { it.message }
                        )
                        LOG.info("GraphQL mutate operation succeeded with response : $result")
                        handler.post { flutterResult.success(result) }
                    },
                    {
                        LOG.error("GraphQL mutate operation failed", it)
                        FlutterApiErrorUtils.createFlutterError(
                                flutterResult,
                                FlutterApiErrorMessage.AMPLIFY_API_MUTATE_FAILED.toString(),
                                it)
                    }
            )
        }
    }
}
/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import com.amazonaws.amplify.amplify_datastore.AmplifyDataStorePlugin
import com.amazonaws.amplify.amplify_datastore.readMapFromFile
import com.amazonaws.amplify.amplify_datastore.types.FlutterDataStoreFailureMessage
import com.amazonaws.amplify.amplify_datastore.types.model.FlutterSerializedModel
import com.amplifyframework.core.Amplify
import com.amplifyframework.core.Consumer
import com.amplifyframework.core.model.Model
import com.amplifyframework.core.model.query.Page
import com.amplifyframework.core.model.query.QueryOptions
import com.amplifyframework.core.model.query.Where
import com.amplifyframework.core.model.query.predicate.QueryField.field
import com.amplifyframework.core.model.query.predicate.QueryPredicate
import com.amplifyframework.core.model.query.predicate.QueryPredicateOperation.not
import com.amplifyframework.core.model.temporal.Temporal
import com.amplifyframework.datastore.AWSDataStorePlugin
import com.amplifyframework.datastore.DataStoreCategory
import com.amplifyframework.datastore.DataStoreException
import com.amplifyframework.datastore.DataStoreItemChange
import com.amplifyframework.datastore.appsync.SerializedModel
import io.flutter.plugin.common.MethodChannel
import java.lang.reflect.Field
import java.lang.reflect.Modifier
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.mockito.ArgumentMatchers
import org.mockito.ArgumentMatchers.any
import org.mockito.ArgumentMatchers.anyString
import org.mockito.Mockito.`when`
import org.mockito.Mockito.doAnswer
import org.mockito.Mockito.mock
import org.mockito.Mockito.times
import org.mockito.Mockito.verify
import org.mockito.invocation.InvocationOnMock
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class AmplifyDataStorePluginTest {
    lateinit var flutterPlugin: AmplifyDataStorePlugin
    private var mockDataStore = mock(DataStoreCategory::class.java)
    private var mockAmplifyDataStorePlugin = mock(AWSDataStorePlugin::class.java)
    private val mockResult: MethodChannel.Result = mock(MethodChannel.Result::class.java)
    private val amplifySuccessResults = mutableListOf<SerializedModel>(
            SerializedModel.builder()
                    .serializedData(
                            mapOf("id" to "4281dfba-96c8-4a38-9a8e-35c7e893ea47",
                                  "title" to "Title 1",
                                  "rating" to 4))
                    .modelName("Post")
                    .id("4281dfba-96c8-4a38-9a8e-35c7e893ea47")
                    .build(),
            SerializedModel.builder()
                    .serializedData(
                            mapOf("id" to "43036c6b-8044-4309-bddc-262b6c686026",
                                  "title" to "Title 2",
                                  "created" to Temporal.DateTime("2020-02-20T20:20:20-08:00")))
                    .modelName("Post")
                    .id("43036c6b-8044-4309-bddc-262b6c686026")
                    .build()
    )

    @Before
    fun setup() {
        flutterPlugin = AmplifyDataStorePlugin()

        setFinalStatic(Amplify::class.java.getDeclaredField("DataStore"), mockDataStore)
        `when`(mockDataStore.getPlugin("awsDataStorePlugin")).thenReturn(mockAmplifyDataStorePlugin)

    }

    @Test
    fun test_Query_Success_Result() {
        doAnswer { invocation: InvocationOnMock ->
            assertEquals(invocation.arguments[0], "Post")
            assertEquals(invocation.arguments[1], Where.matchesAll())
            (invocation.arguments[2] as Consumer<Iterator<Model>>).accept(
                    amplifySuccessResults.iterator())
            null
        }.`when`(mockAmplifyDataStorePlugin).query(anyString(), any(QueryOptions::class.java),
                                                   ArgumentMatchers.any<
                                                           Consumer<Iterator<Model>>>(),
                                                   ArgumentMatchers.any<Consumer<DataStoreException>>())
        flutterPlugin.onQuery(mockResult,
                              readMapFromFile("query_api",
                                              "request/only_model_name.json",
                                              HashMap::class.java) as HashMap<String, Any>)
        verify(mockResult, times(1)).success(
                readMapFromFile("query_api",
                                "response/2_results.json",
                                List::class.java))
    }

    @Test
    fun test_Query_With_Predicates_Success_Zero_Result() {
        doAnswer { invocation: InvocationOnMock ->
            assertEquals(invocation.arguments[0], "Post")
            assertEquals(invocation.arguments[1],
                         Where.matches(field("id").eq("123").or(field("rating").ge(4).and(not(
                                 field("created").eq("2020-02-20T20:20:20-08:00")))))
                                 .paginated(Page.startingAt(2).withLimit(8))
                                 .sorted(field("id").ascending(), field("created").descending()))
            (invocation.arguments[2] as Consumer<Iterator<Model>>).accept(
                    emptyList<SerializedModel>().iterator())
            null
        }.`when`(mockAmplifyDataStorePlugin).query(anyString(), any(QueryOptions::class.java),
                                                   ArgumentMatchers.any<
                                                           Consumer<Iterator<Model>>>(),
                                                   ArgumentMatchers.any<Consumer<DataStoreException>>())
        flutterPlugin.onQuery(mockResult,
                              readMapFromFile("query_api",
                                              "request/model_name_with_all_query_parameters.json",
                                              HashMap::class.java) as HashMap<String, Any>)
        verify(mockResult, times(1)).success(emptyList<FlutterSerializedModel>())
    }

    @Test
    fun test_Delete_Success_Result_No_Predicates() {

        var modelData: HashMap<String, Any> = (readMapFromFile("delete_api",
               "request/instance_no_predicate.json",
                HashMap::class.java) as HashMap<String, Any>).get("model") as HashMap<String, Any>

        var instance = SerializedModel.builder()
                .serializedData(modelData)
                .id(modelData["id"] as String)
                .modelName("Post")
                .build()

        var dataStoreItemChange = DataStoreItemChange.builder<SerializedModel>()
                .item(instance)
                .initiator(DataStoreItemChange.Initiator.LOCAL)
                .itemClass(SerializedModel::class.java)
                .type(DataStoreItemChange.Type.DELETE)
                .randomUuid()
                .build()

        doAnswer { invocation: InvocationOnMock ->
            (invocation.arguments[2] as Consumer<DataStoreItemChange<SerializedModel>>).accept(
                    dataStoreItemChange)
            null as Void?
        }.`when`(mockAmplifyDataStorePlugin).delete(any(), any(QueryPredicate::class.java),
                ArgumentMatchers.any<
                        Consumer<DataStoreItemChange<SerializedModel>>>(),
                ArgumentMatchers.any<Consumer<DataStoreException>>())

        flutterPlugin.onDelete(mockResult,
                readMapFromFile("delete_api",
                        "request/instance_no_predicate.json",
                        HashMap::class.java) as HashMap<String, Any>)

        verify(mockResult, times(1)).success(
               FlutterSerializedModel(instance).toMap())
    }

    @Test
    fun test_Delete_Success_Result_With_Predicates() {

        var modelData: HashMap<String, Any> = (readMapFromFile("delete_api",
               "request/instance_with_predicate.json",
                HashMap::class.java) as HashMap<String, Any>).get("model") as HashMap<String, Any>

        var instance = SerializedModel.builder()
                .serializedData(modelData)
                .id(modelData["id"] as String)
                .modelName("Post")
                .build()

        var dataStoreItemChange = DataStoreItemChange.builder<SerializedModel>()
                .item(instance)
                .initiator(DataStoreItemChange.Initiator.LOCAL)
                .itemClass(SerializedModel::class.java)
                .type(DataStoreItemChange.Type.DELETE)
                .randomUuid()
                .build()

        doAnswer { invocation: InvocationOnMock ->
            (invocation.arguments[2] as Consumer<DataStoreItemChange<SerializedModel>>).accept(
                    dataStoreItemChange)
            null as Void?
        }.`when`(mockAmplifyDataStorePlugin).delete(any(), any(QueryPredicate::class.java),
                ArgumentMatchers.any<
                        Consumer<DataStoreItemChange<SerializedModel>>>(),
                ArgumentMatchers.any<Consumer<DataStoreException>>())

        flutterPlugin.onDelete(mockResult,
                readMapFromFile("delete_api",
                        "request/instance_with_predicate.json",
                        HashMap::class.java) as HashMap<String, Any>)

        verify(mockResult, times(1)).success(
                FlutterSerializedModel(instance).toMap())
    }

    @Test
    fun test_Delete_Error() {

        var dataStoreException = DataStoreException("AmplifyException", DataStoreException.REPORT_BUG_TO_AWS_SUGGESTION)

        var errorMap: HashMap<String, Any> = hashMapOf(
          "PLATFORM_EXCEPTIONS" to mapOf<String, String>(
            "platform" to "Android",
            "localizedErrorMessage" to "AmplifyException",
            "recoverySuggestion" to DataStoreException.REPORT_BUG_TO_AWS_SUGGESTION,
            "errorString" to "AmplifyException {message=AmplifyException, cause=null, recoverySuggestion=There is a possibility that there is a bug if this error persists. Please take a look at \nhttps://github.com/aws-amplify/amplify-android/issues to see if there are any existing issues that \nmatch your scenario, and file an issue with the details of the bug if there isn't.}"
          )
        )

        doAnswer { invocation: InvocationOnMock ->
                (invocation.arguments[3] as Consumer<DataStoreException>).accept(
                        dataStoreException)
                null as Void?
        }.`when`(mockAmplifyDataStorePlugin).delete(any(), any(QueryPredicate::class.java),
                ArgumentMatchers.any<
                        Consumer<DataStoreItemChange<SerializedModel>>>(),
                ArgumentMatchers.any<Consumer<DataStoreException>>())

        flutterPlugin.onDelete(mockResult,
                readMapFromFile("delete_api",
                        "request/instance_no_predicate.json",
                        HashMap::class.java) as HashMap<String, Any>)

        verify(mockResult, times(1)).error(
                "AmplifyException",
                FlutterDataStoreFailureMessage.AMPLIFY_DATASTORE_DELETE_FAILED.toString(),
                errorMap
        )
    }


    private fun setFinalStatic(field: Field, newValue: Any?) {
        field.isAccessible = true
        val modifiersField: Field = Field::class.java.getDeclaredField("modifiers")
        modifiersField.isAccessible = true
        modifiersField.setInt(field, field.modifiers and Modifier.FINAL.inv())
        field.set(null, newValue)
    }
}
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

import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

import './utils/get_json_from_file.dart';
import 'test_models/Post.dart';
import 'test_models/Comment.dart';
import 'test_models/ModelProvider.dart';

void main() {
  const MethodChannel dataStoreChannel =
      MethodChannel('com.amazonaws.amplify/datastore');

  AmplifyDataStore dataStore =
      AmplifyDataStore(modelProvider: ModelProvider.instance);

  TestWidgetsFlutterBinding.ensureInitialized();

  tearDown(() {
    dataStoreChannel.setMockMethodCallHandler(null);
  });

  test('query returns nested model result', () async {
    dataStoreChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == "query") {
        return getJsonFromFile('query_api/response/nested_results.json');
      }
    });
    List<Comment> comments = await dataStore.query(Comment.classType);
    expect(comments.length, 1);
    expect(
        comments[0],
        Comment(
            id: '39c3c0e6-8726-436e-8cdf-bff38e9a62da',
            content: 'Loving Amplify Datastore!',
            post: Post(id: 'e50ffa8f-783b-4780-89b4-27043ffc35be')));
  });

  test('query returns 2 sucessful results', () async {
    dataStoreChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == "query") {
        return getJsonFromFile('query_api/response/2_results.json');
      }
    });
    List<Post> posts = await dataStore.query(Post.classType);
    expect(posts.length, 2);
    expect(
        posts[0],
        Post(
            id: '4281dfba-96c8-4a38-9a8e-35c7e893ea47',
            rating: 4,
            title: 'Title 1'));
    expect(
        posts[1],
        Post(
            id: '43036c6b-8044-4309-bddc-262b6c686026',
            created: DateTime.parse("2020-02-20T20:20:20-08:00"),
            title: 'Title 2'));
  });

  test('query returns 0 sucessful results', () async {
    dataStoreChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == "query") {
        return [];
      }
    });
    List<Post> posts = await dataStore.query(Post.classType);
    expect(posts.length, 0);
  });

  test(
      'method channel is called with empty query parameters and correct model name',
      () async {
    dataStoreChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == "query") {
        expect(methodCall.arguments,
            await getJsonFromFile('query_api/request/only_model_name.json'));
        return [];
      }
    });
    List<Post> posts = await dataStore.query(Post.classType);
    expect(posts.length, 0);
  });

  test('method channel is called with all query parameters and model name',
      () async {
    dataStoreChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == "query") {
        expect(
            methodCall.arguments,
            await getJsonFromFile(
                'query_api/request/model_name_with_all_query_parameters.json'));
        return [];
      }
    });
    List<Post> posts = await dataStore.query(Post.classType,
        where: Post.ID.eq("123").or(Post.RATING
            .ge(4)
            .and(not(Post.CREATED.eq("2020-02-20T20:20:20-08:00")))),
        sortBy: [Post.ID.ascending(), Post.CREATED.descending()],
        pagination: QueryPagination(page: 2, limit: 8));
    expect(posts.length, 0);
  });

  test('method channel throws a known PlatformException', () async {
    dataStoreChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == "query") {
        throw PlatformException(
            code: "AMPLIFY_EXCEPTION",
            message: "AMPLIFY_REQUEST_MALFORMED",
            details: {});
      }
    });
    expect(
        () => dataStore.query(Post.classType),
        throwsA(isA<DataStoreError>().having((error) => error.cause,
            "error message", "AMPLIFY_REQUEST_MALFORMED")));
  });

  test('method channel throws an unknown PlatformException', () async {
    dataStoreChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == "query") {
        throw PlatformException(
            code: "AMPLIFY_EXCEPTION", message: "Some Random", details: {});
      }
    });
    expect(
        () => dataStore.query(Post.classType),
        throwsA(isA<DataStoreError>().having((error) => error.cause,
            "error message", "UNRECOGNIZED_DATASTORE_ERROR")));
  });

  test('method channel returns results something that cannot be parsed',
      () async {
    dataStoreChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == "query") {
        return "fake";
      }
    });
    expect(
        () => dataStore.query(Post.classType),
        throwsA(isA<DataStoreError>().having((error) => error.cause,
            "error message", "ERROR_FORMATTING_PLATFORM_CHANNEL_RESPONSE")));
  });
}

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

import 'dart:convert';
import 'dart:io';

import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

import './testData/Post.dart';

void main() {
  const MethodChannel dataStoreChannel =
      MethodChannel('com.amazonaws.amplify/datastore');

  AmplifyDataStore dataStore = AmplifyDataStore(modelSchemas: null);

  TestWidgetsFlutterBinding.ensureInitialized();

  tearDown(() {
    dataStoreChannel.setMockMethodCallHandler(null);
  });

  dynamic getJsonFromFile(String path) async {
    path = 'resources/query_api/' + path;
    String jsonString = '';
    try {
      jsonString = await File(path).readAsString();
    } catch (e) {
      jsonString = await File('test/' + path).readAsString();
    }
    return jsonDecode(jsonString);
  }

  test('query returns 2 sucessful results', () async {
    dataStoreChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == "query") {
        return getJsonFromFile('response/2_results.json');
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
            await getJsonFromFile('request/only_model_name.json'));
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
                'request/model_name_with_all_query_parameters.json'));
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
}

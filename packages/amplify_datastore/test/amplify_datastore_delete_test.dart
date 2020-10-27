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
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

import './test_models/Post.dart';
import './utils/get_json_from_file.dart';

void main() {
  const MethodChannel dataStoreChannel =
      MethodChannel('com.amazonaws.amplify/datastore');

  AmplifyDataStore dataStore = AmplifyDataStore(modelSchemas: null);

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {});

  tearDown(() {
    dataStoreChannel.setMockMethodCallHandler(null);
  });


  test('delete returns 1 sucessful result (no query predicate)', () async {

    var json = await getJsonFromFile('delete_api/response/1_deleted_result.json');

    dataStoreChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      return json;
    });

    Post instance = Post(title: json["serializedData"]["title"], rating: json["serializedData"]["rating"], created: DateTime.parse(json["serializedData"]["created"]), id: json["id"]);

    Post post = await dataStore.delete(instance);
    expect(post.id, instance.id);
    expect(post.title, instance.title);
    expect(post.rating, instance.rating);
    expect(post.created, instance.created);
  });

  test('delete returns 1 sucessful result (with query predicate)', () async {

    var json = await getJsonFromFile('delete_api/response/1_deleted_result.json');

    dataStoreChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      return json;
    });

    Post instance = Post(title: json["serializedData"]["title"], rating: json["serializedData"]["rating"], created: DateTime.parse(json["serializedData"]["created"]), id: json["id"]);

    Post post = await dataStore.delete(instance, when: Post.RATING.eq(5));
    expect(post.id, instance.id);
    expect(post.title, instance.title);
    expect(post.rating, instance.rating);
    expect(post.created, instance.created);
  });
}

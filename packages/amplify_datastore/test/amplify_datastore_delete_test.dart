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
import './resources/delete_api/InvalidModel.dart';

void main() {
  const MethodChannel dataStoreChannel =
      MethodChannel('com.amazonaws.amplify/datastore');

  AmplifyDataStore dataStore = AmplifyDataStore(modelSchemas: null);

  TestWidgetsFlutterBinding.ensureInitialized();
  
<<<<<<< HEAD
=======

>>>>>>> removes query predicate from interface; makes delete void
  setUp(() {});

  tearDown(() {
    dataStoreChannel.setMockMethodCallHandler(null);
  });

<<<<<<< HEAD
  test('delete with a valid model executes without an error ', () async {
    var json = await getJsonFromFile('delete_api/request/instance_no_predicate.json');
    var model = json["model"];
    dataStoreChannel.setMockMethodCallHandler((MethodCall methodCall) async {});
    Post instance = Post(title: model["title"], rating: model["rating"], created: DateTime.parse(model["created"]), id: model["id"]);
    Future<void> deleteFuture = dataStore.delete(instance);
    expect(deleteFuture, completes);
=======

  test('delete with a valid model executes without an error ', () async {
    var json = await getJsonFromFile('delete_api/request/instance_no_predicate.json');

    dataStoreChannel.setMockMethodCallHandler((MethodCall methodCall) async {});

    Post instance = Post(title: json["model"]["title"], rating: json["model"]["rating"], created: DateTime.parse(json["model"]["created"]), id: json["model"]["id"]);
    bool executed;

    try {
      await dataStore.delete(instance);
      executed = true;
    } catch (e) {
      executed = false;
    }

    expect(executed, true);
  });

  test('delete with an invalid model executes with an error ', () async {
    dataStoreChannel.setMockMethodCallHandler((MethodCall methodCall) async {});

    bool executed;
    InvalidModel invalidModel = InvalidModel();

    try {
      await dataStore.delete(invalidModel);
      executed = true;
    } catch (e) {
      executed = false;
    }

    expect(executed, false);
>>>>>>> removes query predicate from interface; makes delete void
  });
}

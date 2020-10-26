import 'dart:convert';
import 'dart:io';

import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

import './testData/Post.dart';

void main() {
  const MethodChannel dataStoreChannel =
      MethodChannel('com.amazonaws.amplify/datastore');

  AmplifyDataStore dataStore = AmplifyDataStore(modelSchemas: null);

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {});

  tearDown(() {
    dataStoreChannel.setMockMethodCallHandler(null);
  });

  dynamic getJsonFromFile(String path) async {
    path = 'resources/delete_api/' + path;
    String jsonString = '';
    try {
      jsonString = await File(path).readAsString();
    } catch (e) {
      jsonString = await File('test/' + path).readAsString();
    }
    return jsonDecode(jsonString);
  }

  test('delete returns 1 sucessful result (no query predicate)', () async {

    var json = await getJsonFromFile('response/1_deleted_result.json');

    dataStoreChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == "delete") {
        return json;
      }
    });

    Post instance = Post(title: json["title"], rating: json["rating"], created: json["created"], id: json["id"]);

    Post post = await dataStore.delete(instance);
    expect(post.id, instance.id);
  });

    test('delete returns 1 sucessful result (with query predicate)', () async {

    var json = await getJsonFromFile('response/1_deleted_result.json');

    dataStoreChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == "delete") {
        return json;
      }
    });

    Post instance = Post(title: json["title"], rating: json["rating"], created: json["created"], id: json["id"]);

    Post post = await dataStore.delete(instance, when: Post.RATING.eq(5));
    expect(post.id, instance.id);
  });
}

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
        return getJsonFromFile('mock_2_results.json');
      }
    });
    List<Post> posts = await dataStore.query(Post.classType);
    expect(posts.length, 2);
    expect(posts[0], Post(id: '1', rating: 4, title: 'Title 1'));
    expect(
        posts[1],
        Post(
            id: '2',
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
}

import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

import './test_models/Post.dart';
import './utils/get_json_from_file.dart';

void main() {
  const MethodChannel dataStoreChannel =
      MethodChannel('com.amazonaws.amplify/datastore');

  AmplifyDataStore dataStore = AmplifyDataStore(modelSchemas: null);

  TestWidgetsFlutterBinding.ensureInitialized();

  tearDown(() {
    dataStoreChannel.setMockMethodCallHandler(null);
  });
  test('Saving a model without predicate executes successfully', () async {
    dataStoreChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == "save") {
        expect(
            methodCall.arguments,
            await getJsonFromFile(
                'save_api/request/instance_without_predicate.json'));
      }
    });
    Post post = Post(
        id: '9fc5fab4-37ff-4566-97e5-19c5d58a4c22',
        title: 'New Post being saved',
        rating: 10,
        created: DateTime.parse('2020-11-12T03:15:48-08:00'));
    await dataStore.save(post);
  });

  test('Saving a model with predicate executes successfully', () async {
    dataStoreChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == "save") {
        expect(
            methodCall.arguments,
            await getJsonFromFile(
                'save_api/request/instance_with_predicate.json'));
      }
    });
    Post post = Post(
        id: 'a7a22ef5-554c-48c5-bb79-d9cd6dd0ee83',
        title: 'New Post with predicate',
        rating: 10,
        created: DateTime.parse('2020-11-12T05:08:21-08:00'));
    await dataStore.save(post, when: Post.RATING.eq(5));
  });

  test(
      'A PlatformException for malformed request results in the corresponding DataStoreError',
      () async {
    dataStoreChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      throw PlatformException(
          code: "AMPLIFY_EXCEPTION",
          message: "AMPLIFY_REQUEST_MALFORMED",
          details: {});
    });
    expect(
        () => dataStore.query(Post.classType),
        throwsA(isA<DataStoreError>().having(
          (error) => error.cause,
          "error message",
          "AMPLIFY_REQUEST_MALFORMED",
        )));
  });

  test(
      'A PlatformException for a failed API call results in the corresponding DataStoreError',
      () async {
    dataStoreChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      throw PlatformException(
          code: "AMPLIFY_EXCEPTION",
          message: "AMPLIFY_DATASTORE_SAVE_FAILED",
          details: {});
    });
    expect(
        () => dataStore.query(Post.classType),
        throwsA(isA<DataStoreError>().having(
          (error) => error.cause,
          "error message",
          "AMPLIFY_DATASTORE_SAVE_FAILED",
        )));
  });

  test(
      'An unrecognized PlatformException results in the corresponding DataStoreError',
      () async {
    dataStoreChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      throw PlatformException(
          code: "AMPLIFY_EXCEPTION",
          message: "An unrecognized message",
          details: {});
    });
    expect(
        () => dataStore.query(Post.classType),
        throwsA(isA<DataStoreError>().having((error) => error.cause,
            "error message", "UNRECOGNIZED_DATASTORE_ERROR")));
  });
}

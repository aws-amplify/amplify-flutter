import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter_test/flutter_test.dart';

import 'setup_utils.dart';

enum DataStoreOperation {
  query,
  save,
  observe,
  delete,
}

/// test standard datastore model operations (save, query, observe, delete)
///
/// [skips] can be used to skip operations that are currently not working as intended
testModelOperations<T extends Model>({
  required List<T> models,
  required Future<List<T>> query(),
  required Stream<SubscriptionEvent<T>> observe(),
  Map<DataStoreOperation, bool> skips = const {},
}) {
  late Future<List<SubscriptionEvent<T>>> eventsFuture;

  setUpAll(() async {
    await configureDataStore();
    await Amplify.DataStore.clear();
    eventsFuture = observe().take(5).toList();
  });

  testWidgets('precondition', (WidgetTester tester) async {
    var queriedModels = await query();
    expect(queriedModels, isEmpty);
  });

  testWidgets(
    'save',
    (WidgetTester tester) async {
      for (var model in models) {
        await Amplify.DataStore.save(model);
      }
      var queriedModels = await query();
      expect(queriedModels, isNotEmpty);
    },
    skip: skips[DataStoreOperation.save],
  );

  testWidgets(
    'query',
    (WidgetTester tester) async {
      var queriedModels = await query();
      expect(queriedModels, isNotEmpty);
      for (var model in models) {
        expect(queriedModels.contains(model), isTrue);
      }
    },
    skip: skips[DataStoreOperation.query],
  );

  testWidgets(
    'observe',
    (WidgetTester tester) async {
      var events = await eventsFuture;
      for (var event in events) {
        if (!models.contains(event.item)) {
          fail('Could not find model ${event.item} in models: $models');
        }
      }
    },
    skip: skips[DataStoreOperation.observe],
    timeout: Timeout(Duration(seconds: 10)),
  );

  testWidgets(
    'delete',
    (WidgetTester tester) async {
      for (var model in models) {
        await Amplify.DataStore.delete(model);
      }
      var queriedModels = await query();
      expect(queriedModels, isEmpty);
    },
    skip: skips[DataStoreOperation.delete],
  );
}

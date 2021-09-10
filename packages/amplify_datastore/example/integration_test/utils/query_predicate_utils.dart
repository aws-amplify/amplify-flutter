import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter_test/flutter_test.dart';

import 'model_utils.dart';

Future<void> testQueryPredicate<T extends Model>({
  required QueryPredicate queryPredicate,
  required List<T> expectedModels,
}) async {
  var classType = getModelType<T>();
  var actualModels = await Amplify.DataStore.query(
    classType,
    where: queryPredicate,
  );
  expect(actualModels, unorderedEquals(expectedModels));
}

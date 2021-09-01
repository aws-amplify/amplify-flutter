import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_datastore_example/models/ModelProvider.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';

ModelType<T> getModelType<T extends Model>() {
  return ModelProvider.instance.getModelTypeByModelName(T.toString())
      as ModelType<T>;
}

Future<void> testQueryPredicate<T extends Model>({
  required QueryPredicate queryPredicate,
  required List<T> expectedModels,
}) async {
  var classType = getModelType<T>();
  var actualModels = await Amplify.DataStore.query(
    classType,
    where: queryPredicate,
  );
  expect(ListEquality().equals(actualModels, expectedModels), isTrue);
}

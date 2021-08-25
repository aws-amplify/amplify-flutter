import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_datastore_example/models/ModelProvider.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';

testQueryPredicate<T extends Model>({
  required ModelType<T> classType,
  required QueryPredicate queryPredicate,
  required List<T> expectedModels,
}) async {
  var actualModels = await Amplify.DataStore.query(
    classType,
    where: queryPredicate,
  );
  expect(ListEquality().equals(actualModels, expectedModels), isTrue);
}

testStringQueryPredicate({
  required QueryPredicate queryPredicate,
  required List<StringTypeModel> expectedModels,
}) =>
    testQueryPredicate<StringTypeModel>(
      classType: StringTypeModel.classType,
      queryPredicate: queryPredicate,
      expectedModels: expectedModels,
    );

testIntQueryPredicate({
  required QueryPredicate queryPredicate,
  required List<IntTypeModel> expectedModels,
}) =>
    testQueryPredicate<IntTypeModel>(
      classType: IntTypeModel.classType,
      queryPredicate: queryPredicate,
      expectedModels: expectedModels,
    );

testDoubleQueryPredicate({
  required QueryPredicate queryPredicate,
  required List<DoubleTypeModel> expectedModels,
}) =>
    testQueryPredicate<DoubleTypeModel>(
      classType: DoubleTypeModel.classType,
      queryPredicate: queryPredicate,
      expectedModels: expectedModels,
    );

testBoolQueryPredicate({
  required QueryPredicate queryPredicate,
  required List<BoolTypeModel> expectedModels,
}) =>
    testQueryPredicate<BoolTypeModel>(
      classType: BoolTypeModel.classType,
      queryPredicate: queryPredicate,
      expectedModels: expectedModels,
    );

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:tuple/tuple.dart';

import '../utils/setup_utils.dart';
import '../utils/test_cloud_synced_model_operation.dart';
import 'models/basic_custom_pk_model_operation/ModelProvider.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  final enableCloudSync = shouldEnableCloudSync();
  const delayDuration = Duration(seconds: 1);
  group(
      'Basic model (with Custom PK) operation${enableCloudSync ? ' with API sync 🌩 enabled' : ''} -',
      () {
    // schema
    // type CpkInventory @model {
    //   productId: ID! @primaryKey(sortKeyFields: ["productName", "warehouseId"])
    //   productName: String!
    //   warehouseId: String!
    //   description: String
    // }

    final testModel = CpkInventory(
      productId: UUID.getUUID(),
      productName: 'test product',
      warehouseId: UUID.getUUID(),
    );

    setUpAll(() async {
      await configureDataStore(
        enableCloudSync: enableCloudSync,
        modelProvider: ModelProvider.instance,
      );
    });

    testWidgets(
        'should save a new model ${enableCloudSync ? 'and sync to cloud' : ''}',
        (WidgetTester tester) async {
      if (enableCloudSync) {
        await testCloudSyncedModelOperation(
          rootModels: [testModel],
          expectedRootModelVersion: 1,
          rootModelOperator: Amplify.DataStore.save,
          rootModelEventsAssertor: (events) {
            events.forEach((event) {
              expect(event.element.deleted, isFalse);
            });
          },
        );
      } else {
        await Amplify.DataStore.save(testModel);
      }

      var queriedBlogs = await Amplify.DataStore.query(CpkInventory.classType);
      expect(queriedBlogs, contains(testModel));
    });

    testWidgets('query by eq(modelIdentifier) should return a single model',
        (WidgetTester tester) async {
      final eqResult = await Amplify.DataStore.query(
        CpkInventory.classType,
        where: CpkInventory.MODEL_IDENTIFIER.eq(testModel.modelIdentifier),
      );

      expect(eqResult.length, 1);
      expect(eqResult.first, testModel);
    });

    testWidgets('query by ne(modelIdentifier) should return empty list',
        (WidgetTester tester) async {
      final eqResult = await Amplify.DataStore.query(
        CpkInventory.classType,
        where: CpkInventory.MODEL_IDENTIFIER.ne(testModel.modelIdentifier),
      );

      expect(eqResult, isEmpty);
    });

    // TODO: enable after amplify-ios fix the not operator
    // testWidgets('query by not(eq(modelIdentifier)) should return empty list',
    //     (WidgetTester tester) async {
    //   final eqResult = await Amplify.DataStore.query(
    //     CpkInventory.classType,
    //     where: not(CpkInventory.MODEL_IDENTIFIER.eq(testModel.modelIdentifier)),
    //   );

    //   expect(eqResult, isEmpty);
    // });

    // testWidgets(
    //     'query by not(ne(modelIdentifier)) should return a single model',
    //     (WidgetTester tester) async {
    //   final eqResult = await Amplify.DataStore.query(
    //     CpkInventory.classType,
    //     where: not(CpkInventory.MODEL_IDENTIFIER.ne(testModel.modelIdentifier)),
    //   );

    //   expect(eqResult.length, 1);
    //   expect(eqResult.first, testModel);
    // });

    testWidgets(
      'should update existing model ${enableCloudSync ? 'and sync to cloud' : ''}',
      (WidgetTester tester) async {
        var updatedTestModel =
            testModel.copyWith(description: "Newly added description");

        if (enableCloudSync) {
          await testCloudSyncedModelOperation(
            rootModels: [updatedTestModel],
            expectedRootModelVersion: 2,
            rootModelOperator: Amplify.DataStore.save,
            rootModelEventsAssertor: (events) {
              events.forEach((event) {
                expect(event.element.deleted, isFalse);
              });
            },
          );
        } else {
          await Amplify.DataStore.save(updatedTestModel);
        }

        var queriedBlogs = await Amplify.DataStore.query(
          CpkInventory.classType,
          where: CpkInventory.MODEL_IDENTIFIER.eq(
            updatedTestModel.modelIdentifier,
          ),
        );

        expect(queriedBlogs.length, 1);
        expect(queriedBlogs.first, updatedTestModel);
      },
    );

    testWidgets(
      'should delete existing model ${enableCloudSync ? 'and sync to cloud' : ''}',
      (WidgetTester tester) async {
        if (enableCloudSync) {
          await testCloudSyncedModelOperation(
            rootModels: [testModel],
            expectedRootModelVersion: 3,
            rootModelOperator: Amplify.DataStore.delete,
            rootModelEventsAssertor: (events) {
              events.forEach((event) {
                expect(event.element.deleted, isTrue);
              });
            },
          );
        } else {
          await Amplify.DataStore.delete(testModel);
        }

        var queriedBlogs =
            await Amplify.DataStore.query(CpkInventory.classType);

        // verify blog was deleted
        expect(queriedBlogs, isNot(contains(testModel)));
      },
    );

    testWidgets('observe by model identifier should work',
        (WidgetTester tester) async {
      final updatedTestModel =
          testModel.copyWith(description: "updated description");
      final modelWithDifferentIdentifier = CpkInventory(
        productId: UUID.getUUID(),
        productName: 'product with different model identifier',
        warehouseId: UUID.getUUID(),
      );

      final observeStream = Amplify.DataStore.observe(
        CpkInventory.classType,
        where: CpkInventory.MODEL_IDENTIFIER.eq(testModel.modelIdentifier),
      ).map((event) => Tuple2(event.eventType, event.item));

      expectLater(
        observeStream,
        emitsInOrder([
          Tuple2(EventType.create, testModel),
          Tuple2(EventType.update, updatedTestModel),
          Tuple2(EventType.delete, updatedTestModel),
        ]),
      );

      await Future.delayed(delayDuration);
      await Amplify.DataStore.save(testModel);
      await Amplify.DataStore.save(modelWithDifferentIdentifier);
      await Future.delayed(delayDuration);
      await Amplify.DataStore.save(updatedTestModel);
      await Amplify.DataStore.delete(modelWithDifferentIdentifier);
      await Future.delayed(delayDuration);
      await Amplify.DataStore.delete(updatedTestModel);
    });

    testWidgets('observeQuery by model identifier should work',
        (WidgetTester tester) async {
      final updatedTestModel =
          testModel.copyWith(description: "updated description");
      final modelWithDifferentIdentifier = CpkInventory(
        productId: UUID.getUUID(),
        productName: 'product with different model identifier',
        warehouseId: UUID.getUUID(),
      );

      final observeStream = Amplify.DataStore.observeQuery(
        CpkInventory.classType,
        where: CpkInventory.MODEL_IDENTIFIER.eq(testModel.modelIdentifier),
      ).map(
        (querySnapshot) => Tuple2(
          querySnapshot.isSynced,
          querySnapshot.items.length > 0 ? querySnapshot.items.first : null,
        ),
      );

      expectLater(
        observeStream,
        emitsInOrder([
          Tuple2(enableCloudSync, null),
          Tuple2(enableCloudSync, testModel),
          Tuple2(enableCloudSync, updatedTestModel),
          Tuple2(enableCloudSync, null),
        ]),
      );

      await Future.delayed(delayDuration);
      await Amplify.DataStore.save(testModel);
      await Amplify.DataStore.save(modelWithDifferentIdentifier);
      await Future.delayed(delayDuration);
      await Amplify.DataStore.save(updatedTestModel);
      await Amplify.DataStore.delete(modelWithDifferentIdentifier);
      await Future.delayed(delayDuration);
      await Amplify.DataStore.delete(updatedTestModel);
    });
  });
}

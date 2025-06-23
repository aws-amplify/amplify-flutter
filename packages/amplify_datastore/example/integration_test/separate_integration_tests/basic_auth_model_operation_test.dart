// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import '../utils/setup_utils.dart';
import '../utils/test_cloud_synced_model_operation.dart';
import 'models/auth/ModelProvider.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  final enableCloudSync = shouldEnableCloudSync();
  group(
    'Basic auth model operation${enableCloudSync ? ' with API sync 🌩 enabled' : ''} -',
    () {
      setUpAll(() async {
        await configureDataStore(
          enableCloudSync: enableCloudSync,
          modelProvider: ModelProvider.instance,
        );
      });
      tearDownAll(() async {
        if (enableCloudSync) {
          await deleteTestUser(testUser);
        }
      });

      group("owner only auth model", () {
        PrivateTodo testPrivateTodo = PrivateTodo(content: 'test content');
        testWidgets(
          'should save a new model ${enableCloudSync ? 'and sync to cloud' : ''}',
          (WidgetTester tester) async {
            if (enableCloudSync) {
              await testCloudSyncedModelOperation(
                rootModels: [testPrivateTodo],
                expectedRootModelVersion: 1,
                rootModelOperator: Amplify.DataStore.save,
                rootModelEventsAssertor: (events) {
                  events.forEach((event) {
                    expect(event.element.deleted, isFalse);
                  });
                },
              );
            } else {
              await Amplify.DataStore.save(testPrivateTodo);
            }

            var queriedTodos = await Amplify.DataStore.query(
              PrivateTodo.classType,
            );
            expect(queriedTodos, contains(testPrivateTodo));
          },
        );

        testWidgets(
          'should update existing model ${enableCloudSync ? 'and sync to cloud' : ''}',
          (WidgetTester tester) async {
            var updatedTestTodo = testPrivateTodo.copyWith(
              content: "updated test todo",
            );

            if (enableCloudSync) {
              await testCloudSyncedModelOperation(
                rootModels: [updatedTestTodo],
                expectedRootModelVersion: 2,
                rootModelOperator: Amplify.DataStore.save,
                rootModelEventsAssertor: (events) {
                  events.forEach((event) {
                    expect(event.element.deleted, isFalse);
                  });
                },
              );
            } else {
              await Amplify.DataStore.save(updatedTestTodo);
            }

            var queriedTodos = await Amplify.DataStore.query(
              PrivateTodo.classType,
              where: PrivateTodo.ID.eq(updatedTestTodo.id),
            );

            expect(queriedTodos, contains(updatedTestTodo));
          },
        );

        testWidgets(
          'should delete existing model ${enableCloudSync ? 'and sync to cloud' : ''}',
          (WidgetTester tester) async {
            if (enableCloudSync) {
              await testCloudSyncedModelOperation(
                rootModels: [testPrivateTodo],
                expectedRootModelVersion: 3,
                rootModelOperator: Amplify.DataStore.delete,
                rootModelEventsAssertor: (events) {
                  events.forEach((event) {
                    expect(event.element.deleted, isTrue);
                  });
                },
              );
            } else {
              await Amplify.DataStore.delete(testPrivateTodo);
            }

            var queriedTodos = await Amplify.DataStore.query(
              PrivateTodo.classType,
            );

            // verify Todo was deleted
            expect(queriedTodos, isNot(contains(testPrivateTodo)));
          },
        );
      });

      group("multi auth model", () {
        MultiAuthTodo testMultiAuthTodo = MultiAuthTodo(
          content: 'test content',
        );

        testWidgets(
          'should save a new model ${enableCloudSync ? 'and sync to cloud' : ''}',
          (WidgetTester tester) async {
            if (enableCloudSync) {
              await testCloudSyncedModelOperation(
                rootModels: [testMultiAuthTodo],
                expectedRootModelVersion: 1,
                rootModelOperator: Amplify.DataStore.save,
                rootModelEventsAssertor: (events) {
                  events.forEach((event) {
                    expect(event.element.deleted, isFalse);
                  });
                },
              );
            } else {
              await Amplify.DataStore.save(testMultiAuthTodo);
            }

            var queriedTodos = await Amplify.DataStore.query(
              MultiAuthTodo.classType,
            );
            expect(queriedTodos, contains(testMultiAuthTodo));
          },
        );

        testWidgets(
          'should update existing model ${enableCloudSync ? 'and sync to cloud' : ''}',
          (WidgetTester tester) async {
            var updatedTestTodo = testMultiAuthTodo.copyWith(
              content: "updated test todo",
            );

            if (enableCloudSync) {
              await testCloudSyncedModelOperation(
                rootModels: [updatedTestTodo],
                expectedRootModelVersion: 2,
                rootModelOperator: Amplify.DataStore.save,
                rootModelEventsAssertor: (events) {
                  events.forEach((event) {
                    expect(event.element.deleted, isFalse);
                  });
                },
              );
            } else {
              await Amplify.DataStore.save(updatedTestTodo);
            }

            var queriedTodos = await Amplify.DataStore.query(
              MultiAuthTodo.classType,
              where: MultiAuthTodo.ID.eq(updatedTestTodo.id),
            );

            expect(queriedTodos, contains(updatedTestTodo));
          },
        );

        testWidgets(
          'should delete existing model ${enableCloudSync ? 'and sync to cloud' : ''}',
          (WidgetTester tester) async {
            if (enableCloudSync) {
              await testCloudSyncedModelOperation(
                rootModels: [testMultiAuthTodo],
                expectedRootModelVersion: 3,
                rootModelOperator: Amplify.DataStore.delete,
                rootModelEventsAssertor: (events) {
                  events.forEach((event) {
                    expect(event.element.deleted, isTrue);
                  });
                },
              );
            } else {
              await Amplify.DataStore.delete(testMultiAuthTodo);
            }

            var queriedTodos = await Amplify.DataStore.query(
              MultiAuthTodo.classType,
            );

            // verify Todo was deleted
            expect(queriedTodos, isNot(contains(testMultiAuthTodo)));
          },
        );
      });
    },
  );
}

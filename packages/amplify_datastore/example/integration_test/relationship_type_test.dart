/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import 'package:amplify_datastore_example/models/ModelProvider.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_flutter/amplify.dart';

import 'utils/setup_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('realtionship type', () {
    group('HasOne', () {
      var child = ChildModel(name: 'child');
      var parent = HasOneModel(name: 'HasOne', child: child, childID: child.id);
      late Future<SubscriptionEvent<ChildModel>> belongsToEvent;
      late Future<SubscriptionEvent<HasOneModel>> hasOneEvent;

      setUpAll(() async {
        await configureDataStore();
        await Amplify.DataStore.clear();

        belongsToEvent = Amplify.DataStore.observe(ChildModel.classType).first;
        hasOneEvent = Amplify.DataStore.observe(HasOneModel.classType).first;
      });

      testWidgets('precondition', (WidgetTester tester) async {
        var queriedChildren =
            await Amplify.DataStore.query(ChildModel.classType);
        expect(queriedChildren, isEmpty);
        var queriedParents =
            await Amplify.DataStore.query(HasOneModel.classType);
        expect(queriedParents, isEmpty);
      });

      testWidgets('save child', (WidgetTester tester) async {
        await Amplify.DataStore.save(child);
        var children = await Amplify.DataStore.query(ChildModel.classType);
        expect(children, isNotEmpty);
      });

      testWidgets('save parent', (WidgetTester tester) async {
        await Amplify.DataStore.save(parent);
        var parents = await Amplify.DataStore.query(HasOneModel.classType);
        expect(parents, isNotEmpty);
      });

      testWidgets('query parent', (WidgetTester tester) async {
        var parents = await Amplify.DataStore.query(HasOneModel.classType);
        var queriedParent = parents.first;
        // hasOne relationships do not return the child, so an exact match cannot be performed
        // to be updated if/when https://github.com/aws-amplify/amplify-flutter/issues/642 is fully resolved
        expect(queriedParent.id, parent.id);
        expect(queriedParent.name, parent.name);
      });

      testWidgets('query child', (WidgetTester tester) async {
        var children = await Amplify.DataStore.query(ChildModel.classType);
        var queriedChild = children.first;
        expect(queriedChild, child);
      });

      testWidgets('observe parent', (WidgetTester tester) async {
        var event = await hasOneEvent;
        var observedParent = event.item;
        // hasOne relationships in iOS do not return the child, so an exact match cannot be performed
        // to be updated if/when https://github.com/aws-amplify/amplify-flutter/issues/642 is fully resolved
        expect(observedParent.id, parent.id);
        expect(observedParent.name, parent.name);
      });

      testWidgets('observe child', (WidgetTester tester) async {
        var event = await belongsToEvent;
        var observedChild = event.item;
        expect(observedChild, child);
      });

      testWidgets(
        'delete parent',
        (WidgetTester tester) async {
          await Amplify.DataStore.delete(parent);
          var parents = await Amplify.DataStore.query(HasOneModel.classType);
          expect(parents, isEmpty);
        },
        // unskip when https://github.com/aws-amplify/amplify-flutter/issues/818 is resolved
        skip: true,
      );

      testWidgets('delete child', (WidgetTester tester) async {
        await Amplify.DataStore.delete(child);
        var children = await Amplify.DataStore.query(ChildModel.classType);
        expect(children, isEmpty);
      });
    });

    group('BelongsTo', () {
      var child = ChildModel(name: 'child');
      var parent = BelongsToModel(name: 'HasOne', child: child);
      late Future<SubscriptionEvent<ChildModel>> belongsToEvent;
      late Future<SubscriptionEvent<BelongsToModel>> hasOneEvent;

      setUpAll(() async {
        await configureDataStore();
        await Amplify.DataStore.clear();

        belongsToEvent = Amplify.DataStore.observe(ChildModel.classType).first;
        hasOneEvent = Amplify.DataStore.observe(BelongsToModel.classType).first;
      });

      testWidgets('precondition', (WidgetTester tester) async {
        var queriedChildren =
            await Amplify.DataStore.query(ChildModel.classType);
        expect(queriedChildren, isEmpty);
        var queriedParents =
            await Amplify.DataStore.query(BelongsToModel.classType);
        expect(queriedParents, isEmpty);
      });

      testWidgets('save child', (WidgetTester tester) async {
        await Amplify.DataStore.save(child);
        var children = await Amplify.DataStore.query(ChildModel.classType);
        expect(children, isNotEmpty);
      });

      testWidgets('save parent', (WidgetTester tester) async {
        await Amplify.DataStore.save(parent);
        var parents = await Amplify.DataStore.query(BelongsToModel.classType);
        expect(parents, isNotEmpty);
      });

      testWidgets('query parent', (WidgetTester tester) async {
        var parents = await Amplify.DataStore.query(BelongsToModel.classType);
        var queriedParent = parents.first;
        expect(queriedParent, parent);
        expect(queriedParent.child, child);
      });

      testWidgets('query child', (WidgetTester tester) async {
        var children = await Amplify.DataStore.query(ChildModel.classType);
        var queriedChild = children.first;
        expect(queriedChild, child);
      });

      testWidgets('observe parent', (WidgetTester tester) async {
        var event = await hasOneEvent;
        var observedParent = event.item;
        expect(observedParent, parent);
        expect(observedParent.child, child);
      });

      testWidgets('observe child', (WidgetTester tester) async {
        var event = await belongsToEvent;
        var observedChild = event.item;
        expect(observedChild, child);
      });

      testWidgets('delete parent', (WidgetTester tester) async {
        await Amplify.DataStore.delete(parent);
        var parents = await Amplify.DataStore.query(BelongsToModel.classType);
        expect(parents, isEmpty);
      });

      testWidgets('delete child', (WidgetTester tester) async {
        await Amplify.DataStore.delete(child);
        var children = await Amplify.DataStore.query(ChildModel.classType);
        expect(children, isEmpty);
      });
    });
  });
}

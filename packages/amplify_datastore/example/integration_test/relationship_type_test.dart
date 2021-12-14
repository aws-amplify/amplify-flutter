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

  group('relationship type', () {
    group('HasOne', () {
      var child = ChildModel(name: 'child');
      var parent = HasOneModel(name: 'HasOne', child: child, childID: child.id);
      late Future<SubscriptionEvent<ChildModel>> belongsToEvent;
      late Future<SubscriptionEvent<HasOneModel>> hasOneEvent;

      setUpAll(() async {
        await configureDataStore();
        await clearDataStore();

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
        var queriedParent = parents.single;
        // hasOne relationships do not return the child, so an exact match cannot be performed
        // to be updated if/when https://github.com/aws-amplify/amplify-flutter/issues/642 is fully resolved
        expect(queriedParent.id, parent.id);
        expect(queriedParent.name, parent.name);
      });

      testWidgets('query child', (WidgetTester tester) async {
        var children = await Amplify.DataStore.query(ChildModel.classType);
        var queriedChild = children.single;
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
      var relationshipParent = ChildModel(name: 'child');
      var relationshipChild =
          BelongsToModel(name: 'BelongsTo', child: relationshipParent);
      late Future<SubscriptionEvent<ChildModel>> belongsToEvent;
      late Future<SubscriptionEvent<BelongsToModel>> hasOneEvent;

      setUpAll(() async {
        await configureDataStore();
        await clearDataStore();

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

      testWidgets('save relationshipParent', (WidgetTester tester) async {
        await Amplify.DataStore.save(relationshipParent);
        var children = await Amplify.DataStore.query(ChildModel.classType);
        expect(children, isNotEmpty);
      });

      testWidgets('save relationshipChild', (WidgetTester tester) async {
        await Amplify.DataStore.save(relationshipChild);
        var parents = await Amplify.DataStore.query(BelongsToModel.classType);
        expect(parents, isNotEmpty);
      });

      testWidgets('query relationshipChild', (WidgetTester tester) async {
        var parents = await Amplify.DataStore.query(BelongsToModel.classType);
        var queriedParent = parents.single;
        expect(queriedParent, relationshipChild);
        expect(queriedParent.child, relationshipParent);
      });

      testWidgets('query relationshipParent', (WidgetTester tester) async {
        var children = await Amplify.DataStore.query(ChildModel.classType);
        var queriedChild = children.single;
        expect(queriedChild, relationshipParent);
      });

      testWidgets('observe relationshipChild', (WidgetTester tester) async {
        var event = await hasOneEvent;
        var observedParent = event.item;
        expect(observedParent, relationshipChild);
        expect(observedParent.child, relationshipParent);
      });

      testWidgets('observe relationshipParent', (WidgetTester tester) async {
        var event = await belongsToEvent;
        var observedChild = event.item;
        expect(observedChild, relationshipParent);
      });

      testWidgets(
          'delete relationshipParent (cascade delete relationshipChild)',
          (WidgetTester tester) async {
        await Amplify.DataStore.delete(relationshipParent);
        var children = await Amplify.DataStore.query(ChildModel.classType);
        expect(children, isEmpty);
        var parent = await Amplify.DataStore.query(BelongsToModel.classType);
        expect(parent, isEmpty);
      });
    });

    group('HasMany', () {
      var parent = HasManyModel(name: 'HasMany');
      var children = List.generate(
          5, (i) => HasManyChildModel(name: 'child $i', parent: parent));
      late Future<List<SubscriptionEvent<HasManyChildModel>>> childEvents;
      late Future<SubscriptionEvent<HasManyModel>> hasManyEvent;

      setUpAll(() async {
        await configureDataStore();
        await clearDataStore();

        childEvents = Amplify.DataStore.observe(HasManyChildModel.classType)
            .take(children.length)
            .toList();

        hasManyEvent = Amplify.DataStore.observe(HasManyModel.classType).first;
      });

      testWidgets('precondition', (WidgetTester tester) async {
        var queriedChildren =
            await Amplify.DataStore.query(HasManyChildModel.classType);
        expect(queriedChildren, isEmpty);
        var queriedParents =
            await Amplify.DataStore.query(HasManyModel.classType);
        expect(queriedParents, isEmpty);
      });

      testWidgets('save parent', (WidgetTester tester) async {
        await Amplify.DataStore.save(parent);
        var parents = await Amplify.DataStore.query(HasManyModel.classType);
        expect(parents, isNotEmpty);
      });

      testWidgets('save children', (WidgetTester tester) async {
        for (var child in children) {
          await Amplify.DataStore.save(child);
        }
        var queriedChildren =
            await Amplify.DataStore.query(HasManyChildModel.classType);
        expect(queriedChildren, isNotEmpty);
      });

      testWidgets('query parent', (WidgetTester tester) async {
        var parents = await Amplify.DataStore.query(HasManyModel.classType);
        var queriedParent = parents.single;
        expect(queriedParent, parent);
        expect(queriedParent.id, parent.id);
        expect(queriedParent.name, parent.name);
      });

      testWidgets('query children', (WidgetTester tester) async {
        var queriedChildren =
            await Amplify.DataStore.query(HasManyChildModel.classType);
        for (var i = 0; i < children.length; i++) {
          var queriedChild = queriedChildren[i];
          var actualChild = children[i];
          expect(queriedChild, actualChild);
          expect(queriedChild.parent, actualChild.parent);
        }
      });

      testWidgets('observe parent', (WidgetTester tester) async {
        var event = await hasManyEvent;
        var observedParent = event.item;
        // full equality check can be performed since the parent has null children
        // and queries return null for nested hasMany data
        // this may need to be updated if/when https://github.com/aws-amplify/amplify-flutter/issues/642 is fully resolved
        expect(observedParent, parent);
      });

      testWidgets('observe children', (WidgetTester tester) async {
        var events = await childEvents;
        for (var i = 0; i < children.length; i++) {
          var event = events[i];
          var eventType = event.eventType;
          var observedChild = event.item;
          var actualChild = children[i];
          expect(eventType, EventType.create);
          expect(observedChild, actualChild);
          expect(observedChild.parent, actualChild.parent);
        }
      });

      testWidgets('delete parent (cascade delete children)',
          (WidgetTester tester) async {
        await Amplify.DataStore.delete(parent);
        var parents = await Amplify.DataStore.query(HasManyModel.classType);
        expect(parents, isEmpty);
        var queriedChildren =
            await Amplify.DataStore.query(HasManyChildModel.classType);
        expect(queriedChildren, isEmpty);
      });
    });

    group('HasMany (cascade save)', () {
      var children =
          List.generate(5, (i) => HasManyChildModel(name: 'child $i'));
      var parent = HasManyModel(name: 'HasMany', children: children);
      late Future<List<SubscriptionEvent<HasManyChildModel>>> childEvents;
      late Future<SubscriptionEvent<HasManyModel>> hasManyEvent;

      setUpAll(() async {
        await configureDataStore();
        await clearDataStore();

        childEvents = Amplify.DataStore.observe(HasManyChildModel.classType)
            .take(children.length)
            .toList();
        hasManyEvent = Amplify.DataStore.observe(HasManyModel.classType).first;
      });

      testWidgets('precondition', (WidgetTester tester) async {
        var queriedChildren =
            await Amplify.DataStore.query(HasManyChildModel.classType);
        expect(queriedChildren, isEmpty);
        var queriedParents =
            await Amplify.DataStore.query(HasManyModel.classType);
        expect(queriedParents, isEmpty);
      });

      testWidgets('save children', (WidgetTester tester) async {
        for (var child in children) {
          await Amplify.DataStore.save(child);
        }
        var queriedChildren =
            await Amplify.DataStore.query(HasManyChildModel.classType);
        expect(queriedChildren, isNotEmpty);
      });

      testWidgets('save parent', (WidgetTester tester) async {
        await Amplify.DataStore.save(parent);
        var parents = await Amplify.DataStore.query(HasManyModel.classType);
        expect(parents, isNotEmpty);
      });

      testWidgets('query parent', (WidgetTester tester) async {
        var parents = await Amplify.DataStore.query(HasManyModel.classType);
        var queriedParent = parents.single;
        // an equality check such as `expect(queriedParent, parent);`
        // cannot be performed since parent has non-null children
        // but queries do not return hasMany nested models
        // to be updated if/when https://github.com/aws-amplify/amplify-flutter/issues/642 is fully resolved
        expect(queriedParent.id, parent.id);
        expect(queriedParent.name, parent.name);
      });

      testWidgets('query children', (WidgetTester tester) async {
        var queriedChildren =
            await Amplify.DataStore.query(HasManyChildModel.classType);
        for (var i = 0; i < children.length; i++) {
          var queriedChild = queriedChildren[i];
          var actualChild = children[i];
          // an equality check such as `expect(queriedChild, actualChild);`
          // cannot be performed without cascade save
          // see: https://github.com/aws-amplify/amplify-flutter/issues/820
          expect(queriedChild.id, actualChild.id);
          expect(queriedChild.name, actualChild.name);
        }
      });

      testWidgets('observe parent', (WidgetTester tester) async {
        var event = await hasManyEvent;
        var observedParent = event.item;
        expect(observedParent.id, parent.id);
        expect(observedParent.name, parent.name);
      });

      testWidgets('observe children', (WidgetTester tester) async {
        var events = await childEvents;
        for (var i = 0; i < children.length; i++) {
          var event = events[i];
          var eventType = event.eventType;
          var observedChild = event.item;
          var actualChild = children[i];
          expect(eventType, EventType.create);
          expect(observedChild, actualChild);
          expect(observedChild.parent, actualChild.parent);
        }
      });

      testWidgets('delete parent', (WidgetTester tester) async {
        await Amplify.DataStore.delete(parent);
        var parents = await Amplify.DataStore.query(HasManyModel.classType);
        expect(parents, isEmpty);
      });

      testWidgets('delete children', (WidgetTester tester) async {
        for (var child in children) {
          await Amplify.DataStore.delete(child);
        }
        var queriedChildren =
            await Amplify.DataStore.query(HasManyChildModel.classType);
        expect(queriedChildren, isEmpty);
      });
    });
  });
}

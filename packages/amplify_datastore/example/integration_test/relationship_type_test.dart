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
import 'package:amplify_flutter/amplify_flutter.dart';

import 'utils/setup_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('relationship type', () {
    group('HasOne (parent refers to child with implicit connection field)', () {
      // schema
      // type HasOneParent @model {
      //   id: ID!
      //   name: String
      //   implicitChild: HasOneChild @hasOne
      // }
      // type HasOneChild @model {
      //   id: ID!
      //   name: String
      // }
      var child = HasOneChild(name: 'child');
      // Curretly with @hasOne, parent -> child relationship is created
      // by assign child.id to the connection field of the parent
      // the connection field is automatically generated when the child
      // is implicitly referred in the schema
      var parent = HasOneParent(
          name: 'HasOne (implicit)', hasOneParentImplicitChildId: child.id);
      late Future<SubscriptionEvent<HasOneChild>> childEvent;
      late Future<SubscriptionEvent<HasOneParent>> parentEvent;

      setUpAll(() async {
        await configureDataStore();
        await clearDataStore();

        childEvent = Amplify.DataStore.observe(HasOneChild.classType).first;
        parentEvent = Amplify.DataStore.observe(HasOneParent.classType).first;
      });

      testWidgets('precondition', (WidgetTester tester) async {
        var queriedChildren =
            await Amplify.DataStore.query(HasOneChild.classType);
        expect(queriedChildren, isEmpty);
        var queriedParents =
            await Amplify.DataStore.query(HasOneParent.classType);
        expect(queriedParents, isEmpty);
      });

      testWidgets('save child', (WidgetTester tester) async {
        await Amplify.DataStore.save(child);
        var children = await Amplify.DataStore.query(HasOneChild.classType);
        expect(children, isNotEmpty);
      });

      testWidgets('save parent', (WidgetTester tester) async {
        await Amplify.DataStore.save(parent);
        var parents = await Amplify.DataStore.query(HasOneParent.classType);
        expect(parents, isNotEmpty);
      });

      testWidgets('query parent', (WidgetTester tester) async {
        var parents = await Amplify.DataStore.query(HasOneParent.classType);
        var queriedParent = parents.single;
        // hasOne relationships do not return the child, so an exact match cannot be performed
        // to be updated if/when https://github.com/aws-amplify/amplify-flutter/issues/642 is fully resolved
        expect(queriedParent.id, parent.id);
        expect(queriedParent.name, parent.name);
        expect(queriedParent.hasOneParentImplicitChildId, child.id);
      });

      testWidgets('query child', (WidgetTester tester) async {
        var children = await Amplify.DataStore.query(HasOneChild.classType);
        var queriedChild = children.single;
        expect(queriedChild, child);
      });

      testWidgets('observe parent', (WidgetTester tester) async {
        var event = await parentEvent;
        var observedParent = event.item;
        // hasOne relationships in iOS do not return the child, so an exact match cannot be performed
        // to be updated if/when https://github.com/aws-amplify/amplify-flutter/issues/642 is fully resolved
        expect(observedParent.id, parent.id);
        expect(observedParent.name, parent.name);
        expect(observedParent.hasOneParentImplicitChildId, child.id);
      });

      testWidgets('observe child', (WidgetTester tester) async {
        var event = await childEvent;
        var observedChild = event.item;
        expect(observedChild, child);
      });

      testWidgets(
        'delete parent',
        (WidgetTester tester) async {
          await Amplify.DataStore.delete(parent);
          var parents = await Amplify.DataStore.query(HasOneParent.classType);
          expect(parents, isEmpty);
        },
        // unskip when https://github.com/aws-amplify/amplify-flutter/issues/818 is resolved
        skip: true,
      );

      testWidgets('delete child', (WidgetTester tester) async {
        await Amplify.DataStore.delete(child);
        var children = await Amplify.DataStore.query(HasOneChild.classType);
        expect(children, isEmpty);
      });
    });

    group('HasOne (parent refers to child with explicity connection field)',
        () {
      // schema
      // type HasOneParent @model {
      //   id: ID!
      //   name: String
      //   explicitChildID: ID
      //   explicitChild: HasOneChild @hasOne(fields: ["explicitChildID"])
      // }
      // type HasOneChild @model {
      //   id: ID!
      //   name: String
      // }
      var child = HasOneChild(name: 'child');
      // Curretly with @hasOne, parent -> child relationship is created
      // by assign child.id to the connection field of the parent
      var parent =
          HasOneParent(name: 'HasOne (explicity)', explicitChildID: child.id);
      late Future<SubscriptionEvent<HasOneChild>> childEvent;
      late Future<SubscriptionEvent<HasOneParent>> parentEvent;

      setUpAll(() async {
        await configureDataStore();
        await clearDataStore();

        childEvent = Amplify.DataStore.observe(HasOneChild.classType).first;
        parentEvent = Amplify.DataStore.observe(HasOneParent.classType).first;
      });

      testWidgets('precondition', (WidgetTester tester) async {
        var queriedChildren =
            await Amplify.DataStore.query(HasOneChild.classType);
        expect(queriedChildren, isEmpty);
        var queriedParents =
            await Amplify.DataStore.query(HasOneParent.classType);
        expect(queriedParents, isEmpty);
      });

      testWidgets('save child', (WidgetTester tester) async {
        await Amplify.DataStore.save(child);
        var children = await Amplify.DataStore.query(HasOneChild.classType);
        expect(children, isNotEmpty);
      });

      testWidgets('save parent', (WidgetTester tester) async {
        await Amplify.DataStore.save(parent);
        var parents = await Amplify.DataStore.query(HasOneParent.classType);
        expect(parents, isNotEmpty);
      });

      testWidgets('query parent', (WidgetTester tester) async {
        var parents = await Amplify.DataStore.query(HasOneParent.classType);
        var queriedParent = parents.single;
        // hasOne relationships do not return the child, so an exact match cannot be performed
        // to be updated if/when https://github.com/aws-amplify/amplify-flutter/issues/642 is fully resolved
        expect(queriedParent.id, parent.id);
        expect(queriedParent.name, parent.name);
        expect(queriedParent.explicitChildID, child.id);
      });

      testWidgets('query child', (WidgetTester tester) async {
        var children = await Amplify.DataStore.query(HasOneChild.classType);
        var queriedChild = children.single;
        expect(queriedChild, child);
      });

      testWidgets('observe parent', (WidgetTester tester) async {
        var event = await parentEvent;
        var observedParent = event.item;
        // hasOne relationships in iOS do not return the child, so an exact match cannot be performed
        // to be updated if/when https://github.com/aws-amplify/amplify-flutter/issues/642 is fully resolved
        expect(observedParent.id, parent.id);
        expect(observedParent.name, parent.name);
        expect(observedParent.explicitChildID, child.id);
      });

      testWidgets('observe child', (WidgetTester tester) async {
        var event = await childEvent;
        var observedChild = event.item;
        expect(observedChild, child);
      });

      testWidgets(
        'delete parent',
        (WidgetTester tester) async {
          await Amplify.DataStore.delete(parent);
          var parents = await Amplify.DataStore.query(HasOneParent.classType);
          expect(parents, isEmpty);
        },
        // unskip when https://github.com/aws-amplify/amplify-flutter/issues/818 is resolved
        skip: true,
      );

      testWidgets('delete child', (WidgetTester tester) async {
        await Amplify.DataStore.delete(child);
        var children = await Amplify.DataStore.query(HasOneChild.classType);
        expect(children, isEmpty);
      });
    });

    group('BelongsTo (child refers to parent with implicity connection field)',
        () {
      // schema
      // type BelongsToParent @model {
      //   id: ID!
      //   name: String
      // }
      // type BelongsToChildImplicit @model {
      //   id: ID!
      //   name: String
      //   belongsToParent: BelongsToParent @belongsTo
      // }
      var parent = BelongsToParent(name: 'belongs to parent');
      var child = BelongsToChildImplicit(
          name: 'belongs to child (implicity)', belongsToParent: parent);
      late Future<SubscriptionEvent<BelongsToParent>> parentEvent;
      late Future<SubscriptionEvent<BelongsToChildImplicit>> childEvent;

      setUpAll(() async {
        await configureDataStore();
        await clearDataStore();

        parentEvent =
            Amplify.DataStore.observe(BelongsToParent.classType).first;
        childEvent =
            Amplify.DataStore.observe(BelongsToChildImplicit.classType).first;
      });

      testWidgets('precondition', (WidgetTester tester) async {
        var queriedChildren =
            await Amplify.DataStore.query(BelongsToChildImplicit.classType);
        expect(queriedChildren, isEmpty);
        var queriedParents =
            await Amplify.DataStore.query(BelongsToParent.classType);
        expect(queriedParents, isEmpty);
      });

      testWidgets('save parent', (WidgetTester tester) async {
        await Amplify.DataStore.save(parent);
        var parents = await Amplify.DataStore.query(BelongsToParent.classType);
        expect(parents, isNotEmpty);
      });

      testWidgets('save child', (WidgetTester tester) async {
        await Amplify.DataStore.save(child);
        var children =
            await Amplify.DataStore.query(BelongsToChildImplicit.classType);
        expect(children, isNotEmpty);
      });

      testWidgets('query parent', (WidgetTester tester) async {
        var parents = await Amplify.DataStore.query(BelongsToParent.classType);
        var queriedParent = parents.single;
        expect(queriedParent, parent);
      });

      testWidgets('query child', (WidgetTester tester) async {
        var children =
            await Amplify.DataStore.query(BelongsToChildImplicit.classType);
        var queriedChild = children.single;
        expect(queriedChild, child);
        expect(queriedChild.belongsToParent, parent);
      });

      testWidgets('observe parent', (WidgetTester tester) async {
        var event = await parentEvent;
        var observedParent = event.item;
        expect(observedParent, parent);
      });

      testWidgets('observe child', (WidgetTester tester) async {
        var event = await childEvent;
        var observedChild = event.item;
        expect(observedChild, child);
        expect(observedChild.belongsToParent, parent);
      });

      testWidgets('delete parent (cascade delete child)',
          (WidgetTester tester) async {
        await Amplify.DataStore.delete(parent);

        var parents = await Amplify.DataStore.query(BelongsToParent.classType);
        expect(parents, isEmpty);
        var children =
            await Amplify.DataStore.query(BelongsToChildImplicit.classType);
        expect(children, isEmpty);
      });
    });

    group('BelongsTo (child refers to parent with explicity connection field)',
        () {
      // schema
      // type BelongsToParent @model {
      //   id: ID!
      //   name: String
      // }
      // type BelongsToChildExplicit @model {
      //   id: ID!
      //   name: String
      //   belongsToParentID: ID
      //   belongsToParent: BelongsToParent @belongsTo(fields: ["belongsToParentID"])
      // }
      var parent = BelongsToParent(name: 'belongs to parent');
      var child = BelongsToChildExplicit(
          name: 'belongs to child (explicity)', belongsToParent: parent);
      late Future<SubscriptionEvent<BelongsToParent>> parentEvent;
      late Future<SubscriptionEvent<BelongsToChildExplicit>> childEvent;

      setUpAll(() async {
        await configureDataStore();
        await clearDataStore();

        parentEvent =
            Amplify.DataStore.observe(BelongsToParent.classType).first;
        childEvent =
            Amplify.DataStore.observe(BelongsToChildExplicit.classType).first;
      });

      testWidgets('precondition', (WidgetTester tester) async {
        var queriedChildren =
            await Amplify.DataStore.query(BelongsToChildExplicit.classType);
        expect(queriedChildren, isEmpty);
        var queriedParents =
            await Amplify.DataStore.query(BelongsToParent.classType);
        expect(queriedParents, isEmpty);
      });

      testWidgets('save parent', (WidgetTester tester) async {
        await Amplify.DataStore.save(parent);
        var parents = await Amplify.DataStore.query(BelongsToParent.classType);
        expect(parents, isNotEmpty);
      });

      testWidgets('save child', (WidgetTester tester) async {
        await Amplify.DataStore.save(child);
        var children =
            await Amplify.DataStore.query(BelongsToChildExplicit.classType);
        expect(children, isNotEmpty);
      });

      testWidgets('query parent', (WidgetTester tester) async {
        var parents = await Amplify.DataStore.query(BelongsToParent.classType);
        var queriedParent = parents.single;
        expect(queriedParent, parent);
      });

      testWidgets('query child', (WidgetTester tester) async {
        var children =
            await Amplify.DataStore.query(BelongsToChildExplicit.classType);
        var queriedChild = children.single;
        expect(queriedChild, child);
        expect(queriedChild.belongsToParent, parent);
      });

      testWidgets('observe parent', (WidgetTester tester) async {
        var event = await parentEvent;
        var observedParent = event.item;
        expect(observedParent, parent);
      });

      testWidgets('observe child', (WidgetTester tester) async {
        var event = await childEvent;
        var observedChild = event.item;
        expect(observedChild, child);
        expect(observedChild.belongsToParent, parent);
      });

      testWidgets('delete parent (cascade delete child)',
          (WidgetTester tester) async {
        await Amplify.DataStore.delete(parent);

        var parents = await Amplify.DataStore.query(BelongsToParent.classType);
        expect(parents, isEmpty);
        var children =
            await Amplify.DataStore.query(BelongsToChildExplicit.classType);
        expect(children, isEmpty);
      });
    });

    group('HasMany (parent refers to children with implicity connection field)',
        () {
      // schema
      // type HasManyParent @model {
      //   id: ID!
      //   name: String
      //   implicitChildren: [HasManyChild] @hasMany
      // }
      // type HasManyChildImplicit @model {
      //   id: ID!
      //   name: String
      // }
      var parent = HasManyParent(name: 'has many parent (implicit)');
      var children = List.generate(
          5,
          (i) => HasManyChildImplicit(
              name: 'has many child $i (implicit)',
              hasManyParentImplicitChildrenId: parent.id));
      late Future<List<SubscriptionEvent<HasManyChildImplicit>>> childEvents;
      late Future<SubscriptionEvent<HasManyParent>> parentEvent;

      setUpAll(() async {
        await configureDataStore();
        await clearDataStore();

        childEvents = Amplify.DataStore.observe(HasManyChildImplicit.classType)
            .take(children.length)
            .toList();

        parentEvent = Amplify.DataStore.observe(HasManyParent.classType).first;
      });

      testWidgets('precondition', (WidgetTester tester) async {
        var queriedChildren =
            await Amplify.DataStore.query(HasManyChildImplicit.classType);
        expect(queriedChildren, isEmpty);
        var queriedParents =
            await Amplify.DataStore.query(HasManyParent.classType);
        expect(queriedParents, isEmpty);
      });

      testWidgets('save parent', (WidgetTester tester) async {
        await Amplify.DataStore.save(parent);
        var parents = await Amplify.DataStore.query(HasManyParent.classType);
        expect(parents, isNotEmpty);
      });

      testWidgets('save children', (WidgetTester tester) async {
        for (var child in children) {
          await Amplify.DataStore.save(child);
        }
        var queriedChildren =
            await Amplify.DataStore.query(HasManyChildImplicit.classType);
        expect(queriedChildren, isNotEmpty);
      });

      testWidgets('query parent', (WidgetTester tester) async {
        var parents = await Amplify.DataStore.query(HasManyParent.classType);
        var queriedParent = parents.single;
        expect(queriedParent, parent);
        expect(queriedParent.id, parent.id);
        expect(queriedParent.name, parent.name);
      });

      testWidgets('query children', (WidgetTester tester) async {
        var queriedChildren =
            await Amplify.DataStore.query(HasManyChildImplicit.classType);
        for (var i = 0; i < children.length; i++) {
          var queriedChild = queriedChildren[i];
          var actualChild = children[i];
          expect(queriedChild, actualChild);
          expect(queriedChild.hasManyParentImplicitChildrenId,
              actualChild.hasManyParentImplicitChildrenId);
        }
      });

      testWidgets('observe parent', (WidgetTester tester) async {
        var event = await parentEvent;
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
          expect(observedChild.hasManyParentImplicitChildrenId,
              actualChild.hasManyParentImplicitChildrenId);
        }
      });

      testWidgets('delete parent', (WidgetTester tester) async {
        await Amplify.DataStore.delete(parent);
        var parents = await Amplify.DataStore.query(HasManyParent.classType);
        expect(parents, isEmpty);

        // cascade delete won't happen in this test case as there is no
        // connection field generated in the child model
        var queriedChildren =
            await Amplify.DataStore.query(HasManyChildImplicit.classType);
        expect(queriedChildren, isNotEmpty);
        // skip this test until https://github.com/aws-amplify/amplify-android/pull/1614
        // is integrated into amplify-flutter
      }, skip: true);

      testWidgets('delete children', (WidgetTester tester) async {
        for (var child in children) {
          await Amplify.DataStore.delete(child);
        }
        var queriedChildren =
            await Amplify.DataStore.query(HasManyChildImplicit.classType);
        expect(queriedChildren, isEmpty);
      });
    });

    group(
        'HasMany (parent refers to children with explicity connection field and indexName)',
        () {
      // schema
      // type HasManyParent @model {
      //   id: ID!
      //   name: String
      //   explicitChildren: [HasManyChildExplicit]
      //     @hasMany(indexName: "byHasManyParent", fields: ["id"])
      // }
      // type HasManyChildExplicit @model {
      //   id: ID!
      //   name: String
      //   hasManyParentID: ID! @index(name: "byHasManyParent", sortKeyFields: ["name"])
      // }
      var parent = HasManyParent(name: 'has many parent (explicit)');
      var children = List.generate(
          5,
          (i) => HasManyChildExplicit(
              name: 'has many child $i (explicit)',
              hasManyParentID: parent.id));
      late Future<List<SubscriptionEvent<HasManyChildExplicit>>> childEvents;
      late Future<SubscriptionEvent<HasManyParent>> parentEvent;

      setUpAll(() async {
        await configureDataStore();
        await clearDataStore();

        childEvents = Amplify.DataStore.observe(HasManyChildExplicit.classType)
            .take(children.length)
            .toList();

        parentEvent = Amplify.DataStore.observe(HasManyParent.classType).first;
      });

      testWidgets('precondition', (WidgetTester tester) async {
        var queriedChildren =
            await Amplify.DataStore.query(HasManyChildExplicit.classType);
        expect(queriedChildren, isEmpty);
        var queriedParents =
            await Amplify.DataStore.query(HasManyParent.classType);
        expect(queriedParents, isEmpty);
      });

      testWidgets('save parent', (WidgetTester tester) async {
        await Amplify.DataStore.save(parent);
        var parents = await Amplify.DataStore.query(HasManyParent.classType);
        expect(parents, isNotEmpty);
      });

      testWidgets('save children', (WidgetTester tester) async {
        for (var child in children) {
          await Amplify.DataStore.save(child);
        }
        var queriedChildren =
            await Amplify.DataStore.query(HasManyChildExplicit.classType);
        expect(queriedChildren, isNotEmpty);
      });

      testWidgets('query parent', (WidgetTester tester) async {
        var parents = await Amplify.DataStore.query(HasManyParent.classType);
        var queriedParent = parents.single;
        expect(queriedParent, parent);
        expect(queriedParent.id, parent.id);
        expect(queriedParent.name, parent.name);
      });

      testWidgets('query children', (WidgetTester tester) async {
        var queriedChildren =
            await Amplify.DataStore.query(HasManyChildExplicit.classType);
        for (var i = 0; i < children.length; i++) {
          var queriedChild = queriedChildren[i];
          var actualChild = children[i];
          expect(queriedChild, actualChild);
          expect(queriedChild.hasManyParentID, actualChild.hasManyParentID);
        }
      });

      testWidgets('observe parent', (WidgetTester tester) async {
        var event = await parentEvent;
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
          expect(observedChild.hasManyParentID, actualChild.hasManyParentID);
        }
      });

      testWidgets('delete parent', (WidgetTester tester) async {
        await Amplify.DataStore.delete(parent);
        var parents = await Amplify.DataStore.query(HasManyParent.classType);
        expect(parents, isEmpty);

        // cascade delete won't happen in this test case as there is no
        // connection field generated in the child model
        var queriedChildren =
            await Amplify.DataStore.query(HasManyChildExplicit.classType);
        expect(queriedChildren, isNotEmpty);
        // skip this test until https://github.com/aws-amplify/amplify-android/pull/1614
        // is integrated into amplify-flutter
      }, skip: true);

      testWidgets('delete children', (WidgetTester tester) async {
        for (var child in children) {
          await Amplify.DataStore.delete(child);
        }
        var queriedChildren =
            await Amplify.DataStore.query(HasManyChildExplicit.classType);
        expect(queriedChildren, isEmpty);
      });
    });

    group('HasMany (bi-direactional with implicit connection field)', () {
      // schema
      // type HasManyParentBiDirectionalImplicit @model {
      //   id: ID!
      //   name: String
      //   biDirectionalImplicitChildren: [HasManyChildBiDirectionalImplicit] @hasMany
      // }

      // type HasManyChildBiDirectionalImplicit @model {
      //   id: ID!
      //   name: String
      //   hasManyParent: HasManyParentBiDirectionalImplicit @belongsTo
      // }
      var parent = HasManyParentBiDirectionalImplicit(
          name: 'has many parent (explicit)');
      var children = List.generate(
          5,
          (i) => HasManyChildBiDirectionalImplicit(
              name: 'has many child $i (explicit)', hasManyParent: parent));
      late Future<List<SubscriptionEvent<HasManyChildBiDirectionalImplicit>>>
          childEvents;
      late Future<SubscriptionEvent<HasManyParentBiDirectionalImplicit>>
          parentEvent;

      setUpAll(() async {
        await configureDataStore();
        await clearDataStore();

        childEvents = Amplify.DataStore.observe(
                HasManyChildBiDirectionalImplicit.classType)
            .take(children.length)
            .toList();

        parentEvent = Amplify.DataStore.observe(
                HasManyParentBiDirectionalImplicit.classType)
            .first;
      });

      testWidgets('precondition', (WidgetTester tester) async {
        var queriedChildren = await Amplify.DataStore.query(
            HasManyChildBiDirectionalImplicit.classType);
        expect(queriedChildren, isEmpty);
        var queriedParents = await Amplify.DataStore.query(
            HasManyParentBiDirectionalImplicit.classType);
        expect(queriedParents, isEmpty);
      });

      testWidgets('save parent', (WidgetTester tester) async {
        await Amplify.DataStore.save(parent);
        var parents = await Amplify.DataStore.query(
            HasManyParentBiDirectionalImplicit.classType);
        expect(parents, isNotEmpty);
      });

      testWidgets('save children', (WidgetTester tester) async {
        for (var child in children) {
          await Amplify.DataStore.save(child);
        }
        var queriedChildren = await Amplify.DataStore.query(
            HasManyChildBiDirectionalImplicit.classType);
        expect(queriedChildren, isNotEmpty);
      });

      testWidgets('query parent', (WidgetTester tester) async {
        var parents = await Amplify.DataStore.query(
            HasManyParentBiDirectionalImplicit.classType);
        var queriedParent = parents.single;
        expect(queriedParent, parent);
        expect(queriedParent.id, parent.id);
        expect(queriedParent.name, parent.name);
      });

      testWidgets('query children', (WidgetTester tester) async {
        var queriedChildren = await Amplify.DataStore.query(
            HasManyChildBiDirectionalImplicit.classType);
        for (var i = 0; i < children.length; i++) {
          var queriedChild = queriedChildren[i];
          var actualChild = children[i];
          expect(queriedChild, actualChild);
          expect(queriedChild.hasManyParent, actualChild.hasManyParent);
        }
      });

      testWidgets('observe parent', (WidgetTester tester) async {
        var event = await parentEvent;
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
          expect(observedChild.hasManyParent, actualChild.hasManyParent);
        }
      });

      testWidgets('delete parent (cascade delete associated children)',
          (WidgetTester tester) async {
        await Amplify.DataStore.delete(parent);
        var parents = await Amplify.DataStore.query(
            HasManyParentBiDirectionalImplicit.classType);
        expect(parents, isEmpty);

        var queriedChildren = await Amplify.DataStore.query(
            HasManyChildBiDirectionalImplicit.classType);
        expect(queriedChildren, isEmpty);
      });
    });

    group('HasMany (bi-direactional with explicit connection field)', () {
      // schema
      // type HasManyParentBiDirectionalExplicit @model {
      //   id: ID!
      //   name: String
      //   biDirectionalExplicitChildren: [HasManyChildBiDirectionalExplicit]
      //     @hasMany(indexName: "byHasManyParent", fields: ["id"])
      // }

      // type HasManyChildBiDirectionalExplicit @model {
      //   id: ID!
      //   name: String
      //   hasManyParentId: ID! @index(name: "byHasManyParent", sortKeyFields: ["name"])
      //   hasManyParent: HasManyParentBiDirectionalExplicit
      //     @belongsTo(fields: ["hasManyParentId"])
      // }
      var parent = HasManyParentBiDirectionalExplicit(
          name: 'has many parent (explicit)');
      var children = List.generate(
          5,
          (i) => HasManyChildBiDirectionalExplicit(
              name: 'has many child $i (explicit)', hasManyParent: parent));
      late Future<List<SubscriptionEvent<HasManyChildBiDirectionalExplicit>>>
          childEvents;
      late Future<SubscriptionEvent<HasManyParentBiDirectionalExplicit>>
          parentEvent;

      setUpAll(() async {
        await configureDataStore();
        await clearDataStore();

        childEvents = Amplify.DataStore.observe(
                HasManyChildBiDirectionalExplicit.classType)
            .take(children.length)
            .toList();

        parentEvent = Amplify.DataStore.observe(
                HasManyParentBiDirectionalExplicit.classType)
            .first;
      });

      testWidgets('precondition', (WidgetTester tester) async {
        var queriedChildren = await Amplify.DataStore.query(
            HasManyChildBiDirectionalExplicit.classType);
        expect(queriedChildren, isEmpty);
        var queriedParents = await Amplify.DataStore.query(
            HasManyParentBiDirectionalExplicit.classType);
        expect(queriedParents, isEmpty);
      });

      testWidgets('save parent', (WidgetTester tester) async {
        await Amplify.DataStore.save(parent);
        var parents = await Amplify.DataStore.query(
            HasManyParentBiDirectionalExplicit.classType);
        expect(parents, isNotEmpty);
      });

      testWidgets('save children', (WidgetTester tester) async {
        for (var child in children) {
          await Amplify.DataStore.save(child);
        }
        var queriedChildren = await Amplify.DataStore.query(
            HasManyChildBiDirectionalExplicit.classType);
        expect(queriedChildren, isNotEmpty);
      });

      testWidgets('query parent', (WidgetTester tester) async {
        var parents = await Amplify.DataStore.query(
            HasManyParentBiDirectionalExplicit.classType);
        var queriedParent = parents.single;
        expect(queriedParent, parent);
        expect(queriedParent.id, parent.id);
        expect(queriedParent.name, parent.name);
      });

      testWidgets('query children', (WidgetTester tester) async {
        var queriedChildren = await Amplify.DataStore.query(
            HasManyChildBiDirectionalExplicit.classType);
        for (var i = 0; i < children.length; i++) {
          var queriedChild = queriedChildren[i];
          var actualChild = children[i];
          expect(queriedChild, actualChild);
          expect(queriedChild.hasManyParent, actualChild.hasManyParent);
        }
      });

      testWidgets('observe parent', (WidgetTester tester) async {
        var event = await parentEvent;
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
          expect(observedChild.hasManyParent, actualChild.hasManyParent);
        }
      });

      testWidgets('delete parent (cascade delete associated children)',
          (WidgetTester tester) async {
        await Amplify.DataStore.delete(parent);
        var parents = await Amplify.DataStore.query(
            HasManyParentBiDirectionalExplicit.classType);
        expect(parents, isEmpty);

        var queriedChildren = await Amplify.DataStore.query(
            HasManyChildBiDirectionalExplicit.classType);
        expect(queriedChildren, isEmpty);
      });
    });

    group('Many-to-many', () {
      // schema
      // type Post @model {
      //   id: ID!
      //   title: String!
      //   rating: Int!
      //   tags: [Tag] @manyToMany(relationName: "PostTags")
      // }
      // type Tag @model {
      //   id: ID!
      //   label: String!
      //   posts: [Post] @manyToMany(relationName: "PostTags")
      // }
      var posts = [
        Post(title: 'many to many post 1', rating: 10),
        Post(title: 'many to many post 2', rating: 5),
      ];
      var tags = [
        Tag(label: 'many to many tag 1'),
        Tag(label: 'many to maby tag 2')
      ];
      var postTags = [
        PostTags(post: posts[0], tag: tags[0]),
        PostTags(post: posts[0], tag: tags[0]),
        PostTags(post: posts[1], tag: tags[1]),
        PostTags(post: posts[1], tag: tags[1])
      ];
      late Future<List<SubscriptionEvent<Post>>> postEvents;
      late Future<List<SubscriptionEvent<Tag>>> tagEvents;
      late Future<List<SubscriptionEvent<PostTags>>> postTagsEvents;

      setUpAll(() async {
        await configureDataStore();
        await clearDataStore();

        postEvents = Amplify.DataStore.observe(Post.classType)
            .take(posts.length)
            .toList();
        tagEvents =
            Amplify.DataStore.observe(Tag.classType).take(tags.length).toList();
        postTagsEvents = Amplify.DataStore.observe(PostTags.classType)
            .take(postTags.length)
            .toList();
      });

      testWidgets('precondition', (WidgetTester tester) async {
        var queriedChildren =
            await Amplify.DataStore.query(BelongsToChildExplicit.classType);
        expect(queriedChildren, isEmpty);
        var queriedParents =
            await Amplify.DataStore.query(BelongsToParent.classType);
        expect(queriedParents, isEmpty);
      });

      testWidgets('save post', (WidgetTester tester) async {
        for (var post in posts) {
          await Amplify.DataStore.save(post);
        }
        var queriedPosts = await Amplify.DataStore.query(Post.classType);
        expect(queriedPosts, isNotEmpty);
      });

      testWidgets('save tags', (WidgetTester tester) async {
        for (var tag in tags) {
          await Amplify.DataStore.save(tag);
        }
        var queriedTags = await Amplify.DataStore.query(Tag.classType);
        expect(queriedTags, isNotEmpty);
      });

      testWidgets('save postTags', (WidgetTester tester) async {
        for (var postTag in postTags) {
          await Amplify.DataStore.save(postTag);
        }
        var queriedPostTags = await Amplify.DataStore.query(PostTags.classType);
        expect(queriedPostTags, isNotEmpty);
      });

      testWidgets('query posts', (WidgetTester tester) async {
        var queriedPosts = await Amplify.DataStore.query(Post.classType);
        for (var post in queriedPosts) {
          expect(posts.contains(post), isTrue);
        }
      });

      testWidgets('query tags', (WidgetTester tester) async {
        var queriedTags = await Amplify.DataStore.query(Tag.classType);
        for (var tag in queriedTags) {
          expect(tags.contains(tag), isTrue);
        }
      });

      testWidgets('query postTags', (WidgetTester tester) async {
        var queriedPostTags = await Amplify.DataStore.query(PostTags.classType);
        for (var postTag in queriedPostTags) {
          expect(
              postTags.indexWhere(
                      (e) => e.post == postTag.post && e.tag == postTag.tag) >
                  -1,
              isTrue);
        }
      });

      testWidgets('observe posts', (WidgetTester tester) async {
        var events = await postEvents;
        for (var i = 0; i < posts.length; i++) {
          var event = events[i];
          var eventType = event.eventType;
          var observedPost = event.item;
          var expectedPost = posts[i];
          expect(eventType, EventType.create);
          expect(observedPost, expectedPost);
        }
      });

      testWidgets('observe tags', (WidgetTester tester) async {
        var events = await tagEvents;
        for (var i = 0; i < tags.length; i++) {
          var event = events[i];
          var eventType = event.eventType;
          var observedTag = event.item;
          var expectedTag = tags[i];
          expect(eventType, EventType.create);
          expect(observedTag, expectedTag);
        }
      });

      testWidgets('observe postTags', (WidgetTester tester) async {
        var events = await postTagsEvents;
        for (var i = 0; i < tags.length; i++) {
          var event = events[i];
          var eventType = event.eventType;
          var observedPostTag = event.item;
          var expectedPostTag = postTags[i];
          expect(eventType, EventType.create);
          expect(observedPostTag, expectedPostTag);
        }
      });

      testWidgets('delete post (cascade delete assoicated postTag)',
          (WidgetTester tester) async {
        var deletedPost = posts[0];
        await Amplify.DataStore.delete(deletedPost);

        var queriedPosts = await Amplify.DataStore.query(Post.classType);
        expect(queriedPosts.length, posts.length - 1);

        var queriedPostTags = await Amplify.DataStore.query(PostTags.classType);
        expect(
            queriedPostTags
                .indexWhere((postTag) => postTag.post == deletedPost),
            -1);
      });

      testWidgets('delete tag (cascade delete assoicated postTag)',
          (WidgetTester tester) async {
        var deletedTag = tags[0];
        await Amplify.DataStore.delete(deletedTag);

        var queriedTags = await Amplify.DataStore.query(Tag.classType);
        expect(queriedTags.length, tags.length - 1);

        var queriedPostTags = await Amplify.DataStore.query(PostTags.classType);
        expect(
            queriedPostTags.indexWhere((postTag) => postTag.tag == deletedTag),
            -1);
      });

      testWidgets('delete remaining post', (WidgetTester tester) async {
        await Amplify.DataStore.delete(posts[1]);

        var queriedPosts = await Amplify.DataStore.query(Post.classType);
        expect(queriedPosts, isEmpty);

        var queriedPostTags = await Amplify.DataStore.query(PostTags.classType);
        expect(queriedPostTags, isEmpty);
      });

      testWidgets('delete remaining tag', (WidgetTester tester) async {
        await Amplify.DataStore.delete(tags[1]);

        var queriedTags = await Amplify.DataStore.query(Tag.classType);
        expect(queriedTags, isEmpty);

        var queriedPostTags = await Amplify.DataStore.query(PostTags.classType);
        expect(queriedPostTags, isEmpty);
      });
    });

    group('Model with multiple relationships', () {
      // schema
      // type MultiRelatedMeeting @model {
      //   id: ID! @primaryKey
      //   title: String!
      //   attendees: [MultiRelatedRegistration]
      //     @hasMany(indexName: "byMeeting", fields: ["id"])
      // }

      // type MultiRelatedAttendee @model {
      //   id: ID! @primaryKey
      //   meetings: [MultiRelatedRegistration]
      //     @hasMany(indexName: "byAttendee", fields: ["id"])
      // }

      // type MultiRelatedRegistration @model {
      //   id: ID! @primaryKey
      //   meetingId: ID @index(name: "byMeeting", sortKeyFields: ["attendeeId"])
      //   meeting: MultiRelatedMeeting! @belongsTo(fields: ["meetingId"])
      //   attendeeId: ID @index(name: "byAttendee", sortKeyFields: ["meetingId"])
      //   attendee: MultiRelatedAttendee! @belongsTo(fields: ["attendeeId"])
      // }
      var meetings = [
        MultiRelatedMeeting(title: 'test meeting 1'),
        MultiRelatedMeeting(title: 'test meeting 2'),
      ];
      var attendees = [
        MultiRelatedAttendee(),
        MultiRelatedAttendee(),
      ];
      var registrations = [
        MultiRelatedRegistration(attendee: attendees[0], meeting: meetings[0]),
        MultiRelatedRegistration(attendee: attendees[0], meeting: meetings[1]),
        MultiRelatedRegistration(attendee: attendees[1], meeting: meetings[1]),
      ];

      late Future<List<SubscriptionEvent<MultiRelatedMeeting>>> meetingEvents;
      late Future<List<SubscriptionEvent<MultiRelatedAttendee>>> attendeeEvents;
      late Future<List<SubscriptionEvent<MultiRelatedRegistration>>>
          registrationEvents;

      setUpAll(() async {
        await configureDataStore();
        await clearDataStore();

        meetingEvents = Amplify.DataStore.observe(MultiRelatedMeeting.classType)
            .take(meetings.length)
            .toList();
        attendeeEvents =
            Amplify.DataStore.observe(MultiRelatedAttendee.classType)
                .take(attendees.length)
                .toList();
        registrationEvents =
            Amplify.DataStore.observe(MultiRelatedRegistration.classType)
                .take(registrations.length)
                .toList();
      });

      testWidgets('precondition', (WidgetTester tester) async {
        var queriedMeetings =
            await Amplify.DataStore.query(MultiRelatedMeeting.classType);
        expect(queriedMeetings, isEmpty);
        var queriedAttendees =
            await Amplify.DataStore.query(MultiRelatedAttendee.classType);
        expect(queriedAttendees, isEmpty);
        var queriedRegistrations =
            await Amplify.DataStore.query(MultiRelatedRegistration.classType);
        expect(queriedRegistrations, isEmpty);
      });

      testWidgets('save meetings', (WidgetTester tester) async {
        for (var meeting in meetings) {
          await Amplify.DataStore.save(meeting);
        }
        var queriedMeetings =
            await Amplify.DataStore.query(MultiRelatedMeeting.classType);
        expect(queriedMeetings, isNotEmpty);
      });

      testWidgets('save attendees', (WidgetTester tester) async {
        for (var attendee in attendees) {
          await Amplify.DataStore.save(attendee);
        }
        var queriedAttendees =
            await Amplify.DataStore.query(MultiRelatedAttendee.classType);
        expect(queriedAttendees, isNotEmpty);
      });

      testWidgets('save registrations', (WidgetTester tester) async {
        for (var registration in registrations) {
          await Amplify.DataStore.save(registration);
        }
        var queriedRegistrations =
            await Amplify.DataStore.query(MultiRelatedRegistration.classType);
        expect(queriedRegistrations, isNotEmpty);
      });

      testWidgets('query meetings', (WidgetTester tester) async {
        var queriedMeetings =
            await Amplify.DataStore.query(MultiRelatedMeeting.classType);
        for (var meeting in queriedMeetings) {
          expect(meetings.contains(meeting), isTrue);
        }
      });

      testWidgets('query attendees', (WidgetTester tester) async {
        var queriedAttendees =
            await Amplify.DataStore.query(MultiRelatedAttendee.classType);
        for (var attendee in queriedAttendees) {
          expect(attendees.contains(attendee), isTrue);
        }
      });

      testWidgets('query registraions', (WidgetTester tester) async {
        var queriedRegistrations =
            await Amplify.DataStore.query(MultiRelatedRegistration.classType);
        for (var registration in queriedRegistrations) {
          expect(
              registrations.indexWhere((e) =>
                      e.meeting == registration.meeting &&
                      e.attendee == registration.attendee) >
                  -1,
              isTrue);
        }
      });

      testWidgets('observe meetings', (WidgetTester tester) async {
        var events = await meetingEvents;
        for (var i = 0; i < meetings.length; i++) {
          var event = events[i];
          var eventType = event.eventType;
          var observedMeeting = event.item;
          var expectedMeeting = meetings[i];
          expect(eventType, EventType.create);
          expect(observedMeeting, expectedMeeting);
        }
      });

      testWidgets('observe attendees', (WidgetTester tester) async {
        var events = await attendeeEvents;
        for (var i = 0; i < attendees.length; i++) {
          var event = events[i];
          var eventType = event.eventType;
          var observedAttendee = event.item;
          var expectedAttendee = attendees[i];
          expect(eventType, EventType.create);
          expect(observedAttendee, expectedAttendee);
        }
      });

      testWidgets('observe resgistrations', (WidgetTester tester) async {
        var events = await registrationEvents;
        for (var i = 0; i < registrations.length; i++) {
          var event = events[i];
          var eventType = event.eventType;
          var observedRegistration = event.item;
          var expectedRegistration = registrations[i];
          expect(eventType, EventType.create);
          expect(observedRegistration, expectedRegistration);
        }
      });

      testWidgets('delete meeting (cascade delete assoicated registration)',
          (WidgetTester tester) async {
        var deletedMeeting = meetings[0];
        await Amplify.DataStore.delete(deletedMeeting);

        var queriedMeetings =
            await Amplify.DataStore.query(MultiRelatedMeeting.classType);
        expect(queriedMeetings.length, meetings.length - 1);

        var queriedRegistrations =
            await Amplify.DataStore.query(MultiRelatedRegistration.classType);
        expect(
            queriedRegistrations.indexWhere(
                (registration) => registration.meeting == deletedMeeting),
            -1);
      });

      testWidgets('delete attendee (cascade delete assoicated registration)',
          (WidgetTester tester) async {
        var deletedAttendee = attendees[0];
        await Amplify.DataStore.delete(deletedAttendee);

        var queriedAttendees =
            await Amplify.DataStore.query(MultiRelatedAttendee.classType);
        expect(queriedAttendees.length, attendees.length - 1);

        var queriedRegistrations =
            await Amplify.DataStore.query(MultiRelatedRegistration.classType);
        expect(
            queriedRegistrations.indexWhere(
                (registration) => registration.attendee == deletedAttendee),
            -1);
      });

      testWidgets('delete remaining meeting', (WidgetTester tester) async {
        await Amplify.DataStore.delete(meetings[1]);

        var queriedMeetings =
            await Amplify.DataStore.query(MultiRelatedMeeting.classType);
        expect(queriedMeetings, isEmpty);

        var queriedRegistrations =
            await Amplify.DataStore.query(MultiRelatedRegistration.classType);
        expect(queriedRegistrations, isEmpty);
      });

      testWidgets('delete remaining attendee', (WidgetTester tester) async {
        await Amplify.DataStore.delete(attendees[1]);

        var queriedAttendees = await Amplify.DataStore.query(Tag.classType);
        expect(queriedAttendees, isEmpty);

        var queriedRegistrations =
            await Amplify.DataStore.query(MultiRelatedRegistration.classType);
        expect(queriedRegistrations, isEmpty);
      });
    });
  });
}

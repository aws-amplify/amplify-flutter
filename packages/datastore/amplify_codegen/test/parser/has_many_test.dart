// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:amplify_core/amplify_core.dart';
import 'package:test/test.dart';

import 'common.dart';

// Follows the tests found in amplify-codegen:
// https://github.com/aws-amplify/amplify-codegen/blob/main/packages/appsync-modelgen-plugin/src/__tests__/utils/process-has-many.test.ts
void main() {
  group('hasMany', () {
    test('adds implict index when there is no belongsTo', () {
      const schema = '''
      type Foo @model {
        id: ID!
        bar: [Bar] @hasMany
      }

      type Bar @model {
        id: ID!
      }
      ''';
      final models = parseModels(schema);
      expect(
        models['Bar']!.indexes,
        unorderedEquals([
          isA<ModelIndex>().having((i) => i.name, 'name', isNull), // primaryKey
          isA<ModelIndex>().having((i) => i.name, 'name', 'gsi-Foo.bar'),
        ]),
        reason: 'primary index + foreign key for Foo',
      );
    });

    test('does not add implict index when there is a belongsTo', () {
      const schema = '''
      type Foo @model {
        id: ID!
        bar: [Bar] @hasMany
      }

      type Bar @model {
        id: ID!
        foo: Foo @belongsTo
      }
      ''';
      final models = parseModels(schema);
      expect(
        models['Bar']!.indexes,
        unorderedEquals([
          isA<ModelIndex>().having((i) => i.name, 'name', isNull), // primaryKey
          isA<ModelIndex>().having((i) => i.name, 'name', 'gsi-Foo.bar'),
        ]),
        reason: 'primary index + foreign key for Foo',
      );
    });

    test('uses index when specified', () {
      const schema = '''
      type Foo @model {
        id: ID!
        bar: [Bar] @hasMany(indexName: "byFoo", fields: ["id"])
      }

      type Bar @model {
        id: ID!
        fooId: ID @index(name: "byFoo")
      }
      ''';
      final models = parseModels(schema);
      expect(
        models['Bar']!.indexes,
        unorderedEquals([
          isA<ModelIndex>().having((i) => i.name, 'name', isNull), // primaryKey
          isA<ModelIndex>().having((i) => i.name, 'name', 'byFoo'),
        ]),
        reason: 'primary index + foreign key for Foo',
      );
    });

    test('creates a composite foreign key', () {
      const schema = '''
      type Foo @model {
        id: ID! @primaryKey(sortKeyFields: ["warehouseId"])
        warehouseId: String!
        bar: [Bar] @hasMany
      }

      type Bar @model {
        id: ID!
      }
      ''';
      final models = parseModels(schema);
      expect(
        models['Bar']!.indexes,
        unorderedEquals([
          isA<ModelIndex>()
              .having((idx) => idx.name, 'name', isNull), // primary key
          isA<ModelIndex>()
              .having((idx) => idx.name, 'name', 'gsi-Foo.bar')
              .having(
                (idx) => idx.fields,
                'fields',
                equals(['fooBarId', 'fooBarWarehouseId']),
              ),
        ]),
        reason: 'primary index + foreign key for Foo',
      );
    });
  });
}

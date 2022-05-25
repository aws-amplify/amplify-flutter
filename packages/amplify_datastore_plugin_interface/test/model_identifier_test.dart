/*
 * Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the 'License').
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the 'license' file accompanying this file. This file is distributed
 * on an 'AS IS' BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_test/test_models/ModelProvider.dart';

void main() {
  const testId = 'test-id-123';
  test('modelIdentifier getter of a model with non-custom primary', () {
    // type Post @model {
    //   id: ID!
    //   title: String!
    //   rating: Int!
    // }
    var post = Post(id: testId, title: 'test blog', rating: 10);
    expect(post.modelIdentifier, PostModelIdentifier(id: testId));
    expect(post.modelIdentifier.serializeAsList(), [
      {'id': testId}
    ]);
    expect(post.modelIdentifier.serializeAsMap(), {'id': testId});
    expect(post.modelIdentifier.serializeAsList(), [
      {'id': testId}
    ]);
    expect(post.modelIdentifier.serializeAsString(), testId);
  });

  test(
      'modelIdentifier getter of a model with id field as the custom primary key',
      () {
    // type Blog @model {
    //   id: ID! @primaryKey
    //   name: String!
    // }
    var blog = Blog(id: testId, name: 'test blog');
    expect(blog.modelIdentifier, BlogModelIdentifier(id: testId));
    expect(blog.modelIdentifier.serializeAsMap(), {'id': testId});
    expect(blog.modelIdentifier.serializeAsList(), [
      {'id': testId}
    ]);
    expect(blog.modelIdentifier.serializeAsString(), testId);
  });

  test(
      'modelIdentifier getter of a model with id field as a part of composite custom primary key',
      () {
    // type Warehouse @model {
    //   id: ID! @primaryKey(sortKeyFields: ["name", "region"])
    //   name: String!
    //   region: String!
    // }
    final testData = {
      'id': testId,
      'name': 'warehouse A',
      'region': 'west-ca',
    };
    var warehouse = Warehouse.fromJson(testData);
    expect(
        warehouse.modelIdentifier,
        WarehouseModelIdentifier(
          id: testData['id']!,
          name: testData['name']!,
          region: testData['region']!,
        ));
    expect(warehouse.modelIdentifier.serializeAsMap(), testData);
    expect(warehouse.modelIdentifier.serializeAsList(),
        testData.entries.map((e) => ({e.key: e.value})).toList());
    expect(warehouse.modelIdentifier.serializeAsString(),
        testData.values.join('#'));
  });

  test('modelIdentifier getter of a model with custom primary key', () {
    // type Product @model {
    //   productID: ID! @primaryKey
    //   name: String!
    //   amount: Int!
    // }
    var product = Product(productID: testId, name: 'a product', amount: 5);
    expect(product.modelIdentifier, ProductModelIdentifier(productID: testId));
    expect(product.modelIdentifier.serializeAsMap(), {'productID': testId});
    expect(product.modelIdentifier.serializeAsList(), [
      {'productID': testId}
    ]);
    expect(product.modelIdentifier.serializeAsString(), testId);
  });

  test('modelIdentifier getter of a model with composite custom primary key',
      () {
    // type Inventory @model {
    //   productID: String!
    //     @primaryKey(sortKeyFields: ["name", "warehouseID", "region"])
    //   name: String!
    //   warehouseID: ID!
    //   region: String!
    // }
    final testData = {
      'productID': testId,
      'name': 'InventoryB',
      'warehouseID': 'warehouse-123',
      'region': 'west-ca'
    };
    var inventory = Inventory.fromJson(testData);
    expect(
      inventory.modelIdentifier,
      InventoryModelIdentifier(
        productID: testData['productID']!,
        name: testData['name']!,
        warehouseID: testData['warehouseID']!,
        region: testData['region']!,
      ),
    );
    expect(inventory.modelIdentifier.serializeAsMap(), testData);
    expect(inventory.modelIdentifier.serializeAsList(),
        testData.entries.map((e) => ({e.key: e.value})).toList());
    expect(inventory.modelIdentifier.serializeAsString(),
        testData.values.join('#'));
  });
}

/*
 * Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import 'package:amplify_core/amplify_core.dart';

const dummyFieldName = 'modelIdentifier';

class QueryModelIdentifier<ModelIdentifier extends Object,
    M extends Model<ModelIdentifier, M>> {
  const QueryModelIdentifier();

  /// An **equal to** operation.
  ///
  /// Matches a model whose model identifier is equal to the provided value.
  ///
  /// ### Example:
  /// The example returns Posts where the rating is equal to 10.
  ///
  /// ```dart
  /// Amplify.DataStore.query(
  ///   Inventory.classType,
  ///   where: Inventory.MODEL_IDENTIFIER.eq(
  ///     InventoryModelIdentifier(
  ///        productID: 'product-id',
  ///        name: 'product-name',
  ///        warehouseID: 'warehouse-id',
  ///        region: 'some region',
  ///     ),
  ///   ),
  /// );
  /// ```
  QueryByIdentifierOperation eq(ModelIdentifier value) =>
      QueryByIdentifierOperation<ModelIdentifier, M>(
        dummyFieldName,
        EqualModelIdentifierQueryOperator(value),
      );

  /// A **not equal to** operation.
  ///
  /// Matches a model whose model identifier is **not** equal to the provided value.
  ///
  /// ### Example:
  /// The example returns Posts where the rating is not equal to 10.
  ///
  ///```dart
  /// Amplify.DataStore.query(
  ///   Inventory.classType,
  ///   where: Inventory.MODEL_IDENTIFIER.ne(
  ///     InventoryModelIdentifier(
  ///        productID: 'product-id',
  ///        name: 'product-name',
  ///        warehouseID: 'warehouse-id',
  ///        region: 'some region',
  ///     ),
  ///   ),
  /// );
  /// ```
  QueryByIdentifierOperation ne(ModelIdentifier value) =>
      QueryByIdentifierOperation<ModelIdentifier, M>(
        dummyFieldName,
        NotEqualModelIdentifierQueryOperator(value),
      );
}

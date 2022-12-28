// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

const dummyFieldName = 'modelIdentifier';

class QueryModelIdentifier<T extends ModelIdentifier> {
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
  QueryByIdentifierOperation eq(T value) => QueryByIdentifierOperation(
        dummyFieldName,
        EqualModelIdentifierQueryOperator<T>(value),
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
  QueryByIdentifierOperation ne(T value) => QueryByIdentifierOperation(
        dummyFieldName,
        NotEqualModelIdentifierQueryOperator<T>(value),
      );
}

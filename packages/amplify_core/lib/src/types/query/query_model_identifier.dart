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

class QueryModelIdentifier<T extends ModelIdentifier> {
  const QueryModelIdentifier();

  // Equal operation with operator overloading
  QueryByIdentifierOperation eq(T value) => new QueryByIdentifierOperation(
        dummyFieldName,
        new EqualModelIdentifierQueryOperator<T>(value),
      );
  // TODO: == operator is not supported in dart to return anything but bool.
  // Figure out if there are any better alternative.
  // QueryPredicateOperation operator ==(Comparable<T> value) => eq(value);
}

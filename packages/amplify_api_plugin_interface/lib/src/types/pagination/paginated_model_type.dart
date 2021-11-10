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

import 'package:amplify_api_plugin_interface/src/types.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';

abstract class PaginatedModelType<T extends Model>
    extends ModelType<PaginatedResult<T>> {
  final ModelType<T> modelType;

  const PaginatedModelType(this.modelType);

  @override
  PaginatedResult<T> fromJson(Map<String, dynamic> jsonData,
      {Map<String, dynamic>? filter, int? limit});
}

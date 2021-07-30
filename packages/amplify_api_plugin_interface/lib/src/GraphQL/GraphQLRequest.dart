/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

// TODO: Datastore dependencies temporarily added in API. Eventually they should be moved to core or otherwise reconciled to avoid duplication.
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';

// TODO: Remove alias when Datastore dependency is removed
import '../UUID.dart' as API_UUID;

class GraphQLRequest<T> {
  String document;
  Map<String, dynamic> variables;
  String cancelToken = API_UUID.UUID.getUUID();
  String? decodePath;
  ModelType? modelType;

  GraphQLRequest(
      {required this.document,
      this.variables = const {},
      this.decodePath,
      this.modelType}) {}

  Map<String, dynamic> serializeAsMap() {
    final Map<String, dynamic> result = <String, dynamic>{};

    result['document'] = this.document;
    result['variables'] = this.variables;
    result['cancelToken'] = this.cancelToken;
    return result;
  }
}

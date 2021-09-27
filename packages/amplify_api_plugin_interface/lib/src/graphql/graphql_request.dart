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

// TODO: Remove alias when Datastore dependency is removed
import '../uuid.dart' as API_UUID;

// TODO: Datastore dependencies temporarily added in API. Eventually they should be moved to core or otherwise reconciled to avoid duplication.
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';

class GraphQLRequest<T> {
  final String? apiName;
  final String document;
  final Map<String, dynamic> variables;
  final String cancelToken = API_UUID.UUID.getUUID();
  final String? decodePath;
  final ModelType? modelType;

  GraphQLRequest(
      {this.apiName,
      required this.document,
      this.variables = const <String, dynamic>{},
      this.decodePath,
      this.modelType});

  Map<String, dynamic> serializeAsMap() => <String, dynamic>{
        'document': document,
        'variables': variables,
        'cancelToken': cancelToken,
        if (apiName != null) 'apiName': apiName,
      };
}

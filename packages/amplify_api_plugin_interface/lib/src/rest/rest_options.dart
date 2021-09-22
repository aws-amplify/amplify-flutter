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

import 'dart:typed_data';

class RestOptions {
  final String? apiName;
  final String path;
  final Uint8List? body;
  final Map<String, String>? queryParameters;
  final Map<String, String>? headers;

  const RestOptions({
    required this.path,
    this.apiName,
    this.body,
    this.queryParameters,
    this.headers,
  });

  Map<String, dynamic> serializeAsMap() => <String, dynamic>{
        if (apiName != null) 'apiName': apiName,
        'path': path,
        if (body != null) 'body': body,
        if (queryParameters != null) 'queryParameters': queryParameters,
        if (headers != null) 'headers': headers
      };
}

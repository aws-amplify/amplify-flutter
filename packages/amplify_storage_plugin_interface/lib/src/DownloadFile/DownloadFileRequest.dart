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

import 'package:amplify_core/types/uuid.dart';

import './DownloadFileOptions.dart';
import 'dart:io';

class DownloadFileRequest {
  late String uuid;
  String key;
  File local;
  DownloadFileOptions? options;

  DownloadFileRequest({required this.key, required this.local, this.options}) {
    this.uuid = UUID.getUUID();
  }

  Map<String, dynamic> serializeAsMap() {
    final Map<String, dynamic> result = {
      'uuid': uuid,
      'key': key,
      'path': local.absolute.path,
      'options': options?.serializeAsMap()
    };
    result.removeWhere((_, v) => v == null);
    return result;
  }
}

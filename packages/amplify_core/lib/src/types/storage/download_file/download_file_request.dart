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

import 'dart:io';

import 'package:amplify_core/amplify_core.dart';

class DownloadFileRequest {
  late String uuid;
  String key;
  File local;
  DownloadFileOptions? options;

  factory DownloadFileRequest({
    required String key,
    required File local,
    DownloadFileOptions? options,
  }) {
    return DownloadFileRequest._(
      uuid: UUID.getUUID(),
      key: key,
      local: local,
      options: options,
    );
  }

  DownloadFileRequest._({
    required this.uuid,
    required this.key,
    required this.local,
    this.options,
  });

  DownloadFileRequest copyWith({
    String? key,
    File? local,
    DownloadFileOptions? options,
  }) {
    return DownloadFileRequest._(
      uuid: uuid,
      key: key ?? this.key,
      local: local ?? this.local,
      options: options ?? this.options,
    );
  }

  Map<String, Object?> serializeAsMap() => {
        if (options != null) 'options': options!.serializeAsMap(),
        'key': key,
        'path': local.absolute.path,
        'uuid': uuid,
      };
}

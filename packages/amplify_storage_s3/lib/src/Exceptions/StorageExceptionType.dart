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

import 'package:flutter/foundation.dart';

enum StorageExceptionType {
  MALFORMED_PLATFORM_CHANNEL_RESULT,
  DOWNLOAD_FILE_FAILED,
  GET_URL_FAILED,
  LIST_FAILED,
  REMOVE_FAILED,
  UPLOAD_FILE_FAILED
}

extension StorageExceptionMessage on StorageExceptionType {
  String get code => describeEnum(this);

  String get message {
    switch (this) {
      case StorageExceptionType.MALFORMED_PLATFORM_CHANNEL_RESULT:
        return 'Error formatting platform channel result';
      case StorageExceptionType.DOWNLOAD_FILE_FAILED:
        return 'DownloadFile operation failed';
      case StorageExceptionType.GET_URL_FAILED:
        return 'GetUrl operation failed';
      case StorageExceptionType.LIST_FAILED:
        return 'List operation failed';
      case StorageExceptionType.REMOVE_FAILED:
        return 'Remove operation failed';
      case StorageExceptionType.UPLOAD_FILE_FAILED:
        return 'UploadFile operation failed';
      default:
        return 'An unknown error occured';
    }
  }
}

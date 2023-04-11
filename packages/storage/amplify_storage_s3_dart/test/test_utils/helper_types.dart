// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';
import 'package:test/test.dart';

class GetPropertiesTestItem {
  GetPropertiesTestItem({
    required this.expectedS3Item,
    required this.description,
    required this.getPropertiesValue,
  });

  final String description;
  final bool getPropertiesValue;
  final S3Item expectedS3Item;
}

class DownloadTaskExceptionConversionTestItem<T> {
  DownloadTaskExceptionConversionTestItem({
    required this.exceptionTypeMatcher,
    required this.description,
    required this.originalException,
  });

  final String description;
  final Exception originalException;
  final TypeMatcher<T> exceptionTypeMatcher;
}

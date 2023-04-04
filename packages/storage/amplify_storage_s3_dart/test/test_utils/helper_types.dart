// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:test/test.dart';

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

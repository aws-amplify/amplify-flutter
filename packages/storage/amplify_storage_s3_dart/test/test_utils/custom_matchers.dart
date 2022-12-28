// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_storage_s3_dart/src/sdk/s3.dart';
import 'package:test/test.dart';

class DeleteObjectsLength extends CustomMatcher {
  DeleteObjectsLength(Matcher matcher)
      : super(
          'DeleteObjectsRequest that is',
          'delete objects length',
          matcher,
        );

  @override
  Object? featureValueOf(dynamic actual) =>
      (actual as DeleteObjectsRequest).delete.objects.length;
}

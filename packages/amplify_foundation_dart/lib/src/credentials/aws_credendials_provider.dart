// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';

abstract interface class AWSCredentialsProvider<T extends AWSCredentials> {
  Future<T> resolve();
}

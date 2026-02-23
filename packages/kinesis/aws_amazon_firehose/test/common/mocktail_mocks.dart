// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Shared mock classes for Amazon Data Firehose tests.
library;

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:aws_amazon_firehose/src/impl/record_client.dart';
import 'package:aws_amazon_firehose/src/sdk/firehose.dart';
import 'package:mocktail/mocktail.dart';
import 'package:smithy/smithy.dart';

// =============================================================================
// Smithy/SDK Mocks
// =============================================================================

/// Creates a mock [SmithyOperation] that returns the result of [fn].
SmithyOperation<T> mockSmithyOperation<T>(FutureOr<T> Function() fn) =>
    SmithyOperation(
      CancelableOperation.fromFuture(Future.value(fn())),
      operationName: '',
      requestProgress: const Stream.empty(),
      responseProgress: const Stream.empty(),
    );

/// Mock implementation of [FirehoseClient].
class MockFirehoseClient extends Mock implements FirehoseClient {}

/// Mock implementation of [SmithyOperation].
class MockSmithyOperation<T> extends Mock implements SmithyOperation<T> {}

/// Mock implementation of [AWSHttpException].
class MockAWSHttpException extends Mock implements AWSHttpException {}

/// Mock implementation of [RecordClient].
class MockRecordClient extends Mock implements RecordClient {}

// =============================================================================
// Fake Implementations
// =============================================================================

/// Fake implementation of [AWSCredentialsProvider] for testing.
class FakeAWSCredentialsProvider extends Fake
    implements AWSCredentialsProvider {}

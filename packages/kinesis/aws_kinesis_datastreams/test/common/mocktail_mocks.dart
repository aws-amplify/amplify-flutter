// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Shared mock classes for Kinesis Data Streams tests.
library;

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:aws_kinesis_datastreams/src/impl/record_client.dart';
import 'package:aws_kinesis_datastreams/src/sdk/src/kinesis/kinesis_client.dart';
import 'package:mocktail/mocktail.dart';
import 'package:smithy/smithy.dart';

// =============================================================================
// Smithy/SDK Mocks
// =============================================================================

/// Creates a mock [SmithyOperation] that returns the result of [fn].
///
/// Use this helper to mock SDK client method returns:
/// ```dart
/// when(() => mockClient.putRecords(any())).thenReturn(
///   mockSmithyOperation(() => PutRecordsResponse(...)),
/// );
/// ```
SmithyOperation<T> mockSmithyOperation<T>(FutureOr<T> Function() fn) =>
    SmithyOperation(
      CancelableOperation.fromFuture(Future.value(fn())),
      operationName: '',
      requestProgress: const Stream.empty(),
      responseProgress: const Stream.empty(),
    );

/// Mock implementation of [KinesisClient].
class MockKinesisClient extends Mock implements KinesisClient {}

/// Mock implementation of [SmithyOperation].
///
/// Use when you need to throw exceptions from SDK operations:
/// ```dart
/// final mockOperation = MockSmithyOperation<PutRecordsResponse>();
/// when(() => mockOperation.result).thenThrow(SomeException());
/// when(() => mockClient.putRecords(any())).thenReturn(mockOperation);
/// ```
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

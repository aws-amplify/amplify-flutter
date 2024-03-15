// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';
import 'package:amplify_storage_s3_dart/src/sdk/s3.dart';
import 'package:amplify_storage_s3_dart/src/storage_s3_service/storage_s3_service.dart';
import 'package:amplify_storage_s3_dart/src/storage_s3_service/transfer/transfer.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:mocktail/mocktail.dart';
import 'package:smithy/smithy.dart';

class MockStorageS3Service extends Mock implements StorageS3Service {
  @override
  S3DownloadTask downloadData({
    required StoragePath path,
    required StorageDownloadDataOptions options,
    FutureOr<void> Function()? preStart,
    void Function(S3TransferProgress)? onProgress,
    void Function(List<int>)? onData,
    FutureOr<void> Function()? onDone,
    FutureOr<void> Function()? onError,
  }) {
    return MockS3DownloadTask();
  }
}

class MockS3Client extends Mock implements S3Client {}

class MockAWSLogger extends Mock implements AWSLogger {
  @override
  String get runtimeTypeName => 'MockAWSLogger';
}

class MockAWSSigV4Signer extends Mock implements AWSSigV4Signer {}

class MockS3DownloadTask extends Mock implements S3DownloadTask {
  @override
  Future<S3Item> get result async => MockS3Item();
}

class MockS3Item extends Mock implements S3Item {}

class MockS3UploadTask extends Mock implements S3UploadTask {}

class MockTransferDatabase extends Mock implements TransferDatabase {}

class MockSmithyOperation<T> extends Mock implements SmithyOperation<T> {}

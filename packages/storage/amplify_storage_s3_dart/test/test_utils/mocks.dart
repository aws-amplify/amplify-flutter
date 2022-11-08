// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/src/sdk/s3.dart';
import 'package:amplify_storage_s3_dart/src/storage_s3_service/storage_s3_service.dart';
import 'package:amplify_storage_s3_dart/src/storage_s3_service/transfer/database/database.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:mocktail/mocktail.dart';
import 'package:smithy/smithy.dart';

class MockStorageS3Service extends Mock implements StorageS3Service {}

class MockS3Client extends Mock implements S3Client {}

class MockAWSLogger extends Mock implements AWSLogger {}

class MockAWSSigV4Signer extends Mock implements AWSSigV4Signer {}

class MockS3DownloadTask extends Mock implements S3DownloadTask {}

class MockS3UploadTask extends Mock implements S3UploadTask {}

class MockTransferDatabase extends Mock implements TransferDatabase {}

class MockSmithyOperation<T> extends Mock implements SmithyOperation<T> {}

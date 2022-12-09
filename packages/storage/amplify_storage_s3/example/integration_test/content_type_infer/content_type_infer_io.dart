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

import 'dart:io' as io;

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:aws_common/vm.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:path/path.dart' as path;

void testContentTypeInferTest({
  required List<int> smallFileBytes,
  required List<int> largeFileBytes,
}) {
  final tempPath = io.Directory.systemTemp.path;
  final ioSmallFile = io.File(path.join(tempPath, 'small.txt'));
  final ioLargeFile = io.File(path.join(tempPath, 'large.jpg'));
  final testFiles = [
    AWSFile.fromPath(ioSmallFile.path),
    AWSFilePlatform.fromFile(ioLargeFile),
  ];
  final testUploadKeys = [
    'small-${uuid()}',
    'large-${uuid()}',
  ];
  final expectedContentTypes = ['text/plain', 'image/jpeg'];

  group('content type inferring within upload', () {
    setUpAll(() async {
      await ioSmallFile.writeAsBytes(smallFileBytes, flush: true);
      await ioLargeFile.writeAsBytes(largeFileBytes, flush: true);
    });

    tearDownAll(() async {
      await Amplify.Storage.removeMany(
        keys: testUploadKeys,
        options: const S3RemoveManyOptions(
          accessLevel: StorageAccessLevel.private,
        ),
      ).result;
    });

    testFiles.asMap().forEach((index, file) {
      testWidgets(
        'should infer contentType as ${expectedContentTypes[index]}',
        (WidgetTester tester) async {
          final awsFileContentType = await file.contentType;
          final s3Plugin =
              Amplify.Storage.getPlugin(AmplifyStorageS3.pluginKey);
          final result = await s3Plugin
              .uploadFile(
                localFile: file,
                key: testUploadKeys[index],
                options: const S3UploadFileOptions(
                  accessLevel: StorageAccessLevel.private,
                  getProperties: true,
                ),
              )
              .result;

          expect(awsFileContentType, expectedContentTypes[index]);
          expect(
            result,
            isA<S3UploadFileResult>().having(
              (o) => o.uploadedItem,
              'uploadedItem',
              isA<S3Item>().having(
                (o) => o.contentType,
                'contentType',
                expectedContentTypes[index],
              ),
            ),
          );
        },
      );
    });
  });
}

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

// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:aws_common/web.dart';
import 'package:flutter_test/flutter_test.dart';

void testContentTypeInferTest({
  required List<int> smallFileBytes,
  required List<int> largeFileBytes,
}) {
  final smallFileBlob = html.Blob(smallFileBytes, 'text/plain');
  final smallFile = html.File(
    [smallFileBlob],
    'small_txt.txt',
    {
      'type': smallFileBlob.type,
    },
  );
  final largeFile = html.Blob([largeFileBytes], 'image/jpeg');
  final testFiles = [smallFile, largeFile, smallFile];
  final largeFilePath = html.Url.createObjectUrl(smallFile);
  final testAWSFiles = [
    AWSFilePlatform.fromFile(smallFile),
    AWSFilePlatform.fromBlob(largeFile),
    AWSFile.fromPath(largeFilePath),
  ];
  final testUploadKeys = [
    'small-${uuid()}',
    'large-${uuid()}',
    'large-2-${uuid()}',
  ];

  group('content type inferring within upload', () {
    tearDownAll(() async {
      await Amplify.Storage.removeMany(
        keys: testUploadKeys,
        options: const S3RemoveManyOptions(
          accessLevel: StorageAccessLevel.private,
        ),
      ).result;
    });

    testAWSFiles.asMap().forEach((index, file) {
      testWidgets('should infer contentType as ${testFiles[index].type}',
          (WidgetTester tester) async {
        final awsFileContentType = await file.contentType;
        final s3Plugin = Amplify.Storage.getPlugin(AmplifyStorageS3.pluginKey);

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

        expect(awsFileContentType, testFiles[index].type);
        expect(
          result,
          isA<S3UploadFileResult>().having(
            (o) => o.uploadedItem,
            'uploadedItem',
            isA<S3Item>().having(
              (o) => o.contentType,
              'contentType',
              testFiles[index].type,
            ),
          ),
        );
      });
    });
  });
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;

import 'test_acceleration_config.dart';

void testTransferAcceleration({
  required List<TestTransferAccelerationConfig<S3DataPayload>> dataPayloads,
  required List<TestTransferAccelerationConfig<AWSFile>> awsFiles,
}) {
  group('Operation on S3DataPayload with transfer acceleration', () {
    tearDownAll(() async {
      for (final dataPayload in dataPayloads) {
        await Amplify.Storage.remove(
          key: dataPayload.targetKey,
          options: S3RemoveOptions(accessLevel: dataPayload.targetAccessLevel),
        ).result;
      }
    });

    group('upload', () {
      for (final entry in dataPayloads.asMap().entries) {
        test('S3DataPayload ${entry.key}', () async {
          final dataPayload = entry.value;
          final operation = Amplify.Storage.uploadData(
            data: dataPayload.uploadSource,
            key: dataPayload.targetKey,
            options: S3UploadDataOptions(
              accessLevel: dataPayload.targetAccessLevel,
              useAccelerateEndpoint: true,
            ),
          );

          await expectLater(operation.result, completes);
        });
      }
    });

    group(
      'download',
      () {
        group('via getUrl generated downloadable url', () {
          for (final entry in dataPayloads.asMap().entries) {
            test('S3DataPayload ${entry.key}', () async {
              final dataPayload = entry.value;
              final result = await Amplify.Storage.getUrl(
                key: dataPayload.targetKey,
                options: S3GetUrlOptions(
                  accessLevel: dataPayload.targetAccessLevel,
                  expiresIn: const Duration(minutes: 5),
                  useAccelerateEndpoint: true,
                ),
              ).result;
              final downloadedBytes = await http.readBytes(result.url);
              expect(downloadedBytes, equals(dataPayload.referenceBytes));
            });
          }
        });

        group('via storage downloadData API', () {
          for (final entry in dataPayloads.asMap().entries) {
            test('S3DataPayload ${entry.key}', () async {
              final dataPayload = entry.value;
              final result = await Amplify.Storage.downloadData(
                key: dataPayload.targetKey,
                options: S3DownloadDataOptions(
                  accessLevel: dataPayload.targetAccessLevel,
                  useAccelerateEndpoint: true,
                ),
              ).result;

              expect(result.bytes, equals(dataPayload.referenceBytes));
            });
          }
        });
      },
    );
  });

  group('Operation on AWSFile with transfer acceleration', () {
    tearDownAll(() async {
      for (final awsFile in awsFiles) {
        await Amplify.Storage.remove(
          key: awsFile.targetKey,
          options: S3RemoveOptions(accessLevel: awsFile.targetAccessLevel),
        ).result;
      }
    });

    group('upload', () {
      for (final entry in awsFiles.asMap().entries) {
        test('AWSFile ${entry.key}', () async {
          final awsFile = entry.value;
          final operation = Amplify.Storage.uploadFile(
            localFile: awsFile.uploadSource,
            key: awsFile.targetKey,
            options: S3UploadFileOptions(
              accessLevel: awsFile.targetAccessLevel,
              useAccelerateEndpoint: true,
            ),
          );

          await expectLater(operation.result, completes);
        });
      }
    });

    group(
      'download',
      () {
        group('via getUrl generated downloadable url', () {
          for (final entry in awsFiles.asMap().entries) {
            test('AWSFile ${entry.key}', () async {
              final awsFile = entry.value;
              final result = await Amplify.Storage.getUrl(
                key: awsFile.targetKey,
                options: S3GetUrlOptions(
                  accessLevel: awsFile.targetAccessLevel,
                  expiresIn: const Duration(minutes: 5),
                  useAccelerateEndpoint: true,
                ),
              ).result;
              final downloadedBytes = await http.readBytes(result.url);
              expect(downloadedBytes, equals(awsFile.referenceBytes));
            });
          }
        });

        group('via storage download data API', () {
          for (final entry in awsFiles.asMap().entries) {
            test('AWSFile ${entry.key}', () async {
              final awsFile = entry.value;
              final result = await Amplify.Storage.downloadData(
                key: awsFile.targetKey,
                options: S3DownloadDataOptions(
                  accessLevel: awsFile.targetAccessLevel,
                  useAccelerateEndpoint: true,
                ),
              ).result;

              expect(result.bytes, equals(awsFile.referenceBytes));
            });
          }
        });
      },
    );
  });
}

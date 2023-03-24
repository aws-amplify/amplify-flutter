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
          options:
              StorageRemoveOptions(accessLevel: dataPayload.targetAccessLevel),
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
            options: StorageUploadDataOptions(
              accessLevel: dataPayload.targetAccessLevel,
              pluginOptions:
                  const S3UploadDataPluginOptions(useAccelerateEndpoint: true),
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
                options: StorageGetUrlOptions(
                  accessLevel: dataPayload.targetAccessLevel,
                  pluginOptions: const S3GetUrlPluginOptions(
                    expiresIn: Duration(minutes: 5),
                    useAccelerateEndpoint: true,
                  ),
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
                options: StorageDownloadDataOptions(
                  accessLevel: dataPayload.targetAccessLevel,
                  pluginOptions: const S3DownloadDataPluginOptions(
                    useAccelerateEndpoint: true,
                  ),
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
          options: StorageRemoveOptions(accessLevel: awsFile.targetAccessLevel),
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
            options: StorageUploadFileOptions(
              accessLevel: awsFile.targetAccessLevel,
              pluginOptions: const S3UploadFilePluginOptions(
                useAccelerateEndpoint: true,
              ),
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
            test(
              'AWSFile ${entry.key}',
              () async {
                final awsFile = entry.value;
                final result = await Amplify.Storage.getUrl(
                  key: awsFile.targetKey,
                  options: StorageGetUrlOptions(
                    accessLevel: awsFile.targetAccessLevel,
                    pluginOptions: const S3GetUrlPluginOptions(
                      expiresIn: Duration(minutes: 5),
                      useAccelerateEndpoint: true,
                    ),
                  ),
                ).result;

                final downloadedBytes = await http.readBytes(result.url);
                expect(downloadedBytes, equals(awsFile.referenceBytes));
              },
              timeout: const Timeout(Duration(minutes: 2)),
            );
          }
        });

        group('via storage download data API', () {
          for (final entry in awsFiles.asMap().entries) {
            test('AWSFile ${entry.key}', () async {
              const start = 5 * 1024;
              const end = 5 * 1024 + 12;
              final awsFile = entry.value;
              final result = await Amplify.Storage.downloadData(
                key: awsFile.targetKey,
                options: StorageDownloadDataOptions(
                  accessLevel: awsFile.targetAccessLevel,
                  pluginOptions: S3DownloadDataPluginOptions(
                    useAccelerateEndpoint: true,
                    bytesRange: S3DataBytesRange(start: start, end: end),
                  ),
                ),
              ).result;

              expect(
                result.bytes,
                equals(awsFile.referenceBytes.sublist(start, end + 1)),
              );
            });
          }
        });
      },
    );
  });
}

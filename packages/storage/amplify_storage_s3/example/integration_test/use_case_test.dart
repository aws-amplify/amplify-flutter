// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:io' as io;

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage/amplify_secure_storage.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:amplify_storage_s3_example/amplifyconfiguration.dart';
import 'package:drift/drift.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:integration_test/integration_test.dart';
import 'package:path/path.dart' as path;

import 'content_type_infer/content_type_infer.dart';
import 'transfer_acceleration/test_acceleration_config.dart';
import 'transfer_acceleration/transfer_acceleration.dart';

void main() {
  // Disable Drift multi QueryExecutor warning as we know what's going on
  // in this test suite
  driftRuntimeOptions.dontWarnAboutMultipleDatabases = true;
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  final username1 = 'test-user-1-${uuid()}';
  final username2 = 'test-user-2-${uuid()}';
  const password = 'TestUser1!';
  final testBytes = utf8.encode('Hello world, I ❤️ Amplify, 正确！');
  const testDataUrl =
      'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAASABIAAD/4QCYRXhpZgAATU0AKgAAAAgABgEGAAMAAAABAAIAAAESAAMAAAABAAEAAAEaAAUAAAABAAAAVgEbAAUAAAABAAAAXgEoAAMAAAABAAIAAIdpAAQAAAABAAAAZgAAAAAAAABIAAAAAQAAAEgAAAABAAOgAQADAAAAAQABAACgAgAEAAAAAQAAADKgAwAEAAAAAQAAACoAAAAA/8AAEQgAKgAyAwEiAAIRAQMRAf/EAB8AAAEFAQEBAQEBAAAAAAAAAAABAgMEBQYHCAkKC//EALUQAAIBAwMCBAMFBQQEAAABfQECAwAEEQUSITFBBhNRYQcicRQygZGhCCNCscEVUtHwJDNicoIJChYXGBkaJSYnKCkqNDU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6g4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2drh4uPk5ebn6Onq8fLz9PX29/j5+v/EAB8BAAMBAQEBAQEBAQEAAAAAAAABAgMEBQYHCAkKC//EALURAAIBAgQEAwQHBQQEAAECdwABAgMRBAUhMQYSQVEHYXETIjKBCBRCkaGxwQkjM1LwFWJy0QoWJDThJfEXGBkaJicoKSo1Njc4OTpDREVGR0hJSlNUVVZXWFlaY2RlZmdoaWpzdHV2d3h5eoKDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uLj5OXm5+jp6vLz9PX29/j5+v/bAEMAFhYWFhYWJhYWJjYmJiY2STY2NjZJXUlJSUlJXXBdXV1dXV1wcHBwcHBwcIaGhoaGhpycnJycr6+vr6+vr6+vr//bAEMBGx0dLSktTSkpTbd8Zny3t7e3t7e3t7e3t7e3t7e3t7e3t7e3t7e3t7e3t7e3t7e3t7e3t7e3t7e3t7e3t7e3t//dAAQABP/aAAwDAQACEQMRAD8A66iiigBrNtUse1MjlWThe1VnmZLjDfd6fh60xgYJcjp2+lcs67TutluaqGho0UgIYZHelrqMgooooA//0Ouqpdy7E2Dq38qtMQoLHoKxwTdT5PA/kKwrSaXKt2a0o3d3siy6tLAspHzD9RQh86HZ/EvT6VeyoGOMVnMDbzZXp1H0rKpHl957bMqLvoT20n/LM/hVys+UbHEqdG5FXkcOoYd6uhJq9N9CJr7SHUUUV0mZ/9HpriOSVdiEAd6qizkHTFaVFYzoxm7s0jUaVkZv2SX1FTmB2hCNjK9DVuilHDxQOo2VUhfyzG5HtToI5I8hsYNWKKpUopp9hObYUUUVqQf/2Q==';
  final testLargeFileBytes = Uint8List(6 * 1024 * 1024); // 6MiB
  testLargeFileBytes[0] = 101;
  testLargeFileBytes[5 * 1024] = 102;
  final testObjectKey1 = 'user1-guest-object-${uuid()}';
  final testObjectKey2 = 'user1-protected-object-${uuid()}';
  final testObjectKey3 = 'user1-private-object-${uuid()}';
  final testObject3CopyKey = 'user1-private-object-copy-${uuid()}';
  final testObject3CopyMoveKey = 'user1-private-object-copy-move-${uuid()}';
  const testObjectFileName1 = 'user1Guest.txt';
  const testObjectFileName2 = 'user1Protected.jpg';
  const testObjectFileName3 = 'user1Private.large';

  for (final entry in amplifyEnvironments.entries
      .where((element) => element.key != 'custom-prefix')) {
    group('[Environment ${entry.key}]', () {
      late String user1IdentityId;
      late String object1Etag;
      late String object2Etag;
      late String object3Etag;
      final shouldTestTransferAcceleration = entry.key != 'dots-in-name';

      setUpAll(() async {
        final authPlugin = AmplifyAuthCognito(
          secureStorageFactory: AmplifySecureStorage.factoryFrom(
            macOSOptions: MacOSSecureStorageOptions(useDataProtection: false),
          ),
        );
        final storagePlugin = AmplifyStorageS3();
        await Amplify.addPlugins([authPlugin, storagePlugin]);
        await Amplify.configure(amplifyEnvironments[entry.key]!);

        // confirm no user is signed in before starting tests
        try {
          await Amplify.Auth.signOut();
        } on Exception {
          // do nothing
        }

        await Amplify.Auth.signUp(
          username: username1,
          password: password,
        );

        await Amplify.Auth.signUp(
          username: username2,
          password: password,
        );
        await Amplify.Auth.signIn(
          username: username1,
          password: password,
        );
        final user1Session = await Amplify.Auth.fetchAuthSession();
        user1IdentityId =
            (user1Session as CognitoAuthSession).identityIdResult.value;
        await Amplify.Auth.signOut();

        await Amplify.Auth.signIn(
          username: username2,
          password: password,
        );
        await Amplify.Auth.signOut();
      });

      tearDownAll(() async {
        try {
          await Amplify.Auth.signOut();
          await Amplify.Auth.signIn(
            username: username1,
            password: password,
          );
          await Amplify.Auth.deleteUser();
          await Amplify.Auth.signIn(
            username: username2,
            password: password,
          );
          await Amplify.Auth.deleteUser();
        } finally {
          await Amplify.reset();
        }
      });

      group('[User A behaviors]', () {
        setUpAll(() async {
          await Amplify.Auth.signIn(
            username: username1,
            password: password,
          );
        });

        tearDownAll(() async {
          await Amplify.Auth.signOut();
        });

        testWidgets('upload data with access level - guest',
            (WidgetTester tester) async {
          const testContentType = 'text/plain';
          final s3Plugin =
              Amplify.Storage.getPlugin(AmplifyStorageS3.pluginKey);
          final result = await s3Plugin
              .uploadData(
                data: S3DataPayload.bytes(
                  testBytes,
                  contentType: testContentType,
                ),
                path: StoragePath.fromString('public/$testObjectKey1'),
                options: const StorageUploadDataOptions(
                  metadata: {
                    'filename': testObjectFileName1,
                  },
                  pluginOptions: S3UploadDataPluginOptions(
                    getProperties: true,
                  ),
                ),
              )
              .result;

          expect(
            result,
            isA<S3UploadDataResult>().having(
              (o) => o.uploadedItem,
              'uploadedItem',
              isA<S3Item>()
                  .having(
                    (o) => o.contentType,
                    'contentType',
                    testContentType,
                  )
                  .having(
                    (o) => o.eTag,
                    'eTag',
                    isNotEmpty,
                  )
                  .having(
                    (o) => o.metadata,
                    'metadata',
                    containsPair(
                      'filename',
                      testObjectFileName1,
                    ),
                  ),
            ),
          );

          object1Etag = result.uploadedItem.eTag!;
        });

        testWidgets('upload data url with access level - protected',
            (WidgetTester tester) async {
          final s3Plugin =
              Amplify.Storage.getPlugin(AmplifyStorageS3.pluginKey);
          final result = await s3Plugin
              .uploadData(
                data: S3DataPayload.dataUrl(testDataUrl),
                path: StoragePath.fromIdentityId(
                  (identityId) => 'protected/$identityId/$testObjectKey2',
                ),
                options: const StorageUploadDataOptions(
                  metadata: {
                    'filename': testObjectFileName2,
                  },
                  pluginOptions: S3UploadDataPluginOptions(
                    getProperties: true,
                  ),
                ),
              )
              .result;

          expect(
            result,
            isA<S3UploadDataResult>().having(
              (o) => o.uploadedItem,
              'uploadedItem',
              isA<S3Item>()
                  .having(
                    (o) => o.contentType,
                    'contentType',
                    'image/jpeg',
                  )
                  .having((o) => o.eTag, 'eTag', isNotEmpty),
            ),
          );

          object2Etag = result.uploadedItem.eTag!;
        });

        testWidgets('upload large file with access level - private',
            (WidgetTester tester) async {
          final s3Plugin =
              Amplify.Storage.getPlugin(AmplifyStorageS3.pluginKey);
          final result = await s3Plugin
              .uploadFile(
                localFile: AWSFile.fromData(testLargeFileBytes),
                path: StoragePath.fromIdentityId(
                  (identityId) => 'private/$identityId/$testObjectKey3',
                ),
                options: const StorageUploadFileOptions(
                  metadata: {
                    'filename': testObjectFileName3,
                  },
                  pluginOptions: S3UploadFilePluginOptions(
                    getProperties: true,
                  ),
                ),
              )
              .result;

          expect(
            result,
            isA<S3UploadFileResult>().having(
              (o) => o.uploadedItem,
              'uploadedItem',
              isA<S3Item>()
                  .having(
                    (o) => o.contentType,
                    'contentType',
                    'application/octet-stream',
                  )
                  .having((o) => o.eTag, 'eTag', isNotEmpty),
            ),
          );

          object3Etag = result.uploadedItem.eTag!;
        });

        testWidgets(
            'generate downloadable url with access level private for the'
            ' currently signed in user', (WidgetTester tester) async {
          final result = await Amplify.Storage.getUrl(
            path: StoragePath.fromIdentityId(
              (identityId) => 'private/$identityId/$testObjectKey3',
            ),
            options: const StorageGetUrlOptions(
              pluginOptions: S3GetUrlPluginOptions(
                validateObjectExistence: true,
                expiresIn: Duration(minutes: 5),
              ),
            ),
          ).result;
          final downloadedBytes = await http.readBytes(result.url);
          expect(downloadedBytes, equals(testLargeFileBytes));
        });

        testWidgets(
            'should throw generating downloadable url of a non-existent object',
            (WidgetTester tester) async {
          final result = Amplify.Storage.getUrl(
            path: const StoragePath.fromString(
              'public/random/non-existent/object.png',
            ),
            options: const StorageGetUrlOptions(
              pluginOptions: S3GetUrlPluginOptions(
                validateObjectExistence: true,
                expiresIn: Duration(minutes: 5),
              ),
            ),
          ).result;

          expect(result, throwsA(isA<StorageKeyNotFoundException>()));
        });

        testWidgets(
            'download object as bytes data in memory with access level private'
            ' for the currently signed in user', (WidgetTester tester) async {
          final result = await Amplify.Storage.downloadData(
            path: StoragePath.fromIdentityId(
              (identityId) => 'private/$identityId/$testObjectKey3',
            ),
            options: const StorageDownloadDataOptions(
              pluginOptions: S3DownloadDataPluginOptions(
                getProperties: true,
              ),
            ),
          ).result;

          expect(result.bytes, equals(testLargeFileBytes));
          expect(result.downloadedItem.eTag, object3Etag);
        });

        testWidgets(
            'download a range of bytes of an object with access level private'
            ' for the currently signed in user', (WidgetTester tester) async {
          const start = 5 * 1024;
          const end = 5 * 1024 + 12;
          final result = await Amplify.Storage.downloadData(
            path: StoragePath.fromIdentityId(
              (identityId) => 'private/$identityId/$testObjectKey3',
            ),
            options: StorageDownloadDataOptions(
              pluginOptions: S3DownloadDataPluginOptions(
                getProperties: true,
                bytesRange: S3DataBytesRange(
                  start: start,
                  end: end,
                ),
              ),
            ),
          ).result;

          expect(
            result.bytes,
            // bytes range end position inclusive
            equals(testLargeFileBytes.sublist(start, end + 1)),
          );
          expect(result.downloadedItem.eTag, object3Etag);
        });

        testWidgets(
          'download file with access level private for the currently signed in user',
          (WidgetTester tester) async {
            final s3Plugin =
                Amplify.Storage.getPlugin(AmplifyStorageS3.pluginKey);
            final tempPath = io.Directory.systemTemp.path;
            final ioFile = io.File(path.join(tempPath, 'test_file'));
            final localFile = AWSFile.fromPath(ioFile.path);

            final result = await s3Plugin
                .downloadFile(
                  path: StoragePath.fromIdentityId(
                    (identityId) => 'private/$identityId/$testObjectKey3',
                  ),
                  localFile: localFile,
                  options: const StorageDownloadFileOptions(
                    pluginOptions: S3DownloadFilePluginOptions(
                      getProperties: true,
                    ),
                  ),
                )
                .result;

            final downloadedIOFile = io.File(result.localFile.path!);
            expect(
              downloadedIOFile.readAsBytesSync(),
              equals(testLargeFileBytes),
            );
          },
          // Web download relies on getUrl which has been covered in the getUrl
          // integration test run.
          skip: zIsWeb,
        );

        testWidgets(
            'copy object with access level private for the currently signed in user',
            (WidgetTester tester) async {
          final result = await Amplify.Storage.copy(
            source: StoragePath.fromIdentityId(
              (identityId) => 'private/$identityId/$testObjectKey3',
            ),
            destination: StoragePath.fromIdentityId(
              (identityId) => 'private/$identityId/$testObject3CopyKey',
            ),
            options: const StorageCopyOptions(
              pluginOptions: S3CopyPluginOptions(
                getProperties: true,
              ),
            ),
          ).result;

          expect(result.copiedItem.path.endsWith(testObject3CopyKey), isTrue);
          expect(result.copiedItem.eTag, isNotEmpty);
        });

        testWidgets(
            'delete object with access level private for the currently signed in user',
            (WidgetTester tester) async {
          final result = await Amplify.Storage.remove(
            path: StoragePath.fromIdentityId(
              (id) => 'private/$id/$testObject3CopyMoveKey',
            ),
          ).result;

          expect(
            result.removedItem.path.endsWith(testObject3CopyMoveKey),
            isTrue,
          );
        });

        group('content type infer', () {
          testContentTypeInferTest(
            smallFileBytes: testBytes,
            largeFileBytes: testLargeFileBytes,
          );
        });

        if (shouldTestTransferAcceleration) {
          group('transfer acceleration', () {
            final dataPayloadId = uuid();
            final awsFileId = uuid();
            testTransferAcceleration(
              dataPayloads: [
                TestTransferAccelerationConfig(
                  targetPath: StoragePath.fromString(
                    'public/transfer-acceleration-datapayload-$dataPayloadId',
                  ),
                  uploadSource: S3DataPayload.bytes(
                    testBytes,
                  ),
                  referenceBytes: testBytes,
                ),
              ],
              awsFiles: [
                TestTransferAccelerationConfig(
                  targetPath: StoragePath.fromIdentityId(
                    (identityId) =>
                        'private/$identityId/transfer-acceleration-awsfile-$awsFileId',
                  ),
                  uploadSource: AWSFile.fromData(testLargeFileBytes),
                  referenceBytes: testLargeFileBytes,
                ),
              ],
            );
          });
        }

        testWidgets(
            'multiple fields of user defined metadata with non-ascii string values',
            (widgetTester) async {
          final objectKey = 'metadata-test-${uuid()}';
          const testContentType = 'text/plain';
          final testMetadata = {
            'filename': objectKey,
            'description': 'Today is a 🌞 晴天 😎',
            'owner': '悟空',
          };
          final s3Plugin =
              Amplify.Storage.getPlugin(AmplifyStorageS3.pluginKey);
          final result = await s3Plugin
              .uploadData(
                data: S3DataPayload.bytes(
                  testBytes,
                  contentType: testContentType,
                ),
                path: StoragePath.fromString('public/$objectKey'),
                options: StorageUploadDataOptions(
                  metadata: testMetadata,
                  pluginOptions: const S3UploadDataPluginOptions(
                    getProperties: true,
                  ),
                ),
              )
              .result;

          expect(
            result,
            isA<S3UploadDataResult>().having(
              (o) => o.uploadedItem,
              'uploadedItem',
              isA<S3Item>().having(
                (o) => o.metadata,
                'metadata',
                isNotEmpty,
              ),
            ),
          );

          final metadata = result.uploadedItem.metadata;

          expect(metadata, equals(testMetadata));

          await s3Plugin
              .remove(path: StoragePath.fromString('public/$objectKey'))
              .result;
        });
      });

      group(
        '[User B behaviors]',
        () {
          setUpAll(() async {
            await Amplify.Auth.signIn(
              username: username2,
              password: password,
            );
          });

          tearDownAll(() async {
            await Amplify.Auth.signOut();
          });

          testWidgets('get properties of object with access level guest',
              (WidgetTester tester) async {
            final result = await Amplify.Storage.getProperties(
              path: StoragePath.fromString('public/$testObjectKey1'),
            ).result;

            expect(result.storageItem.eTag, object1Etag);
          });

          testWidgets(
              'get properties of object with access level protected and a target identity id',
              (WidgetTester tester) async {
            final result = await Amplify.Storage.getProperties(
              path: StoragePath.fromString(
                'protected/$user1IdentityId/$testObjectKey2',
              ),
            ).result;

            expect(result.storageItem.eTag, object2Etag);
          });

          testWidgets(
              'get properties of object (belongs to other user) with access level'
              ' private for the currently signed user throws exception',
              (WidgetTester tester) async {
            final operation = Amplify.Storage.getProperties(
              path: StoragePath.fromIdentityId(
                (identityId) => 'private/$identityId/$testObjectKey3',
              ),
            );

            await expectLater(
              operation.result,
              throwsA(isA<StorageKeyNotFoundException>()),
            );
          });

          testWidgets('get url of object with access level guest',
              (WidgetTester tester) async {
            final operation = Amplify.Storage.getUrl(
              path: StoragePath.fromString('public/$testObjectKey1'),
              options: const StorageGetUrlOptions(
                pluginOptions: S3GetUrlPluginOptions(
                  validateObjectExistence: true,
                ),
              ),
            );

            await expectLater(operation.result, completes);
          });

          testWidgets(
              'get url of object with access level protected and a target identity id',
              (WidgetTester tester) async {
            final operation = Amplify.Storage.getUrl(
              path: StoragePath.fromIdentityId(
                (identityId) => 'protected/$identityId/$testObjectKey2',
              ),
              options: const StorageGetUrlOptions(
                pluginOptions: S3GetUrlPluginOptions(),
              ),
            );

            await expectLater(operation.result, completes);
          });

          testWidgets(
              'get url of object (belongs to other user) with access level'
              ' private for the currently signed user throws exception',
              (WidgetTester tester) async {
            final operation = Amplify.Storage.getUrl(
              path: StoragePath.fromIdentityId(
                (identityId) => 'private/$identityId/$testObjectKey3',
              ),
              options: const StorageGetUrlOptions(
                pluginOptions: S3GetUrlPluginOptions(
                  validateObjectExistence: true,
                ),
              ),
            );

            await expectLater(
              operation.result,
              throwsA(isA<StorageKeyNotFoundException>()),
            );
          });

          testWidgets(
              'download data of object with access level protected and a target'
              ' identity id for the currently signed user',
              (WidgetTester tester) async {
            final result = await Amplify.Storage.downloadData(
              path: StoragePath.fromString(
                'protected/$user1IdentityId/$testObjectKey2',
              ),
              options: const StorageDownloadDataOptions(
                pluginOptions: S3DownloadDataPluginOptions(
                  getProperties: true,
                ),
              ),
            ).result;

            expect(result.downloadedItem.eTag, object2Etag);
          });

          testWidgets(
              'download data of object (belongs to other user) with access level'
              ' private for the currently signed user',
              (WidgetTester tester) async {
            final operation = Amplify.Storage.downloadData(
              path: StoragePath.fromIdentityId(
                (identityId) => 'private/$identityId/$testObjectKey3',
              ),
              options: const StorageDownloadDataOptions(
                pluginOptions: S3DownloadDataPluginOptions(
                  getProperties: true,
                ),
              ),
            );

            await expectLater(
              operation.result,
              throwsA(isA<StorageKeyNotFoundException>()),
            );
          });

          testWidgets(
              'copy object (belongs to other user) with access level protected'
              ' for the currently signed in user', (WidgetTester tester) async {
            final result = await Amplify.Storage.copy(
              source: StoragePath.fromString(
                'protected/$user1IdentityId/$testObjectKey2',
              ),
              destination: StoragePath.fromIdentityId(
                (identityId) => 'private/$identityId/$testObjectKey2',
              ),
              options: const StorageCopyOptions(
                pluginOptions: S3CopyPluginOptions(
                  getProperties: true,
                ),
              ),
            ).result;

            expect(result.copiedItem.eTag, isNotEmpty);
          });

          testWidgets('list respects pageSize', (WidgetTester tester) async {
            const filesToUpload = 2;
            const filesToList = 1;
            final uploadedKeys = <String>[];
            // Upload some files to test.
            for (var i = filesToUpload; i > 0; i--) {
              final fileKey = 'testObjectKey${uuid()}';
              uploadedKeys.add(fileKey);
              final fileNameTemp = 'userPrivate${uuid()}.txt';
              await Amplify.Storage.uploadData(
                data: S3DataPayload.bytes(
                  testBytes,
                  contentType: 'text/plain',
                ),
                path: StoragePath.fromIdentityId(
                  (identityId) => 'private/$identityId/$fileKey',
                ),
                options: StorageUploadDataOptions(
                  metadata: {
                    'filename': fileNameTemp,
                  },
                ),
              ).result;
            }

            // Call list() and ensure length of result matches pageSize.
            final listResult = await Amplify.Storage.list(
              path: StoragePath.fromIdentityId(
                (identityId) => 'private/$identityId/',
              ),
              options: const StorageListOptions(
                pageSize: filesToList,
              ),
            ).result;
            expect(listResult.nextToken?.isNotEmpty, isTrue);
            expect(listResult.items.length, filesToList);
            // Clean up files from this test.
            await Amplify.Storage.removeMany(
              paths: uploadedKeys
                  .map(
                    (key) => StoragePath.fromIdentityId(
                      (identityId) => 'private/$identityId/$key',
                    ),
                  )
                  .toList(),
            ).result;
          });

          testWidgets('list uses nextToken for pagination',
              (WidgetTester tester) async {
            const filesToUpload = 2;
            const filesToList = 1;
            final keyPrefix = 'testObjectList${uuid()}';
            final uploadedKeys = <String>[];
            // Upload some files to test.
            for (var i = filesToUpload; i > 0; i--) {
              final fileKey = '$keyPrefix/uploadToList${uuid()}';
              uploadedKeys.add(fileKey);
              final fileNameTemp = 'userPrivate${uuid()}.txt';
              await Amplify.Storage.uploadData(
                data: S3DataPayload.bytes(
                  testBytes,
                  contentType: 'text/plain',
                ),
                path: StoragePath.fromIdentityId(
                  (identityId) => 'private/$identityId/$fileKey',
                ),
                options: StorageUploadDataOptions(
                  metadata: {
                    'filename': fileNameTemp,
                  },
                ),
              ).result;
            }

            String? lastNextToken;
            var timesCalled = 0;
            do {
              // Call list() until nextToken is null and ensure we paginated expected times.
              final listResult = await Amplify.Storage.list(
                path: StoragePath.fromIdentityId(
                  (identityId) => 'private/$identityId/$keyPrefix',
                ),
                options: StorageListOptions(
                  pageSize: filesToList,
                  nextToken: lastNextToken,
                ),
              ).result;
              lastNextToken = listResult.nextToken;
              timesCalled++;
            } while (lastNextToken != null);
            expect(timesCalled, equals(filesToUpload));
            // Clean up files from this test.
            await Amplify.Storage.removeMany(
              paths: uploadedKeys
                  .map(
                    (key) => StoragePath.fromIdentityId(
                      (identityId) => 'private/$identityId/$key',
                    ),
                  )
                  .toList(),
            ).result;
          });

          testWidgets(
              'remove many objects belongs to the currently signed user',
              (WidgetTester tester) async {
            final result1 = await Amplify.Storage.uploadData(
              data: HttpPayload.string('obj1'),
              path: StoragePath.fromIdentityId(
                (identityId) => 'private/$identityId/remove-test/obj1',
              ),
            ).result;

            final result2 = await Amplify.Storage.uploadData(
              data: HttpPayload.string('obj2'),
              path: StoragePath.fromIdentityId(
                (identityId) => 'private/$identityId/remove-test/obj2',
              ),
            ).result;

            final result = await Amplify.Storage.removeMany(
              paths: [
                StoragePath.fromString(result1.uploadedItem.path),
                StoragePath.fromString(result2.uploadedItem.path),
              ],
            ).result;
            expect(result.removedItems, hasLength(2));
            expect(
              result.removedItems.map((item) => item.path),
              containsAll([
                result1.uploadedItem.path,
                result2.uploadedItem.path,
              ]),
            );
          });
        },
      );

      group('[User A behaviors]', () {
        setUpAll(() async {
          await Amplify.Auth.signIn(
            username: username1,
            password: password,
          );
        });

        tearDownAll(() async {
          await Amplify.Auth.signOut();
        });

        testWidgets('remove many objects belongs to the currently signed user',
            (WidgetTester tester) async {
          final result1 = await Amplify.Storage.uploadData(
            data: HttpPayload.string('obj1'),
            path: StoragePath.fromIdentityId(
              (identityId) => 'private/$identityId/remove-test-user-a/obj1',
            ),
          ).result;

          final result2 = await Amplify.Storage.uploadData(
            data: HttpPayload.string('obj2'),
            path: StoragePath.fromIdentityId(
              (identityId) => 'private/$identityId/remove-test-user-a/obj2',
            ),
          ).result;

          final result = await Amplify.Storage.removeMany(
            paths: [
              StoragePath.fromString(result1.uploadedItem.path),
              StoragePath.fromString(result2.uploadedItem.path),
            ],
          ).result;
          expect(result.removedItems, hasLength(2));
          expect(
            result.removedItems.map((item) => item.path),
            containsAll([
              result1.uploadedItem.path,
              result2.uploadedItem.path,
            ]),
          );
        });
      });
    });
  }
}

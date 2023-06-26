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

class CustomPrefixResolver implements S3PrefixResolver {
  const CustomPrefixResolver();

  @override
  Future<String> resolvePrefix({
    required StorageAccessLevel accessLevel,
    String? identityId,
  }) async {
    final session = await Amplify.Auth.fetchAuthSession() as CognitoAuthSession;
    final currentUserIdentityId = session.identityIdResult.value;
    switch (accessLevel) {
      case StorageAccessLevel.guest:
        return 'everyone/';
      case StorageAccessLevel.protected:
        return 'shared/${identityId ?? currentUserIdentityId}/';
      case StorageAccessLevel.private:
        return 'private/$currentUserIdentityId/';
    }
  }
}

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
  final testObject1MoveKey = 'user1-guest-object-move-${uuid()}';
  final testObjectKey2 = 'user1-protected-object-${uuid()}';
  final testObject2MoveKey = 'user1-protected-object-move-${uuid()}';
  final testObjectKey3 = 'user1-private-object-${uuid()}';
  final testObject3CopyKey = 'user1-private-object-copy-${uuid()}';
  final testObject3CopyMoveKey = 'user1-private-object-copy-move-${uuid()}';
  const testObjectFileName1 = 'user1Guest.txt';
  const testObjectFileName2 = 'user1Protected.jpg';
  const testObjectFileName3 = 'user1Private.large';

  for (final entry in amplifyEnvironments.entries) {
    group('[Environment ${entry.key}]', () {
      S3PrefixResolver? prefixResolver;
      late String user1IdentityId;
      late String object1Etag;
      late String object2Etag;
      late String object3Etag;
      final shouldTestTransferAcceleration = entry.key != 'dots-in-name';

      setUpAll(() async {
        if (entry.key == 'custom-prefix') {
          prefixResolver = const CustomPrefixResolver();
        } else if (entry.key == 'no-prefix') {
          prefixResolver = const PassThroughPrefixResolver();
        }
        final authPlugin = AmplifyAuthCognito(
          secureStorageFactory: AmplifySecureStorage.factoryFrom(
            macOSOptions: MacOSSecureStorageOptions(useDataProtection: false),
          ),
        );
        final storagePlugin = AmplifyStorageS3(prefixResolver: prefixResolver);
        await Amplify.addPlugins([authPlugin, storagePlugin]);
        await Amplify.configure(amplifyEnvironments[entry.key]!);

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
                key: testObjectKey1,
                options: const StorageUploadDataOptions(
                  accessLevel: StorageAccessLevel.guest,
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
                key: testObjectKey2,
                options: const StorageUploadDataOptions(
                  accessLevel: StorageAccessLevel.protected,
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
                key: testObjectKey3,
                options: const StorageUploadFileOptions(
                  accessLevel: StorageAccessLevel.private,
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
            key: testObjectKey3,
            options: const StorageGetUrlOptions(
              accessLevel: StorageAccessLevel.private,
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
            key: 'random/non-existent/object.png',
            options: const StorageGetUrlOptions(
              accessLevel: StorageAccessLevel.private,
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
            key: testObjectKey3,
            options: const StorageDownloadDataOptions(
              accessLevel: StorageAccessLevel.private,
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
            key: testObjectKey3,
            options: StorageDownloadDataOptions(
              accessLevel: StorageAccessLevel.private,
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
                  key: testObjectKey3,
                  localFile: localFile,
                  options: const StorageDownloadFileOptions(
                    accessLevel: StorageAccessLevel.private,
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
            source: S3ItemWithAccessLevel(
              storageItem: S3Item(key: testObjectKey3),
              accessLevel: StorageAccessLevel.private,
            ),
            destination: S3ItemWithAccessLevel(
              storageItem: S3Item(key: testObject3CopyKey),
              accessLevel: StorageAccessLevel.private,
            ),
            options: const StorageCopyOptions(
              pluginOptions: S3CopyPluginOptions(
                getProperties: true,
              ),
            ),
          ).result;

          expect(result.copiedItem.key, testObject3CopyKey);
          expect(result.copiedItem.eTag, isNotEmpty);
        });

        testWidgets(
            'move object with access level private for the currently signed in user',
            (WidgetTester tester) async {
          final result = await Amplify.Storage.move(
            source: S3ItemWithAccessLevel(
              storageItem: S3Item(key: testObject3CopyKey),
              accessLevel: StorageAccessLevel.private,
            ),
            destination: S3ItemWithAccessLevel(
              storageItem: S3Item(key: testObject3CopyMoveKey),
              accessLevel: StorageAccessLevel.private,
            ),
            options: const StorageMoveOptions(
              pluginOptions: S3MovePluginOptions(getProperties: true),
            ),
          ).result;

          expect(result.movedItem.key, testObject3CopyMoveKey);
          expect(result.movedItem.eTag, isNotEmpty);

          final listedObjects = await Amplify.Storage.list(
            options: const StorageListOptions(
              accessLevel: StorageAccessLevel.private,
            ),
          ).result;

          expect(
            listedObjects.items.map((item) => item.key),
            isNot(
              contains(testObject3CopyKey),
            ),
          );
        });

        testWidgets(
            'delete object with access level private for the currently signed in user',
            (WidgetTester tester) async {
          final result = await Amplify.Storage.remove(
            key: testObject3CopyMoveKey,
            options: const StorageRemoveOptions(
              accessLevel: StorageAccessLevel.private,
            ),
          ).result;

          expect(result.removedItem.key, testObject3CopyMoveKey);
        });

        group('content type infer', () {
          testContentTypeInferTest(
            smallFileBytes: testBytes,
            largeFileBytes: testLargeFileBytes,
          );
        });

        if (shouldTestTransferAcceleration) {
          group('transfer acceleration', () {
            testTransferAcceleration(
              dataPayloads: [
                TestTransferAccelerationConfig(
                  targetKey: 'transfer-acceleration-datapayload-${uuid()}',
                  targetAccessLevel: StorageAccessLevel.guest,
                  uploadSource: S3DataPayload.bytes(
                    testBytes,
                  ),
                  referenceBytes: testBytes,
                ),
              ],
              awsFiles: [
                TestTransferAccelerationConfig(
                  targetKey: 'transfer-acceleration-awsfile-${uuid()}',
                  targetAccessLevel: StorageAccessLevel.private,
                  uploadSource: AWSFile.fromData(testLargeFileBytes),
                  referenceBytes: testLargeFileBytes,
                )
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
                key: objectKey,
                options: StorageUploadDataOptions(
                  metadata: testMetadata,
                  accessLevel: StorageAccessLevel.guest,
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

          await s3Plugin.remove(key: objectKey).result;
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
            final result =
                await Amplify.Storage.getProperties(key: testObjectKey1).result;

            expect(result.storageItem.eTag, object1Etag);
          });

          testWidgets(
              'get properties of object with access level protected and a target identity id',
              (WidgetTester tester) async {
            final result = await Amplify.Storage.getProperties(
              key: testObjectKey2,
              options: StorageGetPropertiesOptions(
                accessLevel: StorageAccessLevel.protected,
                pluginOptions:
                    S3GetPropertiesPluginOptions.forIdentity(user1IdentityId),
              ),
            ).result;

            expect(result.storageItem.eTag, object2Etag);
          });

          testWidgets(
              'get properties of object (belongs to other user) with access level'
              ' private for the currently signed user throws exception',
              (WidgetTester tester) async {
            final operation = Amplify.Storage.getProperties(
              key: testObjectKey3,
              options: const StorageGetPropertiesOptions(
                accessLevel: StorageAccessLevel.private,
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
              key: testObjectKey1,
              options: const StorageGetUrlOptions(
                accessLevel: StorageAccessLevel.guest,
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
              key: testObjectKey2,
              options: StorageGetUrlOptions(
                accessLevel: StorageAccessLevel.protected,
                pluginOptions: S3GetUrlPluginOptions.forIdentity(
                  user1IdentityId,
                  validateObjectExistence: true,
                ),
              ),
            );

            await expectLater(operation.result, completes);
          });

          testWidgets(
              'get url of object (belongs to other user) with access level'
              ' private for the currently signed user throws exception',
              (WidgetTester tester) async {
            final operation = Amplify.Storage.getUrl(
              key: testObjectKey3,
              options: const StorageGetUrlOptions(
                accessLevel: StorageAccessLevel.private,
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
              key: testObjectKey2,
              options: StorageDownloadDataOptions(
                accessLevel: StorageAccessLevel.protected,
                pluginOptions: S3DownloadDataPluginOptions.forIdentity(
                  user1IdentityId,
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
              key: testObjectKey3,
              options: const StorageDownloadDataOptions(
                accessLevel: StorageAccessLevel.private,
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
              'move object with access level guest for the currently signed in user',
              (WidgetTester tester) async {
            final result = await Amplify.Storage.move(
              source: S3ItemWithAccessLevel(
                storageItem: S3Item(key: testObjectKey1),
                accessLevel: StorageAccessLevel.guest,
              ),
              destination: S3ItemWithAccessLevel(
                storageItem: S3Item(key: testObject1MoveKey),
                accessLevel: StorageAccessLevel.private,
              ),
              options: const StorageMoveOptions(
                pluginOptions: S3MovePluginOptions(
                  getProperties: true,
                ),
              ),
            ).result;

            expect(result.movedItem.eTag, isNotEmpty);
          });

          testWidgets(
              'copy object (belongs to other user) with access level protected'
              ' for the currently signed in user', (WidgetTester tester) async {
            final result = await Amplify.Storage.copy(
              source: S3ItemWithAccessLevel.forIdentity(
                user1IdentityId,
                storageItem: S3Item(key: testObjectKey2),
              ),
              destination: S3ItemWithAccessLevel(
                storageItem: S3Item(key: testObject2MoveKey),
                accessLevel: StorageAccessLevel.private,
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
            const accessLevel = StorageAccessLevel.private;
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
                key: fileKey,
                options: StorageUploadDataOptions(
                  accessLevel: accessLevel,
                  metadata: {
                    'filename': fileNameTemp,
                  },
                ),
              ).result;
            }

            // Call list() and ensure length of result matches pageSize.
            final listResult = await Amplify.Storage.list(
              options: const StorageListOptions(
                accessLevel: accessLevel,
                pageSize: filesToList,
              ),
            ).result;
            expect(listResult.nextToken?.isNotEmpty, isTrue);
            expect(listResult.items.length, filesToList);
            // Clean up files from this test.
            await Amplify.Storage.removeMany(
              keys: uploadedKeys,
              options: const StorageRemoveManyOptions(
                accessLevel: accessLevel,
              ),
            ).result;
          });

          testWidgets('list uses nextToken for pagination',
              (WidgetTester tester) async {
            const filesToUpload = 2;
            const filesToList = 1;
            const accessLevel = StorageAccessLevel.private;
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
                key: fileKey,
                options: StorageUploadDataOptions(
                  accessLevel: accessLevel,
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
                options: StorageListOptions(
                  accessLevel: accessLevel,
                  pageSize: filesToList,
                  nextToken: lastNextToken,
                ),
                path: keyPrefix,
              ).result;
              lastNextToken = listResult.nextToken;
              timesCalled++;
            } while (lastNextToken != null);
            expect(timesCalled, equals(filesToUpload));
            // Clean up files from this test.
            await Amplify.Storage.removeMany(
              keys: uploadedKeys,
              options: const StorageRemoveManyOptions(
                accessLevel: accessLevel,
              ),
            ).result;
          });

          testWidgets(
              'remove many objects belongs to the currently signed user',
              (WidgetTester tester) async {
            final listedObjects = await Amplify.Storage.list(
              options: const StorageListOptions(
                accessLevel: StorageAccessLevel.private,
              ),
            ).result;
            expect(listedObjects.items, hasLength(2));

            final result = await Amplify.Storage.removeMany(
              keys: listedObjects.items.map((item) => item.key).toList(),
              options: const StorageRemoveManyOptions(
                accessLevel: StorageAccessLevel.private,
              ),
            ).result;
            expect(result.removedItems, hasLength(2));
            expect(
              result.removedItems.map((item) => item.key),
              containsAll(
                listedObjects.items.map((item) => item.key).toList(),
              ),
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

        testWidgets('move object with access level protected as object owner',
            (WidgetTester tester) async {
          final result = await Amplify.Storage.move(
            source: S3ItemWithAccessLevel.forIdentity(
              user1IdentityId,
              storageItem: S3Item(key: testObjectKey2),
            ),
            destination: S3ItemWithAccessLevel(
              storageItem: S3Item(key: testObject2MoveKey),
              accessLevel: StorageAccessLevel.private,
            ),
            options: const StorageMoveOptions(
              pluginOptions: S3MovePluginOptions(getProperties: true),
            ),
          ).result;

          expect(result.movedItem.eTag, isNotEmpty);
        });

        testWidgets('remove many objects belongs to the currently signed user',
            (WidgetTester tester) async {
          final listedObjects = await Amplify.Storage.list(
            options: const StorageListOptions(
              accessLevel: StorageAccessLevel.private,
            ),
          ).result;
          expect(listedObjects.items, hasLength(2));

          final result = await Amplify.Storage.removeMany(
            keys: listedObjects.items.map((item) => item.key).toList(),
            options: const StorageRemoveManyOptions(
              accessLevel: StorageAccessLevel.private,
            ),
          ).result;
          expect(result.removedItems, hasLength(2));
          expect(
            result.removedItems.map((item) => item.key),
            containsAll(
              listedObjects.items.map((item) => item.key).toList(),
            ),
          );
        });
      });
    });
  }
}

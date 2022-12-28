// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:convert';
import 'dart:io' as io;

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage/amplify_secure_storage.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:drift/drift.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:integration_test/integration_test.dart';
import 'package:path/path.dart' as path;

import 'content_type_infer/content_type_infer.dart';

class CustomPrefixResolver implements S3PrefixResolver {
  const CustomPrefixResolver();

  @override
  Future<String> resolvePrefix({
    required StorageAccessLevel accessLevel,
    String? identityId,
  }) async {
    final currentUserIdentityId = ((await Amplify.Auth.fetchAuthSession(
      options: const CognitoSessionOptions(
        getAWSCredentials: true,
      ),
    )) as CognitoAuthSession)
        .identityId;
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

void main() async {
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
  final testLargeFileBytes = Uint8List(6 * 1024 * 1024); // 6MB
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

  Completer<void>? groupRunCompleter;

  for (final entry in amplifyEnvironments.entries) {
    await groupRunCompleter?.future;

    S3PrefixResolver? prefixResolver;

    if (entry.key == 'custom-prefix') {
      prefixResolver = const CustomPrefixResolver();
    } else if (entry.key == 'no-prefix') {
      prefixResolver = const PassThroughPrefixResolver();
    }

    group('[Environment ${entry.key}]', () {
      late String user1IdentityId;
      late String object1Etag;
      late String object2Etag;
      late String object3Etag;

      setUpAll(() async {
        groupRunCompleter = Completer();
        await Amplify.reset();
        final authPlugin = AmplifyAuthCognito(
          credentialStorage: AmplifySecureStorage(
            config: AmplifySecureStorageConfig(
              scope: 'auth',
              macOSOptions: MacOSSecureStorageOptions(useDataProtection: false),
            ),
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
        final user1Session = await Amplify.Auth.fetchAuthSession(
          options: const CognitoSessionOptions(
            getAWSCredentials: true,
          ),
        );
        user1IdentityId = (user1Session as CognitoAuthSession).identityId!;
        await Amplify.Auth.signOut();

        await Amplify.Auth.signIn(
          username: username2,
          password: password,
        );
        await Amplify.Auth.signOut();
      });

      tearDownAll(() async {
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
        groupRunCompleter?.complete();
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
                options: const S3UploadDataOptions(
                  accessLevel: StorageAccessLevel.guest,
                  getProperties: true,
                  metadata: {
                    'filename': testObjectFileName1,
                  },
                ),
              )
              .result;

          expect(
            result,
            isA<S3UploadDataResult>().having(
              (o) => o.uploadedItem,
              'uploadedItem',
              isA<S3Item>().having(
                (o) => o.contentType,
                'contentType',
                testContentType,
              ),
            ),
          );

          expect(
            result,
            isA<S3UploadDataResult>().having(
              (o) => o.uploadedItem,
              'uploadedItem',
              isA<S3Item>().having((o) => o.eTag, 'eTag', isNotEmpty),
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
                options: const S3UploadDataOptions(
                  accessLevel: StorageAccessLevel.protected,
                  getProperties: true,
                  metadata: {
                    'filename': testObjectFileName2,
                  },
                ),
              )
              .result;

          expect(
            result,
            isA<S3UploadDataResult>().having(
              (o) => o.uploadedItem,
              'uploadedItem',
              isA<S3Item>().having(
                (o) => o.contentType,
                'contentType',
                'image/jpeg',
              ),
            ),
          );

          expect(
            result,
            isA<S3UploadDataResult>().having(
              (o) => o.uploadedItem,
              'uploadedItem',
              isA<S3Item>().having((o) => o.eTag, 'eTag', isNotEmpty),
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
                options: const S3UploadFileOptions(
                  accessLevel: StorageAccessLevel.private,
                  getProperties: true,
                  metadata: {
                    'filename': testObjectFileName3,
                  },
                ),
              )
              .result;

          expect(
            result,
            isA<S3UploadFileResult>().having(
              (o) => o.uploadedItem,
              'uploadedItem',
              isA<S3Item>().having(
                (o) => o.contentType,
                'contentType',
                'application/octet-stream',
              ),
            ),
          );

          expect(
            result,
            isA<S3UploadFileResult>().having(
              (o) => o.uploadedItem,
              'uploadedItem',
              isA<S3Item>().having((o) => o.eTag, 'eTag', isNotEmpty),
            ),
          );

          object3Etag = result.uploadedItem.eTag!;
        });

        testWidgets(
            'generate downloadable url with access level private for the'
            ' currently signed in user', (WidgetTester tester) async {
          final result = await Amplify.Storage.getUrl(
            key: testObjectKey3,
            options: const S3GetUrlOptions(
              accessLevel: StorageAccessLevel.private,
              checkObjectExistence: true,
              expiresIn: Duration(minutes: 5),
            ),
          ).result;
          final downloadedBytes = await http.readBytes(result.url);
          expect(downloadedBytes, equals(testLargeFileBytes));
        });

        testWidgets(
            'download object as bytes data in memory with access level private'
            ' for the currently signed in user', (WidgetTester tester) async {
          final result = await Amplify.Storage.downloadData(
            key: testObjectKey3,
            options: const S3DownloadDataOptions(
              accessLevel: StorageAccessLevel.private,
              getProperties: true,
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
            options: S3DownloadDataOptions(
              accessLevel: StorageAccessLevel.private,
              getProperties: true,
              bytesRange: S3DataBytesRange(
                start: start,
                end: 5 * 1024 + 12,
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
                  options: const S3DownloadFileOptions(
                    accessLevel: StorageAccessLevel.private,
                    getProperties: true,
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
            options: const S3CopyOptions(
              getProperties: true,
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
            options: const S3MoveOptions(getProperties: true),
          ).result;

          expect(result.movedItem.key, testObject3CopyMoveKey);
          expect(result.movedItem.eTag, isNotEmpty);

          final listedObjects = await Amplify.Storage.list(
            options:
                const S3ListOptions(accessLevel: StorageAccessLevel.private),
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
            options: const S3RemoveOptions(
              accessLevel: StorageAccessLevel.private,
            ),
          ).result;

          expect(result.removedItem.key, testObject3CopyMoveKey);
        });

        testContentTypeInferTest(
          smallFileBytes: testBytes,
          largeFileBytes: testLargeFileBytes,
        );
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
              options: S3GetPropertiesOptions.forIdentity(user1IdentityId),
            ).result;

            expect(result.storageItem.eTag, object2Etag);
          });

          testWidgets(
              'get properties of object (belongs to other user) with access level'
              ' private for the currently signed user throws exception',
              (WidgetTester tester) async {
            final operation = Amplify.Storage.getProperties(
              key: testObjectKey3,
              options: const S3GetPropertiesOptions(
                accessLevel: StorageAccessLevel.private,
              ),
            );

            await expectLater(operation.result, throwsA(isA<S3Exception>()));
          });

          testWidgets('get url of object with access level guest',
              (WidgetTester tester) async {
            final operation = Amplify.Storage.getUrl(
              key: testObjectKey1,
              options: const S3GetUrlOptions(
                checkObjectExistence: true,
              ),
            );

            await expectLater(operation.result, completes);
          });

          testWidgets(
              'get url of object with access level protected and a target identity id',
              (WidgetTester tester) async {
            final operation = Amplify.Storage.getUrl(
              key: testObjectKey2,
              options: S3GetUrlOptions.forIdentity(
                user1IdentityId,
                checkObjectExistence: true,
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
              options: const S3GetUrlOptions(
                accessLevel: StorageAccessLevel.private,
                checkObjectExistence: true,
              ),
            );

            await expectLater(operation.result, throwsA(isA<S3Exception>()));
          });

          testWidgets(
              'download data of object with access level protected and a target'
              ' identity id for the currently signed user',
              (WidgetTester tester) async {
            final result = await Amplify.Storage.downloadData(
              key: testObjectKey2,
              options: S3DownloadDataOptions.forIdentity(
                user1IdentityId,
                getProperties: true,
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
              options: const S3DownloadDataOptions(
                accessLevel: StorageAccessLevel.private,
                getProperties: true,
              ),
            );

            await expectLater(operation.result, throwsA(isA<S3Exception>()));
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
              options: const S3MoveOptions(getProperties: true),
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
              options: const S3CopyOptions(getProperties: true),
            ).result;

            expect(result.copiedItem.eTag, isNotEmpty);
          });

          testWidgets(
              'remove many objects belongs to the currently signed user',
              (WidgetTester tester) async {
            final listedObjects = await Amplify.Storage.list(
              options: const S3ListOptions(
                accessLevel: StorageAccessLevel.private,
              ),
            ).result;
            expect(listedObjects.items, hasLength(2));

            final result = await Amplify.Storage.removeMany(
              keys: listedObjects.items.map((item) => item.key).toList(),
              options: const S3RemoveManyOptions(
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
            options: const S3MoveOptions(getProperties: true),
          ).result;

          expect(result.movedItem.eTag, isNotEmpty);
        });

        testWidgets('remove many objects belongs to the currently signed user',
            (WidgetTester tester) async {
          final listedObjects = await Amplify.Storage.list(
            options: const S3ListOptions(
              accessLevel: StorageAccessLevel.private,
            ),
          ).result;
          expect(listedObjects.items, hasLength(2));

          final result = await Amplify.Storage.removeMany(
            keys: listedObjects.items.map((item) => item.key).toList(),
            options: const S3RemoveManyOptions(
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

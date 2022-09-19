/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:amplify_storage_s3_example/amplifyconfiguration.dart';

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('amplify_storage_s3', () {
    final listOptions = S3ListOptions(accessLevel: StorageAccessLevel.guest);
    late String lastUploadedKey;

    const exampleFileName = 'subdir/example_file.txt';
    const exampleContents = 'Upload me to s3 to see if I work.';
    const exampleDescription = 'A test file';

    // Returns a text file to use for testing, writing if it does not exist.
    Future<File> getTemporaryFile({
      String? contents,
      bool create = true,
    }) async {
      final dir = await getTemporaryDirectory();
      final path = '${dir.path}/$exampleFileName';
      final file = File(path);
      if (create) {
        file.createSync(recursive: true);
      }
      if (contents != null) {
        file.writeAsStringSync(contents);
      }
      addTearDown(() {
        if (file.existsSync()) {
          file.deleteSync();
        }
      });
      return file;
    }

    Future<int> getCountFromListFiles() async {
      final result = await Amplify.Storage.list(options: listOptions);
      return result.items.length;
    }

    Future<void> deleteAllGuestFiles() async {
      final result = await Amplify.Storage.list(options: listOptions);
      for (StorageItem item in result.items) {
        await Amplify.Storage.remove(key: item.key);
      }
    }

    setUpAll(() async {
      await Amplify.addPlugins([AmplifyAuthCognito(), AmplifyStorageS3()]);
      await Amplify.configure(amplifyconfig);

      await deleteAllGuestFiles();
    });

    tearDownAll(() async {
      await deleteAllGuestFiles();
    });

    group('uploadFile', () {
      testWidgets('should upload a file', (WidgetTester tester) async {
        final file = await getTemporaryFile(contents: exampleContents);
        final initialCount = await getCountFromListFiles();

        final key = '$exampleFileName${new DateTime.now().toString()}';
        final metadata = <String, String>{
          'name': exampleFileName,
          'desc': exampleDescription,
        };
        final uploadOptions = S3UploadFileOptions(
          accessLevel: StorageAccessLevel.guest,
          metadata: metadata,
        );

        final fileLength = file.lengthSync();
        var lastProgress = 0;
        final result = await Amplify.Storage.uploadFile(
          key: key,
          local: file,
          options: uploadOptions,
          onProgress: expectAsync1(
            (progress) {
              expect(
                progress.currentBytes,
                greaterThanOrEqualTo(lastProgress),
              );
              lastProgress = progress.currentBytes;

              expect(progress.totalBytes, fileLength);
            },
            max: -1,
            reason: 'onProgress should be called one or more times',
          ),
        );
        lastUploadedKey = result.key;
        expect(lastUploadedKey, key);

        final finalCount = await getCountFromListFiles();
        expect(finalCount, initialCount + 1);
      });

      testWidgets(
        'should throw with auth mismatch',
        (WidgetTester tester) async {
          final file = await getTemporaryFile(contents: exampleContents);
          await expectLater(
            Amplify.Storage.uploadFile(
              key: lastUploadedKey,
              local: file,
              options: UploadFileOptions(
                accessLevel: StorageAccessLevel.private,
              ),
            ),
            throwsA(isA<StorageException>()),
          );
        },
      );
    });

    group('downloadFile', () {
      Future<void> downloadTest({required bool create}) async {
        final downloadedFile = await getTemporaryFile(create: create);

        var lastProgress = 0;
        late int totalProgress;
        final downloadResult = await Amplify.Storage.downloadFile(
          key: lastUploadedKey,
          local: downloadedFile,
          onProgress: expectAsync1(
            (progress) {
              expect(
                progress.currentBytes,
                greaterThanOrEqualTo(lastProgress),
              );
              lastProgress = progress.currentBytes;
              totalProgress = progress.totalBytes;
            },
            max: -1,
            reason: 'onProgress should be called one or more times',
          ),
        );
        expect(lastProgress, totalProgress);
        expect(downloadResult.file.path, downloadedFile.path);

        expect(
          downloadedFile.readAsStringSync(),
          exampleContents,
          reason: 'should be downloaded to ${downloadedFile.path}',
        );
        expect(downloadedFile.lengthSync(), totalProgress);
      }

      testWidgets(
        'should download to existing file',
        (WidgetTester tester) {
          return downloadTest(create: true);
        },
      );

      testWidgets(
        'should download to non-existent file',
        (WidgetTester tester) {
          return downloadTest(create: false);
        },
      );

      testWidgets(
        'should throw with auth mismatch',
        (WidgetTester tester) async {
          final downloadedFile = await getTemporaryFile();
          await expectLater(
            Amplify.Storage.downloadFile(
              key: lastUploadedKey,
              local: downloadedFile,
              options: DownloadFileOptions(
                accessLevel: StorageAccessLevel.private,
              ),
            ),
            throwsA(isA<StorageException>()),
          );
        },
      );
    });

    testWidgets(
      'should list files and get expected attributes',
      (WidgetTester tester) async {
        final result = await Amplify.Storage.list(options: listOptions);
        expect(result.items.length, greaterThan(0));
        final uploadedStorageItem = result.items.firstWhere(
          (element) => element.key == lastUploadedKey,
        );
        expect(
          uploadedStorageItem.lastModified?.toUtc().day,
          new DateTime.now().toUtc().day,
        ); // was uploaded today
        expect(uploadedStorageItem.eTag?.isNotEmpty, true);
        expect(uploadedStorageItem.size, greaterThan(0));
      },
    );

    testWidgets(
      'should get the URL of an uploaded file',
      (WidgetTester tester) async {
        final result = await Amplify.Storage.getUrl(key: lastUploadedKey);
        // assert valid and expected s3 URL
        expect(Uri.parse(result.url).isAbsolute, true);
        expect(result.url.contains('s3'), true);
      },
    );

    testWidgets('should delete uploaded files', (WidgetTester tester) async {
      final initialCount = await getCountFromListFiles();
      expect(initialCount, greaterThan(0));
      await deleteAllGuestFiles();
      final finalCount = await getCountFromListFiles();
      expect(finalCount, 0);
    });
  });
}

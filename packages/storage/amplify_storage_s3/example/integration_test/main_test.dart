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

const exampleFileName = 'example_file.txt';

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('amplify_storage_s3', () {
    // options used for all tests
    S3ListOptions listOptions =
        S3ListOptions(accessLevel: StorageAccessLevel.guest);
    late String? lastUploadedKey;

    // Returns a text file to use for testing, writing if it does not exist.
    Future<File> getTemporaryFile() async {
      final path = '${(await getTemporaryDirectory()).path}/$exampleFileName';
      final file = File(path);
      if (!(await file.exists())) {
        await file.writeAsString('Upload me to s3 to see if I work.');
      }
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

    testWidgets('should upload a file', (WidgetTester tester) async {
      final file = await getTemporaryFile();
      final initialCount = await getCountFromListFiles();

      final key = '$exampleFileName${new DateTime.now().toString()}';
      Map<String, String> metadata = <String, String>{};
      metadata['name'] = exampleFileName;
      metadata['desc'] = 'A test file';
      S3UploadFileOptions options = S3UploadFileOptions(
          accessLevel: StorageAccessLevel.guest, metadata: metadata);

      int fileLength = file.lengthSync();
      int lastProgressBytes = 0;
      int onProgressCalls = 0;
      final result = await Amplify.Storage.uploadFile(
          key: key,
          local: file,
          options: options,
          onProgress: (progress) {
            expect(
                progress.currentBytes, greaterThanOrEqualTo(lastProgressBytes));
            lastProgressBytes = progress.currentBytes;

            expect(progress.totalBytes, fileLength);
            onProgressCalls++;
          });
      expect(onProgressCalls, greaterThan(0));
      lastUploadedKey = result.key;
      expect(lastUploadedKey, key);

      final finalCount = await getCountFromListFiles();
      expect(initialCount + 1, finalCount);
    });

    testWidgets('should list files and get expected attributes',
        (WidgetTester tester) async {
      if (lastUploadedKey == null) {
        fail('No uploaded file to verify.');
      }
      final result = await Amplify.Storage.list(options: listOptions);
      expect(result.items.length, greaterThan(0));
      final uploadedStorageItem =
          result.items.firstWhere((element) => element.key == lastUploadedKey);
      expect(uploadedStorageItem.lastModified?.day,
          new DateTime.now().day); // was uploaded today
      expect(uploadedStorageItem.eTag?.isNotEmpty, true);
      expect(uploadedStorageItem.size, greaterThan(0));
    });

    testWidgets('should get the URL of an uploaded file',
        (WidgetTester tester) async {
      if (lastUploadedKey == null) {
        fail('No uploaded file to verify.');
      }
      final result = await Amplify.Storage.getUrl(key: lastUploadedKey!);
      // assert valid and expected s3 URL
      expect(Uri.parse(result.url).isAbsolute, true);
      expect(result.url.contains('s3'), true);
    });

    testWidgets('should delete uploaded files', (WidgetTester tester) async {
      final initialCount = await getCountFromListFiles();
      expect(initialCount, greaterThan(0));
      await deleteAllGuestFiles();
      final finalCount = await getCountFromListFiles();
      expect(finalCount, 0);
    });
  });
}

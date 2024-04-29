// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_example/amplifyconfiguration.dart';
import 'package:aws_common/web.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'utils/configure.dart';
import 'utils/create_file/create_file_html.dart';
import 'utils/tear_down.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('platform specific options', () {
    setUpAll(() async {
      await configure(amplifyEnvironments['main']!);
    });
    testWidgets('uploadFile() from html File', (_) async {
      final fileId = uuid();
      final path = 'public/upload-file-from-html-file-$fileId';
      const content = 'upload data';
      final data = content.codeUnits;
      final file = await createHtmlFile(path: fileId, content: content);
      addTearDownPath(StoragePath.fromString(path));
      final result = await Amplify.Storage.uploadFile(
        localFile: AWSFilePlatform.fromFile(file),
        path: StoragePath.fromString(path),
      ).result;
      expect(result.uploadedItem.path, path);
      final downloadResult = await Amplify.Storage.downloadData(
        path: StoragePath.fromString(path),
      ).result;
      expect(downloadResult.bytes, data);
    });
  });
}

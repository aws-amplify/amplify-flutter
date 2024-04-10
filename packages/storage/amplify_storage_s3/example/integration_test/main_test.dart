// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'download_data_test.dart' as download_data_tests;
import 'download_file_test.dart' as download_file_tests;
import 'issues/get_url_special_characters_test.dart'
    as get_url_special_characters_tests;
import 'list_test.dart' as list_tests;
import 'use_case_test.dart' as use_case_tests;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('amplify_storage_s3', () {
    get_url_special_characters_tests.main();
    use_case_tests.main();
    download_data_tests.main();
    download_file_tests.main();
    list_tests.main();
  });
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'copy_test.dart' as copy_tests;
import 'download_data_test.dart' as download_data_tests;
import 'download_file_test.dart' as download_file_tests;
import 'get_properties_test.dart' as get_properties_test;
import 'get_url_test.dart' as get_url_test;
import 'issues/get_url_special_characters_test.dart'
    as get_url_special_characters_tests;
import 'list_test.dart' as list_tests;
import 'remove_many_test.dart' as remove_many_test;
import 'remove_test.dart' as remove_test;
import 'upload_data_test.dart' as upload_data_test;
import 'upload_file_test.dart' as upload_file_test;
import 'use_case_test.dart' as use_case_tests;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('amplify_storage_s3', () {
    get_url_special_characters_tests.main();
    use_case_tests.main();
    copy_tests.main();
    download_data_tests.main();
    download_file_tests.main();
    get_url_test.main();
    get_properties_test.main();
    list_tests.main();
    upload_file_test.main();
    upload_data_test.main();
    remove_many_test.main();
    remove_test.main();
  });
}

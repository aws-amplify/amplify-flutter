// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_storage_s3_dart/src/platform_impl/download_file/dom_helper.dart';
import 'package:mocktail/mocktail.dart';

class MockDomHelper extends Mock implements DomHelper {
  MockDomHelper._();

  static final DomHelper _instance = MockDomHelper._();

  static DomHelper get instance => _instance;
}

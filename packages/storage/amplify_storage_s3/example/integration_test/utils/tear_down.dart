// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter_test/flutter_test.dart';

/// Adds a tear down to remove the object at [path].
void addTearDownPath(StoragePath path) {
  addTearDown(
    () {
      try {
        return Amplify.Storage.remove(path: path).result;
      } on Exception catch (e) {
        AmplifyLogger()
            .createChild('StorageTests')
            .warn('Failed to remove file after test', e);
      }
    },
  );
}

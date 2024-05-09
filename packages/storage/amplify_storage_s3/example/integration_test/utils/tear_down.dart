// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter_test/flutter_test.dart';

final _logger = AmplifyLogger().createChild('StorageTests');

/// Adds a tear down to remove the object at [path].
void addTearDownPath(StoragePath path) {
  addTearDown(
    () {
      try {
        return Amplify.Storage.remove(path: path).result;
      } on Exception catch (e) {
        _logger.warn('Failed to remove file after test', e);
        rethrow;
      }
    },
  );
}

/// Adds a tear down to remove multiple objects at [paths].
void addTearDownPaths(List<StoragePath> paths) {
  addTearDown(
    () {
      try {
        return Future.wait(
          paths.map((path) => Amplify.Storage.remove(path: path).result),
        );
      } on Exception catch (e) {
        _logger.warn('Failed to remove files after test', e);
        rethrow;
      }
    },
  );
}

/// Adds a tear down to delete the current user.
void addTearDownCurrentUser() {
  addTearDown(() {
    try {
      return Amplify.Auth.deleteUser();
    } on Exception catch (e) {
      _logger.warn('Failed to delete user after test', e);
      rethrow;
    }
  });
}

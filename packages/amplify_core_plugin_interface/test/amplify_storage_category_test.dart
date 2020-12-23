/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import 'package:amplify_core_plugin_interface/amplify_core_plugin_interface.dart';
import 'package:amplify_storage_plugin_interface/amplify_storage_plugin_interface.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('StorageCategory without selected plugin', () {
    final storage = StorageCategory();
    test('uploadFile throws', () {
      expect(() =>
        storage.uploadFile(key: 'key', local: File('local')),
        throwsA(noPluginError())
      );
    });
    test('getUrl throws', () {
      expect(() => storage.getUrl(key: 'key'), throwsA(noPluginError()));
    });
    test('remove throws', () {
      expect(() => storage.remove(key: 'key'), throwsA(noPluginError()));
    });
    test('list throws', () {
      expect(() => storage.list(path: '/'), throwsA(noPluginError()));
    });
    test('downloadFile throws', () {
      expect(() =>
        storage.downloadFile(key: 'key', local: File('local')),
        throwsA(noPluginError())
      );
    });
  });
  group('StorageCategory with one selected plugin', () {
    StorageCategory storage;
    StoragePluginInterface plugin;

    setUpAll(() {
      storage = StorageCategory();
      plugin = FakeStoragePlugin();
      storage.addPlugin(plugin);
    });
    test('uploadFile passes to plugin', () {
      expect(
        storage.uploadFile(local: File('local'), key: 'key'),
        completion(equals(UploadFileResult(key: 'key')))
      );
    });
    test('getUrl passes to plugin', () {
      expect(
        storage.getUrl(key: 'key'),
        completion(equals(GetUrlResult(url: 'url')))
      );
    });
    test('remove passes to plugin', () {
      expect(
        storage.remove(key: 'key'),
        completion(equals(RemoveResult(key: 'key')))
      );
    });
    test('list passes to plugin', () {
      expect(storage.list(path: '/'), completion(equals(ListResult())));
    });
    test('downloadFile passes to plugin', () {
      expect(
        storage.downloadFile(key: 'key', local: File('local')),
        completion(equals(DownloadFileResult(file: File('local'))))
      );
    });
  });
}

Matcher noPluginError() {
  return predicate((e) {
    return e is String && e == 'No storage plugin is available.';
  });
}

class FakeStoragePlugin implements StoragePluginInterface {
  @override
  Future<DownloadFileResult> downloadFile({DownloadFileRequest request}) {
    return Future.value(DownloadFileResult(file: File('local')));
  }

  @override
  Future<GetUrlResult> getUrl({GetUrlRequest request}) {
    return Future.value(GetUrlResult(url: 'url'));
  }

  @override
  Future<ListResult> list({ListRequest request}) {
    return Future.value(ListResult());
  }

  @override
  Future<RemoveResult> remove({RemoveRequest request}) {
    return Future.value(RemoveResult(key: 'key'));
  }

  @override
  Future<UploadFileResult> uploadFile({UploadFileRequest request}) {
    return Future.value(UploadFileResult(key: 'key'));
  }
}

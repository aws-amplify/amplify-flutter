// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:js_interop';

@JS()
external Cache get cache;

/// Tools for interacting with the GitHub Actions cache.
/// 
/// See: https://www.npmjs.com/package/@actions/cache
@JS()
@anonymous
extension type Cache._(JSObject it) {
  /// Returns true if Actions cache service feature is available, otherwise false.
  external bool isFeatureAvailable();
  
  @JS('restoreCache')
  external JSPromise _restoreCache(
    JSArray paths,
    String primaryKey,[
    JSArray? restoreKeys,
  ]);

  /// Restores cache from keys
  /// 
  /// @param paths a list of file paths to restore from the cache
  /// @param primaryKey an explicit key for restoring the cache
  /// @param restoreKeys an optional ordered list of keys to use for restoring the cache if no cache hit occurred for key
  /// @returns string returns the key for the cache hit, otherwise returns undefined
  Future<String?> restoreCache({
    required List<String> paths,
    required String primaryKey,
    List<String>? restoreKeys,
  }) async {
    final promise = _restoreCache(
      paths.map((p) => p.toJS).toList().toJS, 
      primaryKey,
      restoreKeys?.map((key) => key.toJS).toList().toJS,
    );
    final result = await promise.toDart;
    return (result as JSString?)?.toDart;
  }

  @JS('saveCache')
  external JSPromise _saveCache(
    JSArray paths,
    String primaryKey,
  );

  /// Saves a list of files with the specified key
  /// 
  /// @param paths a list of file paths to be cached
  /// @param primaryKey an explicit key for restoring the cache
  /// @returns number returns cacheId if the cache was saved successfully and throws an error if save fails
  Future<int> saveCache({
    required List<String> paths,
    required String primaryKey,
  }) async {
    final promise = _saveCache(
      paths.map((path) => path.toJS).toList().toJS, 
      primaryKey,
    );
    final result = await promise.toDart;
    return (result as JSNumber).toDartInt;
  }
}

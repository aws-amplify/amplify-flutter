library amplify_secure_storage;

import 'dart:async';

import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';

export 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart'
    show AmplifySecureStorageConfig;

/// {@macro amplify_secure_storage.amplify_secure_storage}
class AmplifySecureStorage extends AmplifySecureStorageInterface {
  /// {@macro amplify_secure_storage.amplify_secure_storage}
  AmplifySecureStorage({
    required AmplifySecureStorageConfig config,
  }) : super(config: config);

  late final SecureStorageInterface _instance =
      AmplifySecureStorageDart(config: config);

  @override
  FutureOr<void> delete({required String key}) {
    return _instance.delete(key: key);
  }

  @override
  FutureOr<String?> read({required String key}) {
    return _instance.read(key: key);
  }

  @override
  FutureOr<void> write({required String key, required String value}) {
    return _instance.write(key: key, value: value);
  }
}

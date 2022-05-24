library amplify_secure_storage;

import 'dart:async';
import 'dart:io';

import 'package:amplify_secure_storage/src/amplify_secure_storage.android.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';

export 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart'
    show AmplifySecureStorageConfig;

/// {@template amplify_secure_storage.amplify_secure_storage}
/// The default Secure Storage implementation used in Amplify packages.
/// {@endtemplate}
class AmplifySecureStorage extends AmplifySecureStorageInterface {
  /// {@macro amplify_secure_storage.amplify_secure_storage}
  AmplifySecureStorage({
    required AmplifySecureStorageConfig config,
  }) : super(config: config);

  late final SecureStorageInterface _instance = () {
    if (Platform.isAndroid) {
      return AmplifySecureStorageAndroid(config: config);
    }
    return AmplifySecureStorageDart(config: config);
  }();

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

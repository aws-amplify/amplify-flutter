import 'dart:async';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:uuid/uuid.dart';

class KeyValueStore {
  // Stored Keys
  static const String uniqueIdKey = 'UniqueId';

  static const String eventsGlobalAttrsKey = 'EventsGlobalAttributesKey';

  static const String endpointGlobalAttrsKey = 'EndpointGlobalAttributesKey';

  static const String eventsGlobalMetricsKey = 'EventsGlobalMetricsKey';

  static const String endpointGlobalMetricsKey = 'EndpointGlobalMetricsKey';

  late SecureStorageInterface _storage;

  late String uniqueId;

  // Keep as class to allow extensibility / inheritance
  KeyValueStore._getInstance(SecureStorageInterface? storage) {
    if (storage == null) {
      _storage = AmplifySecureStorageWorker(
          config: AmplifySecureStorageConfig(
        scope: 'analytics',
      ));
    } else {
      _storage = storage;
    }
  }

  static Future<KeyValueStore> getInstance(
      SecureStorageInterface? storage) async {
    final instance = KeyValueStore._getInstance(storage);

    // Retrieve Unique ID
    var storedUniqueId = await instance._storage.read(key: uniqueIdKey);
    if (storedUniqueId == null) {
      storedUniqueId = const Uuid().v1();
      await instance._storage.write(key: uniqueIdKey, value: storedUniqueId);
    }
    instance.uniqueId = storedUniqueId;

    return instance;
  }

  Future<void> saveJson(String key, String json) async {
    await _storage.write(key: key, value: json);
  }

  Future<String?> getJson(String key) async {
    return await _storage.read(key: key);
  }

  String getFixedEndpointId() {
    return uniqueId;
  }
}

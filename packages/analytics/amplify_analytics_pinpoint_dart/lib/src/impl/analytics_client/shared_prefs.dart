import 'dart:async';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:uuid/uuid.dart';

class SharedPrefs {
  // Stored Keys
  static const String uniqueIdKey = 'UniqueId';

  static const String eventsGlobalAttrsKey = 'EventsGlobalAttributesKey';

  static const String endpointGlobalAttrsKey = 'EndpointGlobalAttributesKey';

  static const String eventsGlobalMetricsKey = 'EventsGlobalMetricsKey';

  static const String endpointGlobalMetricsKey = 'EndpointGlobalMetricsKey';

  late AmplifySecureStorageInterface storage;

  late String uniqueId;

  // Keep as class to allow extensibility / inheritance
  SharedPrefs._getInstance() {
    storage = AmplifySecureStorageDart(
      config: AmplifySecureStorageConfig(
        scope: 'analytics',
      ),
    );
  }

  static Future<SharedPrefs> getInstance() async {
    var instance = SharedPrefs._getInstance();

    // Retrieve Unique ID
    var storedUniqueId = await instance.storage.read(key: uniqueIdKey);
    if (storedUniqueId == null) {
      storedUniqueId = const Uuid().v1();
      await instance.storage.write(key: uniqueIdKey, value: storedUniqueId);
    }
    instance.uniqueId = storedUniqueId;

    return instance;
  }

  Future<void> saveJson(String key, String json) async {
    await storage.write(key: key, value: json);
  }

  Future<String?> getJson(String key) async {
    return await storage.read(key: key);
  }

  String getUniqueId() {
    return uniqueId;
  }
}

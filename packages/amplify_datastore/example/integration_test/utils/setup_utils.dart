import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_datastore_example/amplifyconfiguration.dart';
import 'package:amplify_datastore_example/models/ModelProvider.dart';
import 'package:amplify_flutter/amplify.dart';

Future<void> configureDataStore({cloudSync = false}) async {
  if (!Amplify.isConfigured) {
    final dataStorePlugin =
        AmplifyDataStore(modelProvider: ModelProvider.instance);
    await Amplify.addPlugins([dataStorePlugin]);
    if (cloudSync) {
      await Amplify.addPlugin(AmplifyAPI());
    }
    await Amplify.configure(amplifyconfig);
  }
}

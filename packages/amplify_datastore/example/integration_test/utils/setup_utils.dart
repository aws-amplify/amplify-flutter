import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_datastore_example/amplifyconfiguration.dart';
import 'package:amplify_datastore_example/models/ModelProvider.dart';
import 'package:amplify_flutter/amplify.dart';

Future<void> configureAuth() async {
  if (!Amplify.isConfigured) {
    final dataStorePlugin =
        AmplifyDataStore(modelProvider: ModelProvider.instance);
    await Amplify.addPlugins([dataStorePlugin]);
    await Amplify.configure(amplifyconfig);
  }
}

import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_datastore_example/amplifyconfiguration.dart';
import 'package:amplify_datastore_example/models/ModelProvider.dart';
import 'package:amplify_flutter/amplify.dart';

Future<void> configureDataStore() async {
  if (!Amplify.isConfigured) {
    final dataStorePlugin =
        AmplifyDataStore(modelProvider: ModelProvider.instance);
    await Amplify.addPlugins([dataStorePlugin]);
    await Amplify.configure(amplifyconfig);
  }
}

/// Clears DataStore after a delay to resolve an issue in amlify-android
///
/// DataStore can lock up on Android if .clear() is called immediately after
/// other DataStore operations
///
/// see: https:///github.com/aws-amplify/amplify-android/issues/1464
Future<void> clearDataStore() async {
  await Future.delayed(Duration(milliseconds: 100));
  await Amplify.DataStore.clear();
}

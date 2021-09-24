import 'dart:developer' as developer;

import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_flutter/src/amplify_impl.dart';
import 'package:amplify_flutter/src/categories/amplify_categories.dart';
import 'package:amplify_api/amplify_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

const amplifyconfig = ''' {
    "UserAgent": "aws-amplify-cli/2.0",
    "Version": "1.0",
    "api": {
        "plugins": {
            "awsAPIPlugin": {
                "dsexample": {
                    "endpointType": "GraphQL",
                    "endpoint": "https://2iag3fl5rfdkxdu5xh5teuwe5a.appsync-api.us-west-2.amazonaws.com/graphql",
                    "region": "us-west-2",
                    "authorizationType": "API_KEY",
                    "apiKey": "da2-wqhvuealzzgx7ogcg6wgc3hkee"
                }
            }
        }
    }
}''';

const integTestChannel = MethodChannel('integration_tests');
final throwsAlreadyConfigured =
    throwsA(isA<AmplifyAlreadyConfiguredException>());
final throwsAmplifyException = throwsA(isA<AmplifyException>());

class MockModelType extends ModelType<Model> {
  const MockModelType();

  @override
  MockModel fromJson(Map<String, dynamic> jsonData) {
    return MockModel(jsonData['id']);
  }
}

class MockModel extends Model {
  final String id;

  const MockModel(this.id);

  @override
  String getId() => id;

  @override
  ModelType<Model> getInstanceType() => const MockModelType();

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
      };
}

class MockModelProvider extends ModelProviderInterface {
  @override
  String get version => '12345';

  @override
  List<ModelSchema> get modelSchemas => [
        ModelSchema(
          name: 'MockModel',
          pluralName: 'MockModels',
          fields: {
            'id': ModelFieldDefinition.id().build(),
          },
        )
      ];

  @override
  ModelType<Model> getModelTypeByModelName(String modelName) {
    return const MockModelType();
  }
}

void main() {
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized()
      as IntegrationTestWidgetsFlutterBinding;
  final modelProvider = MockModelProvider();
  MethodChannelAmplify plugin;

  /// Calls `Amplify.reset` on the native library
  Future<void> resetAmplify() async {
    await integTestChannel.invokeMethod<void>('reset');
  }

  /// Simulates a hot reload
  void hotReload() {}

  /// Simulates a hot restart
  void hotRestart() {
    plugin = MethodChannelAmplify();
    APICategory.plugins.clear();
    DataStoreCategory.plugins.clear();
  }

  group('Configuration', () {
    setUp(() async {
      await resetAmplify();
      hotRestart();
    });

    testWidgets('multiple configure calls throws', (WidgetTester tester) async {
      await expectLater(plugin.configure(amplifyconfig), completes);
      expect(plugin.isConfigured, isTrue);

      await expectLater(
        plugin.configure(amplifyconfig),
        throwsAlreadyConfigured,
      );
    });

    testWidgets('hot reload persists all state', (WidgetTester tester) async {
      await expectLater(plugin.configure(amplifyconfig), completes);
      expect(plugin.isConfigured, isTrue);

      hotReload();

      expect(plugin.isConfigured, isTrue);
      await expectLater(
        plugin.configure(amplifyconfig),
        throwsAlreadyConfigured,
      );
    });

    testWidgets('hot restart persists native state',
        (WidgetTester tester) async {
      await expectLater(plugin.configure(amplifyconfig), completes);
      expect(plugin.isConfigured, isTrue);

      hotRestart();

      expect(plugin.isConfigured, isFalse);
      await expectLater(plugin.configure(amplifyconfig), completes);
      expect(plugin.isConfigured, isTrue);
    });

    testWidgets('adding plugins throws after configuration',
        (WidgetTester tester) async {
      await expectLater(plugin.addPlugin(AmplifyAPI()), completes);
      await expectLater(plugin.configure(amplifyconfig), completes);
      expect(plugin.isConfigured, isTrue);

      await expectLater(
        plugin.addPlugin(AmplifyAPI()),
        throwsAlreadyConfigured,
      );
    });

    testWidgets('adding plugins does not throw after hot restart',
        (WidgetTester tester) async {
      await expectLater(plugin.addPlugin(AmplifyAPI()), completes);
      await expectLater(plugin.configure(amplifyconfig), completes);
      expect(plugin.isConfigured, isTrue);

      hotRestart();

      expect(plugin.isConfigured, isFalse);
      await expectLater(plugin.addPlugin(AmplifyAPI()), completes);
      await expectLater(plugin.configure(amplifyconfig), completes);
      expect(plugin.isConfigured, isTrue);
    });

    testWidgets('extra DataStore call does not cause Exception',
        (WidgetTester tester) async {
      await expectLater(plugin.addPlugin(AmplifyAPI()), completes);
      await expectLater(
        plugin.addPlugin(AmplifyDataStore(modelProvider: modelProvider)),
        completes,
      );
      await expectLater(plugin.configure(amplifyconfig), completes);
      expect(plugin.isConfigured, isTrue);

      hotRestart();

      expect(plugin.isConfigured, isFalse);
      await expectLater(plugin.addPlugin(AmplifyAPI()), completes);
      await expectLater(
        plugin.addPlugin(AmplifyDataStore(modelProvider: modelProvider)),
        completes,
      );
      await expectLater(plugin.configure(amplifyconfig), completes);
      expect(plugin.isConfigured, isTrue);
    });
  });
}

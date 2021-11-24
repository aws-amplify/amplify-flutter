import 'package:amplify_flutter/amplify.dart';
import 'package:test/test.dart';

void main() {
  group('Config', () {
    test('Unknown Plugin', () {
      const customPluginName = 'my_custom_plugin';
      const customPluginConfig = {
        'custom_key': 'custom_value',
      };

      const json = {
        'UserAgent': 'aws-amplify-cli/2.0',
        'Version': '1.0',
        'auth': {
          'plugins': {
            customPluginName: customPluginConfig,
          }
        }
      };

      final config = AmplifyConfig.fromJson(json);
      const expected = AmplifyConfig(
        auth: AuthConfig(plugins: {
          customPluginName: UnknownPluginConfig(
            customPluginName,
            customPluginConfig,
          ),
        }),
      );
      expect(config, equals(expected));
    });
  });
}

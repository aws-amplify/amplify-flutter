import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_push_notifications_pinpoint/amplify_push_notifications_pinpoint.dart';
import 'package:flutter/widgets.dart';

const _notificationsConfigSecureStorageKey =
    'notificationsConfigSecureStorageKey';

@pragma('vm:entry-point')
Future<void> amplifyBackgroundProcessing() async {
  WidgetsFlutterBinding.ensureInitialized();
  final amplifySecureStorage = AmplifySecureStorage(
    config: AmplifySecureStorageConfig(
      scope: 'amplifyPushNotifications',
    ),
  );
  final amplifyconfigStr = await amplifySecureStorage.read(
    key: _notificationsConfigSecureStorageKey,
  );
  if (amplifyconfigStr != null) {
    final notificationsPlugin = AmplifyPushNotificationsPinpoint();
    final authPlugin = AmplifyAuthCognito();
    if (!Amplify.isConfigured) {
      await Amplify.addPlugins([authPlugin, notificationsPlugin]);
      await Amplify.configure(amplifyconfigStr);
    }
  }
  print('amplifyBackgroundProcessing done');
}

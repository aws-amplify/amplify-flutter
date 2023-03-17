import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_push_notifications_pinpoint/amplify_push_notifications_pinpoint.dart';
import 'package:flutter/widgets.dart';

const _notificationsConfigSecureStorageKey =
    'notificationsConfigSecureStorageKey';

/// {@template amplify_push_notifications_pinpoint.amplify_background_processor}
/// Dart entry point function that facilitates recording of notificaiton event when the app is killed.
///
/// Securely stored config is used to configure Amplify with Pinpoint push notifications plugin that
/// can record the notificaiton received event when the app is in a killed state.
/// {@endtemplate}
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
}

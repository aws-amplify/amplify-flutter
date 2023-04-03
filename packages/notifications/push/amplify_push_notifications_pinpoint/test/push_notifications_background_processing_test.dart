import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_push_notifications_pinpoint/amplify_push_notifications_pinpoint.dart';
import 'package:amplify_push_notifications_pinpoint/src/push_notifications_background_processing.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'push_notifications_background_processing_test.mocks.dart';

// TODO(Samaritan1011001): Add happy path tests, needs dependency injection use visibleFotTesting params

@GenerateMocks(
  [AmplifySecureStorage],
)
@GenerateNiceMocks([
  MockSpec<AmplifyPushNotificationsPinpoint>(
    unsupportedMembers: {#cast},
    fallbackGenerators: {
      #cast: castNotif,
    },
  ),
  MockSpec<AmplifyAuthCognito>(
    unsupportedMembers: {#cast},
    fallbackGenerators: {
      #cast: castAuth,
    },
  )
])
P castNotif<P extends AmplifyPluginInterface>() =>
    AmplifyPushNotificationsPinpoint as P;
P castAuth<P extends AmplifyPluginInterface>() => AmplifyAuthCognito as P;

void main() {
  group('amplifyBackgroundProcessing', () {
    test('should fail when the config stored in secure storage is not found',
        () {
      final mockStorage = MockAmplifySecureStorage();
      when(mockStorage.read(key: anyNamed('key')))
          .thenAnswer((_) async => null);

      expect(
        () async => amplifyBackgroundProcessing(
          amplifySecureStorage: mockStorage,
        ),
        throwsA(isA<PushNotificationException>()),
      );
    });
  });
}

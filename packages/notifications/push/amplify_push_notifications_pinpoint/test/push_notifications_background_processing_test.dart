import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_push_notifications_pinpoint/src/push_notifications_background_processing.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'push_notifications_background_processing_test.mocks.dart';

// TODO(Samaritan1011001): Add happy path tests, needs dependency injection

@GenerateMocks([AmplifySecureStorage])
void main() {
  group('amplifyBackgroundProcessing', () {
    test('should fail when the config stored in secure storage is not found',
        () {
      final mockStorage = MockAmplifySecureStorage();
      when(mockStorage.read(key: anyNamed('key')))
          .thenAnswer((_) => Future(() => null));

      expect(
        () async => amplifyBackgroundProcessing(
          amplifySecureStorage: mockStorage,
        ),
        throwsA(const TypeMatcher<PushNotificationException>()),
      );
    });
  });
}

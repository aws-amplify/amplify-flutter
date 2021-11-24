import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_api/src/method_channel_api.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'auth_providers_test.mocks.dart';

@GenerateMocks([OIDCAuthProvider])
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  const apiChannel = 'com.amazonaws.amplify/api';
  final binaryMessenger =
      TestDefaultBinaryMessengerBinding.instance!.defaultBinaryMessenger;
  const standardCodec = StandardMethodCodec();
  final methodCall = MethodCall(
    'getLatestAuthToken',
    ApiAuthorizationType.oidc.rawValue,
  );
  final provider = MockOIDCAuthProvider();

  late AmplifyAPIMethodChannel amplifyAPI;

  // Mocks a call to `getLatestAuthToken` from the native side.
  Future<Object?> invokeGetLatestAuthToken() async {
    final response = await binaryMessenger.handlePlatformMessage(
      apiChannel,
      standardCodec.encodeMethodCall(methodCall),
      null,
    );
    expect(response, isNotNull);
    return standardCodec.decodeEnvelope(response!) as Object?;
  }

  group('APIAuthProvider', () {
    group('getLatestAuthToken', () {
      setUp(() {
        amplifyAPI = AmplifyAPIMethodChannel();
        amplifyAPI.setupAuthProviders();
        reset(provider);
        when(provider.type).thenReturn(ApiAuthorizationType.oidc);
        amplifyAPI.registerAuthProvider(provider);
      });

      test('returns token', () async {
        const oidcToken = 'some_token';
        when(provider.getLatestAuthToken()).thenAnswer((_) async => oidcToken);
        final token = await invokeGetLatestAuthToken();
        expect(token, isA<String>());
        expect(token, equals(oidcToken));
      });

      test('returns error', () async {
        when(provider.getLatestAuthToken())
            .thenAnswer((_) async => throw Exception());
        final token = await invokeGetLatestAuthToken();
        expect(token, isNull);
      });
    });
  });
}

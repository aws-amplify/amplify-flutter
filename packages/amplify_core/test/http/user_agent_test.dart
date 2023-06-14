// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/http/amplify_category_method.dart';
import 'package:amplify_core/src/platform/platform.dart';
import 'package:aws_common/testing.dart';
import 'package:test/test.dart';

void main() {
  group('User-Agent', () {
    test('Chrome', testOn: 'chrome', () {
      expect(osIdentifier, matches(RegExp(r'^Chrome/[\d\.]+$')));
    });

    test('Firefox', testOn: 'firefox', () {
      expect(osIdentifier, matches(RegExp(r'^Firefox/[\d\.]+$')));
    });

    test('Safari', testOn: 'safari', () {
      expect(osIdentifier, matches(RegExp(r'^Safari/[\d\.]+$')));
    });

    test('Windows', testOn: 'windows', () {
      expect(osIdentifier, matches(RegExp(r'^windows/[\d\.]+$')));
    });

    test('macOS', testOn: 'mac-os', () {
      expect(osIdentifier, matches(RegExp(r'^macos/[\d\.]+$')));
    });

    test('Linux', testOn: 'linux', () {
      expect(osIdentifier, matches(RegExp(r'^linux/[\d\.]+$')));
    });
  });

  test('AmplifyUserAgent', () async {
    const myUserAgent = 'my-user-agent';

    final dependencies = AmplifyDependencyManager();
    final httpClient = MockAWSHttpClient(
      expectAsync2(
        (request, isCancelled) {
          expect(
            request.headers[AWSHeaders.platformUserAgent],
            contains(osIdentifier),
            reason: 'should contain default user agent component',
          );
          expect(
            request.headers[AWSHeaders.platformUserAgent],
            contains(myUserAgent),
            reason: 'should contain custom user agent component',
          );
          return AWSHttpResponse(statusCode: 200);
        },
      ),
    );

    dependencies.addInstance<AWSHttpClient>(httpClient);
    dependencies.getOrCreate<AmplifyUserAgent>().addComponent(myUserAgent);

    final response = await dependencies
        .getOrCreate<AmplifyHttpClient>()
        .send(
          AWSHttpRequest.get(Uri.parse('https://example.com')),
        )
        .response;
    expect(response.statusCode, 200);
  });

  group('AmplifyCategoryMethod', () {
    setUp(() async {
      await Amplify.Auth.addPlugin(
        MockAuthPlugin(),
        authProviderRepo: AmplifyAuthProviderRepository(),
      );
    });

    tearDown(Amplify.reset);

    test('adds the category/method to the header', () async {
      const categoryMethod = AuthCategoryMethod.signIn;
      final httpClient = MockAWSHttpClient(
        expectAsync2(
          (request, isCancelled) {
            expect(
              request.headers[AWSHeaders.platformUserAgent],
              contains(categoryMethod.headerValue),
              reason: 'should contain category/method value',
            );
            return AWSHttpResponse(statusCode: 200);
          },
        ),
      );

      Amplify.dependencies.addInstance<AWSHttpClient>(httpClient);

      await Amplify.Auth.signIn(username: 'username');
    });

    test('adds only the first call in the chain', () async {
      const categoryMethod1 = AuthCategoryMethod.signInWithWebUI;
      const categoryMethod2 = AuthCategoryMethod.signIn;
      final httpClient = MockAWSHttpClient(
        expectAsync2(
          (request, isCancelled) {
            expect(
              request.headers[AWSHeaders.platformUserAgent],
              contains(categoryMethod1.headerValue),
              reason: 'should contain originating call',
            );
            expect(
              request.headers[AWSHeaders.platformUserAgent],
              isNot(contains(categoryMethod2.headerValue)),
              reason: 'should not contain nested calls',
            );
            return AWSHttpResponse(statusCode: 200);
          },
        ),
      );

      Amplify.dependencies.addInstance<AWSHttpClient>(httpClient);

      await Amplify.Auth.signInWithWebUI();
    });
  });
}

class MockAuthPlugin extends AuthPluginInterface {
  // Mimics a typical HTTP request sent from a real category.
  Future<void> _sendRequest() async {
    final httpClient = dependencies.getOrCreate<AmplifyHttpClient>();
    await httpClient
        .send(AWSHttpRequest.get(Uri.parse('https://example.com')))
        .response;
  }

  @override
  Future<SignInResult> signIn({
    required String username,
    String? password,
    SignInOptions? options,
  }) async {
    await _sendRequest();
    return const SignInResult(
      isSignedIn: true,
      nextStep: AuthNextSignInStep(
        signInStep: AuthSignInStep.done,
      ),
    );
  }

  @override
  Future<SignInResult> signInWithWebUI({
    AuthProvider? provider,
    SignInWithWebUIOptions? options,
  }) async {
    return Amplify.Auth.signIn(username: 'username');
  }
}

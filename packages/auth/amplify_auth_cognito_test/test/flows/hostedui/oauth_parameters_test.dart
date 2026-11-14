// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/src/model/hosted_ui/oauth_parameters.dart';
import 'package:test/test.dart';

void main() {
  group('OAuthParameters', () {
    group('fromUri', () {
      test('parses an authorization code redirect', () {
        final parameters = OAuthParameters.fromUri(
          Uri.parse('myapp://callback?code=CODE&state=STATE'),
        );
        expect(parameters, isNotNull);
        expect(parameters!.code, 'CODE');
        expect(parameters.state, 'STATE');
        expect(parameters.error, isNull);
      });

      test('parses a standard OAuth error redirect', () {
        final parameters = OAuthParameters.fromUri(
          Uri.parse('myapp://callback?error=access_denied&state=STATE'),
        );
        expect(parameters, isNotNull);
        expect(parameters!.error, OAuthErrorCode.accessDenied);
      });

      // Cancelling at the identity provider's consent screen, e.g. Sign in
      // with Apple, results in an error code which is not part of the OAuth or
      // OIDC specifications.
      //
      // https://github.com/aws-amplify/amplify-flutter/issues/7077
      test('parses user_cancelled_authorize', () {
        final parameters = OAuthParameters.fromUri(
          Uri.parse(
            'myapp://callback'
            '?error_description=Error+response+from+Identity+Provider;'
            '+error=user_cancelled_authorize'
            '&state=STATE'
            '&error=user_cancelled_authorize',
          ),
        );
        expect(parameters, isNotNull);
        expect(parameters!.error, OAuthErrorCode.userCancelledAuthorize);
        expect(parameters.state, 'STATE');
        expect(
          parameters.errorDescription,
          'Error response from Identity Provider; '
          'error=user_cancelled_authorize',
        );
      });

      test('parses unrecognized error codes as unknown', () {
        final parameters = OAuthParameters.fromUri(
          Uri.parse(
            'myapp://callback'
            '?error=some_provider_specific_error'
            '&error_description=Something+went+wrong'
            '&state=STATE',
          ),
        );
        expect(parameters, isNotNull);
        expect(parameters!.error, OAuthErrorCode.unknown);
        expect(parameters.errorDescription, 'Something went wrong');
      });

      test('retains unrecognized error codes without a description', () {
        final parameters = OAuthParameters.fromUri(
          Uri.parse(
            'myapp://callback'
            '?error=some_provider_specific_error'
            '&state=STATE',
          ),
        );
        expect(parameters, isNotNull);
        expect(parameters!.error, OAuthErrorCode.unknown);
        expect(parameters.errorDescription, 'some_provider_specific_error');
      });

      test('returns null for a non-redirect URI', () {
        expect(OAuthParameters.fromUri(Uri.parse('myapp://callback')), isNull);
      });
    });

    group('description', () {
      test('is defined for all error codes', () {
        for (final code in OAuthErrorCode.values) {
          expect(() => code.description, returnsNormally, reason: '$code');
        }
      });
    });
  });
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/src/sdk/sdk_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/user_lambda_validation_exception.dart'
    as cognito;
import 'package:amplify_core/amplify_core.dart';
import 'package:smithy/smithy.dart';
import 'package:test/test.dart';

const lambdaName = 'Foo';
const lambdaMessage = 'Something went wrong';
// errors that originate from lambdas are in the format "<Lambda Name> failed with error <Error>."
const lambdaErrorMessage = '$lambdaName failed with error $lambdaMessage.';

void main() {
  group('SDK exception', () {
    group('LambdaException', () {
      const error = 'something bad happened';
      const message = 'PreConfirmation failed with error $error.';

      test('matches string', () {
        expect(LambdaException.isLambdaException(message), isTrue);

        const exception = LambdaException(message);
        expect(exception.message, error);
        expect(exception.lambdaName, 'PreConfirmation');
      });

      test('matches exception', () {
        const wrapped = UserNotConfirmedException(message);
        expect(LambdaException.isLambdaException(wrapped.toString()), isTrue);

        final exception = LambdaException(wrapped.toString());
        expect(exception.message, error);
        expect(exception.lambdaName, 'PreConfirmation');
      });
    });

    group('transformSdkException', () {
      test('maps SDK Lambda exceptions to the Amplify equivalent', () {
        final exception = cognito.UserLambdaValidationException(
          message: lambdaErrorMessage,
        );
        final transformed = transformSdkException(exception);
        expect(
          transformed,
          // UserLambdaValidationException from the SDK should be mapped to
          // UserLambdaValidationException from Amplify
          isA<UserLambdaValidationException>()
              .having(
                (e) => e.lambdaName,
                'lambdaName',
                lambdaName,
              )
              .having(
                (e) => e.message,
                'message',
                lambdaMessage,
              ),
        );
      });

      test('maps all other Lambda exceptions to a generic LambdaException', () {
        const exception = UnhandledException(lambdaErrorMessage);
        final transformed = transformSdkException(exception);
        expect(
          transformed,
          isA<LambdaException>()
              .having(
                (e) => e.lambdaName,
                'lambdaName',
                lambdaName,
              )
              .having(
                (e) => e.message,
                'message',
                lambdaMessage,
              ),
        );
      });

      test('maps to UnknownServiceException by default', () {
        const exception = UnhandledException('error');
        expect(
          transformSdkException(exception),
          isA<UnknownServiceException>(),
        );
      });
    });

    test('transforms network exceptions', () {
      final networkException = AWSHttpException(
        AWSHttpRequest.get(Uri.parse('https://example.com')),
      );
      expect(
        transformSdkException(networkException),
        isA<NetworkException>(),
      );
    });
  });
}

class UnhandledException implements SmithyException {
  const UnhandledException(this._message);

  final String _message;

  @override
  String? get message => _message;

  @override
  RetryConfig? get retryConfig => null;

  @override
  ShapeId? get shapeId => const ShapeId(
        shape: 'UnhandledException',
        namespace: '',
      );

  @override
  Exception? get underlyingException => null;
}

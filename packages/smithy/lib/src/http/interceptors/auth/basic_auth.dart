import 'dart:convert';

import 'package:smithy/smithy.dart';
import 'package:smithy/src/http/interceptors/auth/credentials_provider.dart';

/// Intercepts HTTP requests to provide a Basic credentials header.
///
/// See: https://awslabs.github.io/smithy/1.0/spec/core/auth-traits.html#httpbasicauth-trait
abstract class BasicAuthInterceptor extends HttpInterceptor {
  /// Uses [username] and [password] for authorization.
  const factory BasicAuthInterceptor(
    CredentialsProvider username,
    CredentialsProvider password,
  ) = _BasicAuthUserPassInterceptor;

  /// Uses [credentials] for authorization.
  const factory BasicAuthInterceptor.credentials(
      CredentialsProvider credentials) = _BasicAuthCredentialsInterceptor;

  const BasicAuthInterceptor._();

  CredentialsProvider get credentials;

  @override
  Future<void> intercept(AWSBaseHttpRequest request) async {
    final _credentials = await credentials();
    request.headers['Authorization'] = 'Basic $_credentials';
  }
}

class _BasicAuthCredentialsInterceptor extends BasicAuthInterceptor {
  const _BasicAuthCredentialsInterceptor(this.credentials) : super._();

  @override
  final CredentialsProvider credentials;
}

class _BasicAuthUserPassInterceptor extends BasicAuthInterceptor {
  const _BasicAuthUserPassInterceptor(
    this.username,
    this.password,
  ) : super._();

  final CredentialsProvider username;
  final CredentialsProvider password;

  @override
  CredentialsProvider get credentials => () async {
        final _username = await username();
        final _password = await password();
        return base64Encode('$_username:$_password'.codeUnits);
      };
}

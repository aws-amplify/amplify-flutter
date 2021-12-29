import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:smithy/src/http/interceptors/interceptor.dart';

/// Intercepts HTTP requests to provide a Basic credentials header.
///
/// See: https://awslabs.github.io/smithy/1.0/spec/core/auth-traits.html#httpbasicauth-trait
abstract class BasicAuthInterceptor extends HttpInterceptor {
  /// Uses [username] and [password] for authorization.
  const factory BasicAuthInterceptor(
    String username,
    String password,
  ) = _BasicAuthUserPassInterceptor;

  /// Uses [credentials] for authorization.
  const factory BasicAuthInterceptor.credentials(String credentials) =
      _BasicAuthCredentialsInterceptor;

  const BasicAuthInterceptor._();

  String get credentials;

  @override
  void intercept(http.BaseRequest request) {
    request.headers['Authorization'] = 'Basic $credentials';
  }
}

class _BasicAuthCredentialsInterceptor extends BasicAuthInterceptor {
  const _BasicAuthCredentialsInterceptor(this.credentials) : super._();

  @override
  final String credentials;
}

class _BasicAuthUserPassInterceptor extends BasicAuthInterceptor {
  const _BasicAuthUserPassInterceptor(
    this.username,
    this.password,
  ) : super._();

  final String username;
  final String password;

  @override
  String get credentials => base64Encode('$username:$password'.codeUnits);
}

import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';

/// {@template invalid_user_pool_configuration_exception}
/// Thrown when a user pool is is not configured for the requested action.
/// {@endtemplate}
class InvalidUserPoolConfigurationException extends AuthException {
  /// {@macro invalid_user_pool_configuration_exception}
  const InvalidUserPoolConfigurationException({
    required String message,
    String? recoverySuggestion,
    String? underlyingException,
  }) : super(
          message,
          recoverySuggestion: recoverySuggestion,
          underlyingException: underlyingException,
        );

  static InvalidUserPoolConfigurationException fromMap(Map map) =>
      InvalidUserPoolConfigurationException(
        message: map['message'] as String,
        recoverySuggestion: map['recoverySuggestion'] as String?,
        underlyingException: map['underlyingException'] as String?,
      );
}

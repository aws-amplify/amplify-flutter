import 'package:amplify_analytics_pinpoint_dart/src/sdk/pinpoint.dart';
import 'package:amplify_core/amplify_core.dart';

const _fileIssueMessage =
    'This exception is not expected. Please try again. If the exception persists, please file an issue at https://github.com/aws-amplify/amplify-flutter/issues';

/// {@template amplify_analytics_pinpoint_dart.pinpoint_exception}
/// Represents exceptions that may be thrown calling Pinpoint Analytics plugin APIs.
/// {@endtemplate}
class PinpointException extends AnalyticsException {
  /// {@macro amplify_analytics_pinpoint_dart.pinpoint_exception}
  const PinpointException(
    super.message, {
    required String super.recoverySuggestion,
    super.underlyingException,
  });

  /// Creates a [PinpointException] from a [BadRequestException].
  factory PinpointException.fromBadRequestException(
    BadRequestException exception,
  ) {
    return PinpointException(
      'Error in request data sent to Pinpoint.',
      recoverySuggestion: _fileIssueMessage,
      underlyingException: exception,
    );
  }

  /// Creates a [PinpointException] from a [NotFoundException].
  factory PinpointException.fromNotFoundException(NotFoundException exception) {
    return PinpointException(
      'The Pinpoint resource was not found.',
      recoverySuggestion:
          'Please ensure Analytics is properly configured in your amplifyconfiguration.dart file.',
      underlyingException: exception,
    );
  }

  /// Creates a [PinpointException] from a [ForbiddenException].
  factory PinpointException.fromForbiddenException(
    ForbiddenException exception,
  ) {
    return PinpointException(
      'Forbidden from accessing the Pinpoint resource.',
      recoverySuggestion:
          'Please ensure Analytics is properly configured in your amplifyconfiguration.dart file and that your auth rules allow for access.',
      underlyingException: exception,
    );
  }

  /// Create an [AnalyticsException] from a [Exception]
  static AnalyticsException fromException(Exception e) {
    if (e is BadRequestException) {
      return PinpointException.fromBadRequestException(e);
    } else if (e is NotFoundException) {
      return PinpointException.fromNotFoundException(e);
    } else if (e is ForbiddenException) {
      return PinpointException.fromForbiddenException(e);
    } else {
      return AnalyticsException.fromException(e);
    }
  }
}

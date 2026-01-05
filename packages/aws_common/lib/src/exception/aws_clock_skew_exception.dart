import 'package:aws_common/aws_common.dart';

/// {@template aws_common.exception.aws_clock_skew_exception}
/// Indicate that the system clock is out of sync with the service during an [AWSHttpOperation].
/// {@endtemplate}
class ClockSkewException implements Exception {
  /// {@macro aws_common.exception.aws_clock_skew_exception}
  factory ClockSkewException(
    Duration skew,
  ) {
    return ClockSkewException._(skew);
  }

  const ClockSkewException._(this.skew);

  /// The amount of time the clock is skewed by.
  final Duration skew;

  /// The message to display for this exception.
  String get message =>
      'The system clock is out of sync with the service by $skew. This can be caused by a manually changing device time.';
}

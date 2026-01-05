import 'package:aws_common/aws_common.dart';

/// A class that handles clock skew correction for AWS requests.
class AWSClockSkew {
  final _skewWindow = const Duration(minutes: 5);

  /// Updates the clock skew of the given [request] based on the [clockSkewOffsetInMs].
  /// Returns the updated [request] with the corrected date header.
  AWSBaseHttpRequest updateClockSkew(
    AWSBaseHttpRequest request,
    int clockSkewOffsetInMs,
  ) {
    final correctedDate = getSkewCorrectedDate(clockSkewOffsetInMs);

    request.clockSkewDate = AWSDateTime.parse(correctedDate);

    return request;
  }

  /// Returns the skew-corrected date based on the [offsetInMs].

  String getSkewCorrectedDate(int offsetInMs) {
    final dt =
        AWSDateTime.now().dateTime.add(Duration(milliseconds: offsetInMs));
    final newDate = AWSDateTime(dt);

    return newDate.formatFull();
  }

  /// Calculates and returns the updated system clock offset based on the [offsetInMs]
  /// received from the server and the [offsetInMs].
  int getUpdatedSystemClockOffset(
    String serverHeader,
    int offsetInMs,
  ) {
    final difference = _getDifference(serverHeader, offsetInMs);
    if (_checkSkew(difference)) {
      return difference.inMilliseconds;
    }
    // difference is inside the skew window, so no need to offset
    return 0;
  }

  /// Check if the duration is greater than the skew window
  bool _checkSkew(
    Duration duration,
  ) =>
      duration.inMilliseconds.abs() >= _skewWindow.inMilliseconds;

  /// Returns the difference between the [serverHeader] and the current time.
  Duration _getDifference(String serverHeader, int offsetInMs) {
    final now = AWSDateTime.now();
    final serverTime = AWSDateTime.fromServiceHeader(serverHeader);
    return serverTime.difference(now.dateTime);
  }
}

import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';

/// {@template device_not_tracked_exception}
/// Exception thrown when a request is made for a device which is either not currently tracked
/// or previously forgotten.
/// {@endtemplate}
class DeviceNotTrackedException extends AuthException {
  /// {@macro device_not_tracked_exception}
  const DeviceNotTrackedException({String? underlyingException})
      : super(
          'This device does not have an id, either it was never tracked or previously forgotten.',
          recoverySuggestion: 'Call remeberDevice to track the device.',
          underlyingException: underlyingException,
        );

  static DeviceNotTrackedException fromMap(Map map) =>
      DeviceNotTrackedException(
        underlyingException: map['underlyingException'] as String?,
      );

  @override
  String toString() {
    return 'DeviceNotTrackedException{message=$message, recoverySuggestion=$recoverySuggestion, '
        'underlyingException=$underlyingException}';
  }
}

import 'dart:developer' as developer;
import 'package:flutter/services.dart';

/// AWS Face Liveness plugin for Flutter
///
/// Provides a simple API to start AWS Face Liveness detection flow.
/// Returns a Future that completes with a result map or throws an error.
class AwsLiveness {
  static const MethodChannel _methodChannel =
      MethodChannel('aws_liveness/methods');
  static const EventChannel _eventChannel = EventChannel('aws_liveness/events');

  /// Enable or disable debug logging
  static bool enableLogging = false;

  static void _log(String message) {
    if (enableLogging) {
      developer.log(message, name: 'AwsLiveness');
    }
  }

  /// Starts the AWS Face Liveness flow with the provided session ID and region.
  ///
  /// [sessionId] - The session ID obtained from your backend
  /// [region] - AWS region (e.g., "us-east-1")
  ///
  /// Returns a [Future] that completes with a result map containing:
  /// - `status`: "success" | "cancelled"
  /// - `sessionId`: The session ID (on success)
  /// - `isLive`: Boolean indicating if the face was detected as live (on success)
  ///
  /// Throws a [PlatformException] if an error occurs (e.g., permission denied, network error).
  static Future<Map<String, dynamic>> start({
    required String sessionId,
    required String region,
  }) async {
    try {
      _log('Invoking method channel: aws_liveness/methods');
      _log('Method: start, sessionId=$sessionId, region=$region');

      final result = await _methodChannel.invokeMethod<Map<Object?, Object?>>(
        'start',
        {
          'sessionId': sessionId,
          'region': region,
        },
      );

      _log('Method channel returned: $result');

      if (result == null) {
        throw PlatformException(
          code: 'NULL_RESULT',
          message: 'Received null result from native platform',
        );
      }

      return Map<String, dynamic>.from(result);
    } on PlatformException catch (e) {
      _log('PlatformException: code=${e.code}, message=${e.message}');
      throw PlatformException(
        code: e.code,
        message: e.message ?? 'Failed to start liveness detection',
        details: e.details,
      );
    } catch (e, stackTrace) {
      _log('Unexpected error: $e\n$stackTrace');
      rethrow;
    }
  }

  /// Streams events from the liveness detection flow.
  ///
  /// Events include:
  /// - `started`: Flow has started
  /// - `complete`: Flow completed successfully
  /// - `error`: An error occurred
  /// - `cancelled`: User cancelled the flow
  ///
  /// Each event has a `type` and `data` field.
  static Stream<Map<dynamic, dynamic>> get events {
    return _eventChannel.receiveBroadcastStream().map((event) {
      if (event is Map) {
        return event;
      }
      return {'type': 'unknown', 'data': event};
    });
  }
}

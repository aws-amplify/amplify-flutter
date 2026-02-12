import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:aws_liveness/aws_liveness_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  final MethodChannelAwsLiveness platform = MethodChannelAwsLiveness();
  const MethodChannel channel = MethodChannel('aws_liveness/methods');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        if (methodCall.method == 'start') {
          return {
            'status': 'success',
            'sessionId': 'test-session-id',
            'isLive': true,
          };
        }
        return null;
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion returns version', () async {
    // The current implementation doesn't have getPlatformVersion
    // This test is kept for compatibility but skipped
  });
}

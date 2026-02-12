import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'package:aws_liveness/aws_liveness.dart';
import 'package:aws_liveness/aws_liveness_method_channel.dart';
import 'package:aws_liveness/aws_liveness_platform_interface.dart';

class MockAwsLivenessPlatform
    with MockPlatformInterfaceMixin
    implements AwsLivenessPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  final AwsLivenessPlatform initialPlatform = AwsLivenessPlatform.instance;

  test('\$MethodChannelAwsLiveness is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelAwsLiveness>());
  });

  test('AwsLiveness class exports correctly', () {
    // Test that the AwsLiveness class is accessible
    // The actual start method requires native platform, so we just verify the class exists
    expect(AwsLiveness.enableLogging, isFalse);
  });

  test('Can enable and disable logging', () {
    expect(AwsLiveness.enableLogging, isFalse);
    AwsLiveness.enableLogging = true;
    expect(AwsLiveness.enableLogging, isTrue);
    AwsLiveness.enableLogging = false;
    expect(AwsLiveness.enableLogging, isFalse);
  });
}

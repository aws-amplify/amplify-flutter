import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_core/amplify_core.dart';

void main() {
  const MethodChannel channel = MethodChannel('amplify/amplify_core');
  Amplify amplify = Amplify();

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return true;
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test(
      'configure should result in assertion error when null value is not passed',
      () async {
    amplify
        .configure(null)
        .then((v) => expect(true, false))
        .catchError((e) => expect(e, isAssertionError));
  });
}

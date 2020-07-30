import 'package:flutter/foundation.dart';

 class SignUpOptions {
  final Map<String, dynamic> userAttributes;
  const SignUpOptions({@required this.userAttributes});

  Map<String, dynamic> serializeAsMap() {
    throw UnimplementedError('serializeAsMap() has not been implemented on SignUpOptions.');
  }
}
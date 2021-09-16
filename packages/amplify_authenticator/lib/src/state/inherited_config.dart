import 'package:amplify_flutter/src/config/amplify_config.dart';
import 'package:flutter/material.dart';

class InheritedConfig extends InheritedWidget {
  // ignore: public_member_api_docs
  const InheritedConfig({required this.config, required Widget child})
      : super(child: child);

  final AmplifyConfig? config;

  // ignore: public_member_api_docs
  static InheritedConfig? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedConfig>();
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:flutter/material.dart';

class InheritedStrings extends InheritedWidget {
  // ignore: public_member_api_docs
  const InheritedStrings({required this.resolver, required Widget child})
      : super(child: child);

  final AuthStringResolver resolver;

  // ignore: public_member_api_docs
  static InheritedStrings? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedStrings>();
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}

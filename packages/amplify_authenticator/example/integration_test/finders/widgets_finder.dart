import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_authenticator/src/keys.dart';

/// Find specific widgets in the widget tree based on their keys
final inheritedAuthViewModelFinder =
    find.byKey(const Key(keyInheritedAuthViewModel));
final inheritedAuthBlocFinder = find.byKey(const Key(keyInheritedAuthBloc));

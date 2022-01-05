import 'package:amplify_authenticator/src/keys.dart';
import 'package:flutter_test/flutter_test.dart';

/// Find specific widgets in the widget tree based on their keys
final inheritedAuthViewModelFinder = find.byKey(keyInheritedAuthViewModel);
final inheritedAuthBlocFinder = find.byKey(keyInheritedAuthBloc);

import 'package:amplify_authenticator/src/strings/navigation_strings.dart';
import 'package:amplify_authenticator/src/text_customization/auth_strings_resolver.dart';
import 'package:amplify_authenticator/src/strings/button_strings.dart';
import 'package:amplify_authenticator/src/strings/input_strings.dart';
import 'package:amplify_authenticator/src/strings/title_strings.dart';

/// Top-level class for displaying String values in the Authenticator
class AuthStrings {
  /// The optional class that customers can pass to create custom values
  AuthStringResolver? resolver;

  /// The strings for Widget titles
  late TitleStrings titles;

  /// The strings for the shared input fields
  late InputStrings inputs;

  /// The strings for the shared button fields
  late ButtonStrings buttons;

  /// The strings for the shared button fields
  late NavigationStrings navigation;

  // ignore: public_member_api_docs
  AuthStrings({AuthStringResolver? resolver}) {
    this.resolver = resolver;
    this.titles = TitleStrings(resolver: resolver?.titles);
    this.inputs = InputStrings(resolver: resolver?.inputs);
    this.buttons = ButtonStrings(resolver: resolver?.buttons);
    this.navigation = NavigationStrings(resolver: resolver?.navigation);
  }
}

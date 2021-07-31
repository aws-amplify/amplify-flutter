import 'package:amplify_authenticator/src/text_customization/button_resolver.dart';
import 'package:amplify_authenticator/src/text_customization/input_resolver.dart';
import 'package:amplify_authenticator/src/text_customization/navigation_resolver.dart';
import 'package:amplify_authenticator/src/text_customization/title_resolver.dart';

export 'package:amplify_authenticator/src/text_customization/title_resolver.dart';
export 'package:amplify_authenticator/src/text_customization/input_resolver.dart';
export 'package:amplify_authenticator/src/text_customization/button_resolver.dart';
export 'package:amplify_authenticator/src/text_customization/navigation_resolver.dart';

/// The class that is accepted by the Authenticator to override strings
///
/// Consists of a set of resolvers, which are functions for returning strings.
/// This enables users to override default strings, including with localizations.
class AuthStringResolver {
  TitleResolver? titles;

  /// The resolver class for shared input Widgets
  InputResolver? inputs;

  /// The resolver class for shared button Widgets
  ButtonResolver? buttons;

  /// The resolver class for navigation-related Widgets
  NavigationResolver? navigation;

  // ignore: public_member_api_docs
  AuthStringResolver({this.titles, this.inputs, this.buttons, this.navigation});
}

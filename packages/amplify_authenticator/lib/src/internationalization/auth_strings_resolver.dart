import 'package:amplify_authenticator/src/internationalization/button_resolver.dart';
import 'package:amplify_authenticator/src/internationalization/input_resolver.dart';
import 'package:amplify_authenticator/src/internationalization/title_resolver.dart';

export 'package:amplify_authenticator/src/internationalization/title_resolver.dart';
export 'package:amplify_authenticator/src/internationalization/input_resolver.dart';
export 'package:amplify_authenticator/src/internationalization/button_resolver.dart';

/// The class that is accepted by the Authenticator to override strings
///
/// Consists of a set of resolvers, which are functions for returning strings.
/// This enables users to override default strings, including with localizations.
class AuthStringsResolver {
  TitleResolver? titles;

  /// The resolver class for shared input Widgets
  InputResolver? inputs;

  /// The resolver class for shared button Widgets
  ButtonResolver? buttons;

  // ignore: public_member_api_docs
  AuthStringsResolver({this.titles, this.inputs, this.buttons});
}

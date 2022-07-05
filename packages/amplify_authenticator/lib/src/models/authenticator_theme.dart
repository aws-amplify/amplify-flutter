import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:flutter/material.dart';

/// {@template amplify_authenticator.authenticator_theme}
/// The theme applied to the [Authenticator] widget.
/// {@endtemplate}
class AuthenticatorTheme {
  /// {@macro amplify_authenticator.authenticator_theme}
  const AuthenticatorTheme({
    this.elevatedButtonTheme,
    this.textButtonTheme,
    this.errorSnackBarThemeData,
    this.infoSnackBarThemeData,
    this.successSnackBarThemeData,
    this.errorBannerThemeData,
    this.infoBannerThemeData,
    this.successBannerThemeData,
  });

  /// The theme data used for all [ElevatedButton] widgets.
  ///
  /// [ElevatedButton] widgets are used as the primary button for each form.
  ///
  /// If omitted, the [ElevatedButtonTheme] from your app's [ThemeData] will be used.
  final ElevatedButtonThemeData? elevatedButtonTheme;

  /// The theme data used for all [TextButton] widgets.
  ///
  /// [TextButton] widgets are typically used as secondary buttons in forms.
  /// For example, the "Forgot Password" button.
  ///
  /// If omitted, the [TextButtonTheme] from your app's [ThemeData] will be used.
  final TextButtonThemeData? textButtonTheme;

  /// The theme data used for [SnackBar] widgets, when displaying an error message.
  ///
  /// [SnackBar] widgets are used to display error messages to the user when
  /// authentication actions fail. For example, if a user attempts to sign in
  /// with the incorrect password.
  ///
  /// If omitted, the [SnackBarThemeData] from your app's [ThemeData] will be used.
  final SnackBarThemeData? errorSnackBarThemeData;

  /// The theme data used for [SnackBar] widgets, when displaying an info message.
  ///
  /// [SnackBar] widgets are used to display info messages to the user when
  /// authentication actions cause a side effect that the user should be
  /// informed of. For example, when a confirmation code is sent to the user's email.
  ///
  /// If omitted, the [SnackBarThemeData] from your app's [ThemeData] will be used.
  final SnackBarThemeData? infoSnackBarThemeData;

  /// The theme data used for [SnackBar] widgets, when displaying a success message.
  ///
  /// [SnackBar] widgets are used to display success messages to the user when
  /// authentication actions succeed, and it is important to convey this to the user.
  /// For example, when a user successfully updates their password.
  ///
  /// If omitted, the [SnackBarThemeData] from your app's [ThemeData] will be used.
  final SnackBarThemeData? successSnackBarThemeData;

  /// The theme data used for [MaterialBanner] widgets, when displaying an error message.
  ///
  /// [MaterialBanner] widgets are used to display error messages to the user when
  /// authentication actions fail. For example, if a user attempts to sign in
  /// with the incorrect password.
  ///
  /// If omitted, the [MaterialBannerThemeData] from your app's [ThemeData] will be used.
  final MaterialBannerThemeData? errorBannerThemeData;

  /// The theme data used for [MaterialBanner] widgets, when displaying an info message.
  ///
  /// [MaterialBanner] widgets are used to display info messages to the user when
  /// authentication actions cause a side effect that the user should be
  /// informed of. For example, when a confirmation code is sent to the user's email.
  ///
  /// If omitted, the [MaterialBannerThemeData] from your app's [ThemeData] will be used.
  final MaterialBannerThemeData? infoBannerThemeData;

  /// The theme data used for [MaterialBanner] widgets, when displaying a success message.
  ///
  /// [MaterialBanner] widgets are used to display success messages to the user when
  /// authentication actions succeed, and it is important to convey this to the user.
  /// For example, when a user successfully updates their password.
  ///
  /// If omitted, the [MaterialBannerThemeData] from your app's [ThemeData] will be used.
  final MaterialBannerThemeData? successBannerThemeData;

  /// Merges this with the [ThemeData] from the provided [context].
  ThemeData toTheme(BuildContext context) {
    return Theme.of(context).copyWith(
      elevatedButtonTheme: elevatedButtonTheme,
      textButtonTheme: textButtonTheme,
    );
  }
}

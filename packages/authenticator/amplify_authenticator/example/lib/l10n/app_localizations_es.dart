// ignore: unused_import
import 'package:intl/intl.dart' as intl;

// ignore: unused_import
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get signIn => 'Iniciar Sesión';

  @override
  String get signUp => 'Crear una Cuenta';

  @override
  String get confirm => 'Confirmar';

  @override
  String get submit => 'Enviar';

  @override
  String get changePassword => 'Cambiar contraseña';

  @override
  String get sendCode => 'Enviar Código';

  @override
  String get lostCode => '¿Perdiste su código?';

  @override
  String get noAccount => '¿Sin cuenta?';

  @override
  String get haveAccount => '¿Tiene una cuenta?';

  @override
  String get forgotPassword => '¿Olvidase?';

  @override
  String get confirmResetPassword => 'Restablecer su contraseña';

  @override
  String get verify => 'Verificar';

  @override
  String get skip => 'Omitir';

  @override
  String get signOut => 'Salir';

  @override
  String backTo(String previousStep) {
    String _temp0 = intl.Intl.selectLogic(previousStep, {
      'signUp': 'registro',
      'signIn': 'inicio de sesión',
      'confirmSignUp': 'Confirmar registro',
      'confirmSignInMfa': 'Confirmar inicio de sesión',
      'confirmSignInNewPassword': 'Confirmar inicio de sesión',
      'sendCode': 'Enviar código',
      'resetPassword': 'Restablecer contraseña',
      'verifyUser': 'Verificar usuario',
      'confirmVerifyUser': 'Confirmar verificación de usuario',
      'other': 'ERROR',
    });
    return 'Regresar al $_temp0';
  }

  @override
  String signInWith(String provider) {
    String _temp0 = intl.Intl.selectLogic(provider, {
      'google': 'Google',
      'facebook': 'Facebook',
      'amazon': 'Amazon',
      'apple': 'Apple',
      'other': 'ERROR',
    });
    return 'Iniciar Sesión con $_temp0';
  }

  @override
  String get us => 'Estados Unidos';

  @override
  String get selectDialCode => 'seleccionar país';

  @override
  String get confirmSignInCustomAuth => 'Título de formulario personalizado';
}

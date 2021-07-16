import 'package:amplify_authenticator/src/blocs/auth/auth_bloc.dart';
import 'package:amplify_authenticator/src/blocs/auth/auth_data.dart';
import 'package:amplify_authenticator/src/utils/base_viewmodel.dart';

class AuthViewModel extends BaseViewModel {
  AuthViewModel(this._authBloc);

  final StateMachineBloc _authBloc;

  String _username = "";
  String _password = "";
  String _code = "";
  String _address = "";
  String _birthdate = "";
  String _email = "";
  String _familyName = "";
  String _gender = "";
  String _givenName = "";
  String _locale = "";
  String _middleName = "";
  String _name = "";
  String _nickname = "";
  String _phoneNumber = "";
  String _picture = "";
  String _preferredUsername = "";
  String _profile = "";
  String _zoneInfo = "";
  String _updatedAt = "";
  String _website = "";

  String get username => _username;
  String get password => _password;
  String get code => _code;

  String get address => _address;
  String get birthdate => _birthdate;
  String get email => _email;
  String get familyName => _familyName;
  String get gender => _gender;
  String get givenName => _givenName;
  String get locale => _locale;
  String get middleName => _middleName;
  String get name => _name;
  String get nickname => _nickname;
  String get phoneNumber => _phoneNumber;
  String get picture => _picture;
  String get preferredUsername => _preferredUsername;
  String get profile => _profile;
  String get zoneInfo => _zoneInfo;
  String get updatedAt => _updatedAt;
  String get website => _website;

  Map<String, String> authAttributes = {};

  void setUsername(value) {
    _username = value;
  }

  void setPassword(value) {
    _password = value;
  }

  void setCode(value) {
    _code = value;
  }

  void setAddress(value) {
    _address = value;

    authAttributes["address"] = value;
  }

  void setBirthdate(value) {
    _birthdate = value;
    authAttributes["birthdate"] = value;
  }

  void setEmail(value) {
    _email = value;
    authAttributes["email"] = value;
  }

  void setFamilyName(value) {
    _familyName = value;
    authAttributes["family_name"] = value;
  }

  void setGender(value) {
    _gender = value;
    authAttributes["gender"] = value;
  }

  void setGivenName(value) {
    _givenName = value;
    authAttributes["given_name"] = value;
  }

  void setLocale(value) {
    _locale = value;
    authAttributes["locale"] = value;
  }

  void setMiddleName(value) {
    _middleName = value;
    authAttributes["middle_name"] = value;
  }

  void setName(value) {
    _name = value;
    authAttributes["name"] = value;
  }

  void setNickname(value) {
    _nickname = value;
    authAttributes["nickname"] = value;
  }

  void setPhoneNumber(value) {
    _phoneNumber = value;
    authAttributes["phone_number"] = value;
  }

  void setPicture(value) {
    _picture = value;
    authAttributes["picture"] = value;
  }

  void setPreferredUsername(value) {
    _preferredUsername = value;
    authAttributes["preferred_username"] = value;
  }

  void setProfile(value) {
    _profile = value;
    authAttributes["profile"] = value;
  }

  void setZoneInfo(value) {
    _zoneInfo = value;
    authAttributes["zoneinfo"] = value;
  }

  void setUpdatedAt(value) {
    _updatedAt = value;
    authAttributes["update_at"] = value;
  }

  void setWebsite(value) {
    _website = value;
    authAttributes["website"] = value;
  }

  /// Auth calls

  Future<void> signIn() async {
    setBusy(true);
    final singIn = AuthSignInData(
      username: _username.trim(),
      password: _password,
    );
    _authBloc.authEvent.add(AuthSignIn(singIn));
    await Future.any([
      _authBloc.exceptions.first,
      _authBloc.stream.first,
    ]);
    setBusy(false);
  }

  Future<void> signUp() async {
    setBusy(true);
    final signUp = AuthSignUpData(
        username: _username.trim(),
        password: _password.trim(),
        attributes: authAttributes);
    print(authAttributes);
    _authBloc.authEvent.add(AuthSignUp(signUp));
    await Future.any([
      _authBloc.exceptions.first,
      _authBloc.stream.first,
    ]);
    setBusy(false);
  }

  Future<void> confirm() async {
    setBusy(true);
    final confirmation =
        AuthConfirmSignUpData(code: _code, username: _username.trim());

    _authBloc.authEvent.add(AuthConfirmSignUp(confirmation));

    await Future.any([
      _authBloc.exceptions.first,
      _authBloc.stream.first,
    ]);
    setBusy(false);
  }

  Future<void> signOut() async {
    setBusy(true);
    _authBloc.authEvent.add(AuthSignOut());
    setBusy(false);
  }

  /// Screen change

  void goToSignUp() {
    _authBloc.authEvent.add(const AuthChangeScreen(AuthScreen.signup));
  }

  void goToSignIn() {
    _authBloc.authEvent.add(const AuthChangeScreen(AuthScreen.signin));
  }
}

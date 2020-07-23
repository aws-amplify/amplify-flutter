enum SignInState {
  CONFIRM_SIGN_IN_WITH_SMS_MFA_CODE,
  CONFIRM_SIGN_IN_WITH_CUSTOM_CHALLENGE,
  CONFIRM_SIGN_IN_WITH_NEW_PASSWORD,
  RESET_PASSWORD,
  DONE,
  ERROR
}

String enumToString(Object o) => o.toString().split('.').last;

T enumFromString<T>(String key, List<T> values) =>
    values.firstWhere((v) => key == enumToString(v), orElse: () => null);
enum SignInState {
  CONFIRM_SIGN_IN_WITH_SMS_MFA_CODE,
  DONE,
  ERROR
}

String enumToString(Object o) => o.toString().split('.').last;

T enumFromString<T>(String key, List<T> values) =>
    values.firstWhere((v) => key == enumToString(v), orElse: () => null);
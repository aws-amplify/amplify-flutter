class SignUpResult {
  Map<dynamic, dynamic> providerData;
  String signUpState;
  SignUpResult.fromJson(Map data) {
    /* 2-step process of getting an enum from a string and back is a way of checking that
     the value is enumerated while also maintaining simple string value */
    this.signUpState = enumToString(enumFromString<SignUpState>(data["signUpState"], SignUpState.values));
    this.providerData = data.containsKey("providerData") ? data["providerData"] : const {};
   }
}

enum SignUpState {
  CONFIRM_SIGN_UP_STEP,
  DONE,
}

String enumToString(Object o) => o.toString().split('.').last;

T enumFromString<T>(String key, List<T> values) =>
    values.firstWhere((v) => key == enumToString(v), orElse: () => null);
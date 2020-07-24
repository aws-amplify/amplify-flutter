data class FlutterConfirmSignInRequest(val map: HashMap<String, *>) {
  val confirmationCode: String = map["confirmationCode"] as String;
  val providerOptions: HashMap<String, *>? = map["providerOptions"] as HashMap<String, *>?;
}


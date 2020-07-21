data class FlutterSignInRequest(val map: HashMap<String, *>) {
  val username: String = map["username"] as String;
  val password: String = map["password"] as String;
  val providerOptions: HashMap<String, *>? = map["providerOptions"] as HashMap<String, *>?;
}

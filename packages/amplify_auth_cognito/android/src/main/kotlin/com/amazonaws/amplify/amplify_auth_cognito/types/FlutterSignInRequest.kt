data class FlutterSignInRequest(val map: HashMap<String, *>) {
  val username: String = map["username"] as String;
  val password: String = map["password"] as String;
  val providerOptions: HashMap<String, *>? = map["providerOptions"] as HashMap<String, *>?;

  companion object {
    fun validate(req : HashMap<String, *>?): Boolean {
      var valid: Boolean = true;
      if (req == null || req !is HashMap<String, *>) {
        valid = false;
      }
      return valid;
    }
  }
}

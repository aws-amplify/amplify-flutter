import com.amplifyframework.auth.options.AuthSignOutOptions;

data class FlutterSignOutRequest(val map: HashMap<String, *>) {
  var signOutOptions: AuthSignOutOptions = setOptions()
  val providerOptions: HashMap<String, *>? = map["providerOptions"] as HashMap<String, *>?;

  fun setOptions(): AuthSignOutOptions {
    var globalSignOut: Boolean = false;
    if (providerOptions != null && providerOptions.get("globalSignOut") != null) {
      globalSignOut = providerOptions.get("globalSignOut") as Boolean;
    }
    return AuthSignOutOptions.builder().globalSignOut(globalSignOut).build()
  }
}

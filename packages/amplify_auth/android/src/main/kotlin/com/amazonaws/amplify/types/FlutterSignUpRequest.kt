package com.amazonaws.amplify.amplify_auth

data class FlutterSignUpRequest(val map: HashMap<String, *>) {
    val username: String? = map["username"] as String?;
    val password: String = map["password"] as String;
    val userAttributes: HashMap<String, String> = map["userAttributes"] as HashMap<String, String>;
    val providerOptions: HashMap<String, *>? = map["providerOptions"] as HashMap<String, *>?;
}


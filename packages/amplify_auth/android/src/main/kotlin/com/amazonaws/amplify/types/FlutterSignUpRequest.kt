package com.amazonaws.amplify.amplify_auth

data class FlutterSignUpRequest(val map: HashMap<String, *>) {
    val username: String? = map["username"] as String?;
    val password: String = map["password"] as String;
    val usernameAttribute: String? = map["usernameAttribute"] as String?;
    val userAttributes: HashMap<String, String> = map["userAttributes"] as HashMap<String, String>;
    val validationData: HashMap<String, String>? =  map["validationData"] as HashMap<String, String>?;
}


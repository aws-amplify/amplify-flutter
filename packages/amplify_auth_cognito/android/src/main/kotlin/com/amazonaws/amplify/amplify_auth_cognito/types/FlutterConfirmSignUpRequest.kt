package com.amazonaws.amplify.amplify_auth_cognito.types

data class FlutterConfirmSignUpRequest(val map: HashMap<String, *>) {
    val userKey: String = map["userKey"] as String;
    val confirmationCode: String = map["confirmationCode"] as String;
    val providerOptions: HashMap<String, *>? = map["providerOptions"] as HashMap<String, *>?;
}


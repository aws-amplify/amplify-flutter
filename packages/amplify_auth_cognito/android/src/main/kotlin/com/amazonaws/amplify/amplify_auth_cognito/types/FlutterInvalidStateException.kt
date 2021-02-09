package com.amazonaws.amplify.amplify_auth_cognito.types

import java.lang.Exception
import com.amplifyframework.auth.AuthException

class FlutterInvalidStateException: AuthException {
    constructor(message: String, recoverySuggestion: String) : super(message, Exception("invalidSate"), recoverySuggestion)
}

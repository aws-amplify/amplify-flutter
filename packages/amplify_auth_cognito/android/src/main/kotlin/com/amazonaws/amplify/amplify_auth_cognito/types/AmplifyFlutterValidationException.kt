package com.amazonaws.amplify.amplify_auth_cognito.types

import com.amplifyframework.AmplifyException

class AmplifyFlutterValidationException : AmplifyException {
    constructor(message: String, recoverySuggestion: String) : super(message, recoverySuggestion)
}
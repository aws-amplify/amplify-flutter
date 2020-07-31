package com.amazonaws.amplify.amplify_auth_cognito.types

enum class FlutterAuthFailureMessage {
  SIGNUP {
    override fun toString(): String {
      return "AMPLIFY_SIGNUP_FAILED"
    }
  },
  CASTING {
    override fun toString(): String {
      return "ERROR_CASTING_INPUT_IN_PLATFORM_CODE"
    }
  },
  CONFIRM_SIGNUP {
    override fun toString(): String {
      return "Amplify ConfirmSignUp Failed"
    }
  },
  SIGNIN {
    override fun toString(): String {
      return "Amplify SignIn Failed"
    }
  },
  CONFIRM_SIGNIN {
    override fun toString(): String {
      return "Amplify ConfirmSignIn Failed"
    }
  },
  SIGNOUT {
    override fun toString(): String {
      return "Amplify SignOut Failed"
    }
  },
  MALFORMED {
    override fun toString(): String {
      return "Amplify Request Malformed"
    }
  },
  ERROR_SENDING {
    override fun toString(): String {
      return "Amplify Request Failed to Send"
      return "AMPLIFY_SIGNUP_REQUEST_MALFORMED"
    }
    fun recovery(): String {
      return "Make sure that the request had all required parameters."
    }
  }
}

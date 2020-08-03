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
      return "AMPLIFY_CONFIRM_SIGNUP_FAILED"
    }
  },
  SIGNIN {
    override fun toString(): String {
      return "AMPLIFY_SIGNIN_FAILED"
    }
  },
  CONFIRM_SIGNIN {
    override fun toString(): String {
      return "AMPLIFY_CONFIRM_SIGNIN_FAILED"
    }
  },
  SIGNOUT {
    override fun toString(): String {
      return "AMPLIFY_SIGNOUT_FAILED"
    }
  },
  MALFORMED {
    override fun toString(): String {
      return "AMPLIFY_REQUEST_MALFORMED"
    }
  }
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/l10n/authenticator_localizations.dart';
import 'package:amplify_authenticator/src/l10n/resolver.dart';
import 'package:flutter/material.dart';

enum MessageResolverKeyType { codeSent, copySucceeded, copyFailed }

class MessageResolverKey {
  const MessageResolverKey._(this.type, this.destination);

  const MessageResolverKey.codeSent(String? destination)
    : this._(MessageResolverKeyType.codeSent, destination);
  final MessageResolverKeyType type;
  final String? destination;
}

/// The resolver class for messages
class MessageResolver extends Resolver<MessageResolverKey> {
  const MessageResolver();

  /// The message that is displayed after a new confirmation code is sent to
  /// [destination].
  String codeSent(BuildContext context, String destination) {
    return AuthenticatorLocalizations.messagesOf(context).codeSent(destination);
  }

  /// The message that is displayed after a new confirmation code is sent via
  /// an unknown delivery medium.
  String codeSentUnknown(BuildContext context) {
    return AuthenticatorLocalizations.messagesOf(context).codeSentUnknown;
  }

  /// The message that is displayed after a TOTP Key was copied to the clipboard
  String copySucceeded(BuildContext context) {
    return AuthenticatorLocalizations.messagesOf(context).copySucceeded;
  }

  /// The message that is displayed after a TOTP Key failed to copy to the clipboard
  String copyFailed(BuildContext context) {
    return AuthenticatorLocalizations.messagesOf(context).copyFailed;
  }

  /// Resolves error messages for AuthenticatorException instances
  String error(BuildContext context, AuthenticatorException exception) {
    if (exception is CognitoAuthenticatorException) {      
      // Fallback to Cognito's original message
      return exception.cognitoException.message;
    }
    
    // Non-Cognito exceptions use original message or unknown fallback
    return exception.message;
  }

  @override
  String resolve(BuildContext context, MessageResolverKey key) {
    switch (key.type) {
      case MessageResolverKeyType.codeSent:
        final destination = key.destination;
        if (destination != null) {
          return codeSent(context, destination);
        }
        return codeSentUnknown(context);
      case MessageResolverKeyType.copySucceeded:
        return copySucceeded(context);
      case MessageResolverKeyType.copyFailed:
        return copyFailed(context);
    }
  }
}

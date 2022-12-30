// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/src/l10n/resolver.dart';
import 'package:flutter/material.dart';

import 'authenticator_localizations.dart';

enum MessageResolverKeyType {
  codeSent,
}

class MessageResolverKey {
  final MessageResolverKeyType type;
  final String? destination;

  const MessageResolverKey._(this.type, this.destination);

  const MessageResolverKey.codeSent(String? destination)
      : this._(
          MessageResolverKeyType.codeSent,
          destination,
        );
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

  @override
  String resolve(BuildContext context, MessageResolverKey key) {
    switch (key.type) {
      case MessageResolverKeyType.codeSent:
        var destination = key.destination;
        if (destination != null) {
          return codeSent(context, destination);
        }
        return codeSentUnknown(context);
    }
  }
}

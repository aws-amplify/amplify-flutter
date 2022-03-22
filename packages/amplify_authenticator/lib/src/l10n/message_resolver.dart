/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

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

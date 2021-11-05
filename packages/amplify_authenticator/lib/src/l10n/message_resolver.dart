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

import 'package:flutter/material.dart';

import 'authenticator_localizations.dart';

/// The resolver class for messages
class MessageResolver {
  const MessageResolver();

  /// The message that is displayed after a new confirmation code is sent via email.
  String codeSentEmail(BuildContext context) {
    return AuthenticatorLocalizations.messagesOf(context).codeSentEmail;
  }

  /// The message that is displayed after a new confirmation code is sent via SMS.
  String codeSentSMS(BuildContext context) {
    return AuthenticatorLocalizations.messagesOf(context).codeSentSMS;
  }

  /// The message that is displayed after a new confirmation code is sent via an unknown delivery medium.
  String codeSentUnknown(BuildContext context) {
    return AuthenticatorLocalizations.messagesOf(context).codeSentUnknown;
  }
}

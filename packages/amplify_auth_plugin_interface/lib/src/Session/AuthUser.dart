/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

// ignore_for_file: public_member_api_docs

import 'package:flutter/foundation.dart';

/// A user basic user obbject
class AuthUser {
  /// The user's id, typically a uuid or other unique identifier
  String userId;

  ///  login identifier e.g. `superdog22`; or an email/phone number, depending on configuration 
  String username;
  
  AuthUser({@required this.userId, @required this.username});
}

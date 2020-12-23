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

import 'package:flutter/foundation.dart';

class AuthUser {
  String userId;
  String username;
  AuthUser({@required this.userId, @required this.username});

  @override
  String toString() {
    return 'AuthUser(userId: $userId, username: $username)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is AuthUser && o.userId == userId && o.username == username;
  }

  @override
  int get hashCode {
    return userId.hashCode ^ username.hashCode;
  }
}

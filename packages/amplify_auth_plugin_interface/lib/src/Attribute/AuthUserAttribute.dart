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

import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';

class AuthUserAttribute {
  final UserAttributeKey userAttributeKey;
  late final Object value;

  /// Creates an object that holds the key and value for a user attribute.
  AuthUserAttribute({
    required this.userAttributeKey,
    required String value,
  }) {
    Object? _value;
    if (userAttributeKey.key != 'phone_number') {
      _value = int.tryParse(value);
    }
    this.value = _value ?? value;
  }

  // ignore: public_member_api_docs
  Map<String, dynamic> serializeAsMap() {
    final Map<String, dynamic> pendingRequest = <String, dynamic>{};
    pendingRequest['userAttributeKey'] = userAttributeKey.key;
    pendingRequest['value'] = value;
    return pendingRequest;
  }
}

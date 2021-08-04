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

import 'package:amplify_authenticator/src/text_customization/resolver_typedef.dart';
import 'package:amplify_authenticator/src/text_customization/resolver_typedef.dart';
import 'package:flutter/widgets.dart';

/// The resolver class for screen titles
class TitleResolver {
  /// The title for the sign in Widget.
  StringResolver? signin = (_) => "Sign in to your account";

  /// The title for the sign up Widget.
  StringResolver? signup = (_) => "Create your account";

  /// The title for the confirm sign up Widget.
  StringResolver? confirm_signup = (_) => "Confirm your account";

  /// The title for the confirm sign in Widget.
  StringResolver? confirm_signin = (_) => "Create your sign in";

  // ignore: public_member_api_docs
  TitleResolver(
      {this.signin, this.signup, this.confirm_signup, this.confirm_signin});
}
